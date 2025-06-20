USE [PAINAM]
GO

/****** Object:  StoredProcedure [dbo].[Load_StagingRegistration]    Script Date: 6/19/2025 1:42:43 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_StagingRegistration]
    @LastLoadDate DATETIME,
    @NewLoadDate DATETIME
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    SELECT 
        stu.[Student Key] AS [Student Key],
        grp.[Group Key] AS [Group Key],
        dt.[Date Key] AS [Date Key],

        CONVERT(DATE, r.[date_registration]) AS [Registration Date],
        ISNULL(r.ModifiedDate, GETDATE()) AS [ModifiedDate],

        'PAINAM|' + CONVERT(NVARCHAR, r.[id]) AS [_SourceRegistration],
        'PAINAM|' + CONVERT(NVARCHAR, r.[id_student_id]) AS [_SourceStudentKey],
        'PAINAM|' + CONVERT(NVARCHAR, r.[id_group_id]) AS [_SourceGroupKey]

    FROM [dbo].[Registration_registration] r
    LEFT JOIN PAINAM_DW.dbo.Dim_Student stu ON r.id_student_id = stu.[Student Key]
    LEFT JOIN PAINAM_DW.dbo.Dim_Group grp ON r.id_group_id = grp.[Group Key]
    LEFT JOIN PAINAM_DW.dbo.Dim_Date dt 
    ON CONVERT(INT, FORMAT(r.[date_registration], 'yyyyMMdd')) = dt.[Date Key]


    WHERE 
        (r.ModifiedDate > @LastLoadDate AND r.ModifiedDate <= @NewLoadDate);

    RETURN 0;
END;
GO

