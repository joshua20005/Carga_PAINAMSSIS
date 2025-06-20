USE [PAINAM_DW]
GO

/****** Object:  Table [dbo].[Dim_Student]    Script Date: 6/19/2025 1:45:38 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Student](
	[Student Key] [int] IDENTITY(1,1) NOT NULL,
	[_Source Key] [nvarchar](50) NOT NULL,
	[StudentCode] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[SecondName] [nvarchar](100) NULL,
	[FirstLastName] [nvarchar](100) NOT NULL,
	[SecondLastName] [nvarchar](100) NULL,
	[BirthDate] [date] NOT NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](150) NULL,
	[TutorCode] [nvarchar](50) NOT NULL,
	[TutorFirstName] [nvarchar](100) NOT NULL,
	[TutorSecondName] [nvarchar](100) NULL,
	[TutorFirstLastName] [nvarchar](100) NOT NULL,
	[TutorSecondLastName] [nvarchar](100) NULL,
	[TutorBirthDate] [date] NOT NULL,
	[TutorPhone] [nvarchar](20) NOT NULL,
	[TutorEmail] [nvarchar](150) NULL,
	[TutorAddress] [nvarchar](250) NOT NULL,
	[EnrollmentModality] [nvarchar](50) NOT NULL,
	[EnrollmentLevel] [nvarchar](50) NOT NULL,
	[Valid From] [datetime] NOT NULL,
	[Valid To] [datetime] NOT NULL,
	[Lineage Key] [int] NOT NULL,
 CONSTRAINT [PK_Dim_Student] PRIMARY KEY CLUSTERED 
(
	[Student Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

