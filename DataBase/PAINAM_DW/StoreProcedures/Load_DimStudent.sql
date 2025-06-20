USE [PAINAM_DW]
GO

/****** Object:  StoredProcedure [dbo].[Load_DimStudent]    Script Date: 6/19/2025 1:50:32 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_DimStudent]
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @EndOfTime DATETIME = '9999-12-31';
    DECLARE @LastDateLoaded DATETIME;

    BEGIN TRAN;

    DECLARE @LineageKey INT = (SELECT TOP(1) [LineageKey]
                               FROM int.[Lineage]
                               WHERE [TableName] = N'Dim_Student' 
                                 AND [FinishLoad] IS NULL
                               ORDER BY [LineageKey] DESC);

    -- Si no existe un lineage abierto, crear uno nuevo
    IF @LineageKey IS NULL
    BEGIN
        INSERT INTO int.Lineage ([TableName], [StartLoad], [Status])
        VALUES (N'Dim_Student', SYSDATETIME(), 'I');

        SET @LineageKey = SCOPE_IDENTITY();
    END

    IF NOT EXISTS (SELECT * FROM [Dim_Student] WHERE [StudentCode] = ' ')
    INSERT INTO [dbo].[Dim_Student]
    (
        [_Source Key],
        [StudentCode],
        [FirstName], 
        [SecondName], 
        [FirstLastName], 
        [SecondLastName],
        [BirthDate], 
        [Phone], 
        [Email], 
        [TutorCode], 
        [TutorFirstName], 
        [TutorSecondName], 
        [TutorFirstLastName],
        [TutorSecondLastName], 
        [TutorBirthDate], 
        [TutorPhone], 
        [TutorEmail], 
        [TutorAddress],
        [EnrollmentModality], 
        [EnrollmentLevel],
        [Valid From], 
        [Valid To], 
        [Lineage Key]
    )
    VALUES 
    (
        'N/A',
        'N/A',
        'N/A', NULL, 'N/A', NULL, '1753-01-01',
        NULL, NULL, 'N/A', 'N/A', NULL, 'N/A',
        NULL, '1753-01-01', 'N/A', NULL, 'N/A',
        'N/A', 'N/A', '1753-01-01', '9999-12-31', -1
    );

    UPDATE dts
    SET dts.[Valid To] = stg.[Valid From]
    FROM Dim_Student AS dts
    INNER JOIN Staging_Student AS stg 
        ON dts.[StudentCode] = stg.[StudentCode]
    WHERE dts.[Valid To] = @EndOfTime;

    INSERT INTO Dim_Student
    (
        [_Source Key],
        [StudentCode],
        [FirstName], 
        [SecondName], 
        [FirstLastName], 
        [SecondLastName],
        [BirthDate], 
        [Phone], 
        [Email], 
        [TutorCode], 
        [TutorFirstName], 
        [TutorSecondName], 
        [TutorFirstLastName],
        [TutorSecondLastName], 
        [TutorBirthDate], 
        [TutorPhone], 
        [TutorEmail], 
        [TutorAddress],
        [EnrollmentModality], 
        [EnrollmentLevel],
        [Valid From], 
        [Valid To], 
        [Lineage Key]
    )
    SELECT 
        ISNULL([_Source Key], 'N/A'),
        ISNULL([StudentCode], 'N/A'),
        ISNULL([FirstName], 'N/A'),
        [SecondName], 
        ISNULL([FirstLastName], 'N/A'),
        [SecondLastName], 
        ISNULL([BirthDate], '1753-01-01'),
        [Phone], 
        [Email], 
        ISNULL([TutorCode], 'N/A'),
        ISNULL([TutorFirstName], 'N/A'),
        [TutorSecondName], 
        ISNULL([TutorFirstLastName], 'N/A'),
        [TutorSecondLastName], 
        ISNULL([TutorBirthDate], '1753-01-01'),
        ISNULL([TutorPhone], 'N/A'),
        [TutorEmail], 
        ISNULL([TutorAddress], 'N/A'),
        ISNULL([EnrollmentModality], 'N/A'),
        ISNULL([EnrollmentLevel], 'N/A'),
        ISNULL([Valid From], GETDATE()),
        ISNULL([Valid To], '9999-12-31'),
        @LineageKey
    FROM Staging_Student;


    SELECT @LastDateLoaded = MAX([Valid From]) FROM Dim_Student WHERE [Lineage Key] = @LineageKey;

    UPDATE [int].[Lineage]
    SET 
        [FinishLoad] = SYSDATETIME(), 
        Status = 'S'
    WHERE [LineageKey] = @LineageKey;

    UPDATE [int].[IncrementalLoads]
    SET [LoadDate] = @LastDateLoaded
    WHERE [TableName] = N'Dim_Student';

    COMMIT;

    RETURN 0;
END;
GO

