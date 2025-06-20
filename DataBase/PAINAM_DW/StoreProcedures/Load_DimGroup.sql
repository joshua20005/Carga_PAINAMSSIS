USE [PAINAM_DW]
GO

/****** Object:  StoredProcedure [dbo].[Load_DimGroup]    Script Date: 6/19/2025 1:50:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Load_DimGroup]
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @EndOfTime DATETIME = '9999-12-31';
    DECLARE @LastDateLoaded DATETIME;

    BEGIN TRAN;

    -- Get the lineage of the current load of Dim_Group
    DECLARE @LineageKey INT = (
        SELECT TOP(1) [LineageKey]
        FROM [int].[Lineage]
        WHERE [TableName] = N'Dim_Group' AND [FinishLoad] IS NULL
        ORDER BY [LineageKey] DESC
    );

    -- If no LineageKey, stop the process and return error
    IF @LineageKey IS NULL
    BEGIN
        INSERT INTO int.Lineage ([TableName], [StartLoad], [Status])
        VALUES (N'Dim_Group', SYSDATETIME(), 'I');

        SET @LineageKey = SCOPE_IDENTITY();
    END

   
    IF NOT EXISTS (SELECT * FROM [Dim_Group] WHERE [GroupCode] = ' ')
    BEGIN
        INSERT INTO [dbo].[Dim_Group] 
            ([_Source Key],
			[GroupCode], 
			[Level], 
			[Section],
			[Valid From], 
			[Valid To], 
			[Lineage Key])
        VALUES 
            ('N/A', 'N/A', 'N/A', 'N/A', '1753-01-01', '9999-12-31', -1);
    END;

    -- Update validity date of modified Group in Dim_Group
    UPDATE dgp
    SET dgp.[Valid To] = g.[Valid From]
    FROM Dim_Group AS dgp
    INNER JOIN Staging_Group AS g ON dgp.[GroupCode] = g.[GroupCode]
    WHERE dgp.[Valid To] = @EndOfTime;

    -- Insert new records
    INSERT INTO Dim_Group 
        ([_Source Key], [GroupCode], [Level], [Section], [Valid From], [Valid To], [Lineage Key])
    SELECT 
        ISNULL([_Source Key],'N/A'),
        ISNULL([GroupCode], 'N/A'),
        ISNULL([Level],'N/A'), 
        ISNULL([Section], 'N/A'), 
        ISNULL([Valid From], GETDATE()), 
        ISNULL([Valid To],'9999-12-31'), 
        @LineageKey
    FROM Staging_Group;

    -- Get last load date
    SELECT @LastDateLoaded = MAX([Valid From]) 
    FROM Dim_Group 
    WHERE [Lineage Key] = @LineageKey;

    -- Update Lineage table
    UPDATE [int].[Lineage]
    SET 
        [FinishLoad] = SYSDATETIME(), 
        Status = 'S'
    WHERE [LineageKey] = @LineageKey;

    -- Update IncrementalLoads
    UPDATE [int].[IncrementalLoads]
    SET [LoadDate] = @LastDateLoaded
    WHERE [TableName] = N'Dim_Group';

    COMMIT;

    RETURN 0;
END;
GO

