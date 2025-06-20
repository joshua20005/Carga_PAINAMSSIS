USE [PAINAM]
GO

/****** Object:  StoredProcedure [dbo].[Load_StagingStudent]    Script Date: 6/19/2025 1:43:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[Load_StagingStudent]
    @LastLoadDate DATETIME,
    @NewLoadDate DATETIME
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    --SELECT @LastLoadDate, @NewLoadDate

    SELECT 
        'PAINAM|' + CONVERT(NVARCHAR, s.[id]) AS [_SourceKey],
        CONVERT(NVARCHAR(50), s.[code_student]) AS [StudentCode],
        CONVERT(NVARCHAR(100), s.[name_student]) AS [FirstName],
        CAST(NULL AS NVARCHAR(100)) AS [SecondName],
        CONVERT(NVARCHAR(100), s.[surname_student]) AS [FirstLastName],
        CAST(NULL AS NVARCHAR(100)) AS [SecondLastName],
        CONVERT(DATE, s.[birthday_student]) AS [BirthDate],
        CONVERT(NVARCHAR(20), s.[phone_student]) AS [Phone],
        CONVERT(NVARCHAR(150), s.[email_student]) AS [Email],

        CONVERT(NVARCHAR(50), t.[code_tutor]) AS [TutorCode],
        CONVERT(NVARCHAR(100), t.[name_tutor]) AS [TutorFirstName],
        CAST(NULL AS NVARCHAR(100)) [TutorSecondName],
        CAST(NULL AS NVARCHAR(100)) AS [TutorFirstLastName],
        CAST(NULL AS NVARCHAR(100)) AS [TutorSecondLastName],
        CONVERT(DATE, t.[birthdate_tutor]) AS [TutorBirthDate],
        CONVERT(NVARCHAR(20), t.[phone_tutor]) AS [TutorPhone],
        CONVERT(NVARCHAR(150), t.[email_tutor]) AS [TutorEmail],
        CONVERT(NVARCHAR(250), t.[address_tutor]) AS [TutorAddress], 

        CONVERT(NVARCHAR(50), r.[mode_registration]) AS [EnrollmentModality],
        CONVERT(NVARCHAR(50), r.[level_registration]) AS [EnrollmentLevel],

        CONVERT(DATETIME, ISNULL([s].ModifiedDate, '1753-01-01')) AS [Student Modified Date],
        CONVERT(DATETIME, ISNULL([t].ModifiedDate, '1753-01-01')) AS [Tutor Modified Date],
        CONVERT(DATETIME, ISNULL([r].ModifiedDate, '1753-01-01')) AS [Registration Modified Date],

        (
            SELECT MAX(t) FROM 
            (VALUES 
                ([s].ModifiedDate),
                ([t].ModifiedDate),
                ([r].ModifiedDate)
            ) AS [maxModifiedDate](t)
        ) AS [Valid From],

        CONVERT(DATETIME, '9999-12-31') 
        AS [Valid To]

  FROM [dbo].[Student_student] s
  LEFT JOIN [dbo].[Registration_registration] r ON s.id = r.id_student_id
  LEFT JOIN [dbo].[Mentor_mentor] t ON r.id_tutor_id = t.id


    WHERE 
        ([s].ModifiedDate > @LastLoadDate AND [s].ModifiedDate <= @NewLoadDate)
        OR ([t].ModifiedDate > @LastLoadDate AND [t].ModifiedDate <= @NewLoadDate)
        OR ([r].ModifiedDate > @LastLoadDate AND [r].ModifiedDate <= @NewLoadDate);

    RETURN 0;
END;
GO

