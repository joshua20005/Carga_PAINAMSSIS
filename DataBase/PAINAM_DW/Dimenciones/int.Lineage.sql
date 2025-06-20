USE [PAINAM_DW]
GO

/****** Object:  Table [int].[Lineage]    Script Date: 17/06/2025 15:18:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [int].[Lineage](
	[LineageKey] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](200) NOT NULL,
	[StartLoad] [datetime] NOT NULL,
	[FinishLoad] [datetime] NULL,
	[LastLoadedDate] [datetime] NOT NULL,
	[Status] [nvarchar](1) NOT NULL,
	[Type] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_Integration_Lineage] PRIMARY KEY CLUSTERED 
(
	[LineageKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [int].[Lineage] ADD  CONSTRAINT [DF_Lineage_Status]  DEFAULT (N'P') FOR [Status]
GO

ALTER TABLE [int].[Lineage] ADD  CONSTRAINT [DF_Lineage_Type]  DEFAULT (N'F') FOR [Type]
GO

