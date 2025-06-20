USE [PAINAM_DW]
GO

/****** Object:  StoredProcedure [dbo].[Load_FactRegistration]    Script Date: 6/19/2025 1:51:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_FactRegistration]
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @EndOfTime    DATETIME = '9999-12-31';
    DECLARE @LastDateLoaded DATETIME;

    BEGIN TRAN;

    -- Select lineage key
    DECLARE @LineageKey INT = ISNULL((
        SELECT TOP(1) [LineageKey]
        FROM int.Lineage
        WHERE [TableName] = N'Fact_Registration'
          AND [FinishLoad] IS NULL
        ORDER BY [LineageKey] DESC
    ), -1);

    -- Update surrogate keys in Staging
    UPDATE s
    SET
        s.[Student Key] = COALESCE((
            SELECT TOP(1) ds.[Student Key]
            FROM dbo.Dim_Student AS ds
            WHERE REPLACE(ds.[_Source Key], 'PAINAM|', '') = s.[_SourceStudentKey]
              AND s.[ModifiedDate] >= ds.[Valid From]
              AND s.[ModifiedDate] < ds.[Valid To]
            ORDER BY ds.[Valid From]
        ), (
            SELECT TOP(1) ds.[Student Key]
            FROM dbo.Dim_Student AS ds
            WHERE ds.[_Source Key] = ''
        ), 0),

        s.[Group Key] = COALESCE((
            SELECT TOP(1) dg.[Group Key]
            FROM dbo.Dim_Group AS dg
            WHERE REPLACE(dg.[_Source Key], 'PAINAM|', '') = s.[_SourceGroupKey]
              AND s.[ModifiedDate] >= dg.[Valid From]
              AND s.[ModifiedDate] < dg.[Valid To]
            ORDER BY dg.[Valid From]
        ), (
            SELECT TOP(1) dg.[Group Key]
            FROM dbo.Dim_Group AS dg
            WHERE dg.[_Source Key] = ''
        ), 0),

        s.[Date Key] = COALESCE((
            SELECT TOP(1) dd.[Date Key]
            FROM dbo.Dim_Date AS dd
            WHERE dd.[Date] = s.[Registration Date]
        ), 0)
    FROM dbo.Staging_Registration AS s;

    DELETE fr
    FROM dbo.Fact_Registration AS fr
    JOIN dbo.Staging_Registration AS s
        ON fr.[Student Key] = s.[Student Key]
        AND fr.[Group Key]   = s.[Group Key]
        AND fr.[Date Key]    = s.[Date Key];

  
    INSERT INTO dbo.Fact_Registration
    (
        [Student Key],
        [Group Key],
        [Date Key],
        [Registration Date],
        [ModifiedDate],
        [Lineage Key]
    )
    SELECT
        [Student Key],
        [Group Key],
        [Date Key],
        [Registration Date],
        [ModifiedDate],
        @LineageKey
    FROM dbo.Staging_Registration;

   
    UPDATE int.Lineage
    SET
        FinishLoad = SYSDATETIME(),
        Status     = 'S',
        @LastDateLoaded = LastLoadedDate
    WHERE LineageKey = @LineageKey;

  
    UPDATE int.IncrementalLoads
    SET LoadDate = ISNULL(@LastDateLoaded, GETDATE())
    WHERE TableName = N'Fact_Registration';

    COMMIT;
    RETURN 0;
END;
GO

