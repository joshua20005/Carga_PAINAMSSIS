USE [PAINAM_DW]
GO

/****** Object:  Table [dbo].[Fact_Registration]    Script Date: 6/19/2025 1:46:02 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fact_Registration](
	[Registration Key] [bigint] IDENTITY(1,1) NOT NULL,
	[Student Key] [int] NOT NULL,
	[Group Key] [int] NOT NULL,
	[Date Key] [int] NOT NULL,
	[Registration Date] [date] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[_SourceStudentKey] [int] NULL,
	[_SourceGroupKey] [int] NULL,
	[_SourceDateKey] [int] NULL,
	[Lineage Key] [int] NOT NULL
) ON [PRIMARY]
GO

