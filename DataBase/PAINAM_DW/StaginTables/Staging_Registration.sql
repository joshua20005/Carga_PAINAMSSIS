USE [PAINAM_DW]
GO

/****** Object:  Table [dbo].[Staging_Registration]    Script Date: 6/19/2025 1:47:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Staging_Registration](
	[Staging Registration Key] [bigint] IDENTITY(1,1) NOT NULL,
	[Student Key] [int] NULL,
	[Group Key] [int] NULL,
	[Date Key] [int] NULL,
	[Registration Date] [date] NULL,
	[ModifiedDate] [datetime] NULL,
	[_SourceStudentKey] [nvarchar](50) NULL,
	[_SourceGroupKey] [nvarchar](50) NULL,
	[_SourceDateKey] [nvarchar](50) NULL
) ON [PRIMARY]
GO

