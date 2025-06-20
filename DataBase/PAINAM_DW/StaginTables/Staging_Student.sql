USE [PAINAM_DW]
GO

/****** Object:  Table [dbo].[Staging_Student]    Script Date: 6/19/2025 1:47:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Staging_Student](
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
	[TutorFirstLastName] [nvarchar](100) NULL,
	[TutorSecondLastName] [nvarchar](100) NULL,
	[TutorBirthDate] [date] NOT NULL,
	[TutorPhone] [nvarchar](20) NOT NULL,
	[TutorEmail] [nvarchar](150) NULL,
	[TutorAddress] [nvarchar](250) NOT NULL,
	[EnrollmentModality] [nvarchar](50) NOT NULL,
	[EnrollmentLevel] [nvarchar](50) NOT NULL,
	[Valid From] [datetime] NOT NULL,
	[Valid To] [datetime] NOT NULL
) ON [PRIMARY]
GO

