USE [PAINAM]
GO

/****** Object:  StoredProcedure [dbo].[Load_StagingGroup]    Script Date: 6/19/2025 1:42:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_StagingGroup]
    @LastLoadDate DATETIME,
    @NewLoadDate DATETIME
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

--SELECT @LastLoadDate, @NewLoadDate

    SELECT 
        'PAINAM|' + CONVERT(NVARCHAR, g.[id]) AS [_SourceKey],
        CONVERT(NVARCHAR(50), g.[code_group]) AS [GroupCode],
        CONVERT(NVARCHAR(50), g.[level_group]) AS [Level],
        CONVERT(NVARCHAR(50), g.[section_group]) AS [Section],

        CONVERT(DATETIME, ISNULL([g].ModifiedDate, '1753-01-01')) AS [Group Modified Date],
        CONVERT(DATETIME, ISNULL([g].ModifiedDate, '1753-01-01')) AS [Valid From],
        CONVERT(DATETIME, '9999-12-31') 
        AS [Valid To]

    FROM [dbo].[Group_group] g

    WHERE 
        ([g].ModifiedDate > @LastLoadDate AND [g].ModifiedDate <= @NewLoadDate);

    RETURN 0;
END;
GO

