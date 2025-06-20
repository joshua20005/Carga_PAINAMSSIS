
/****** Object:  Table [dbo].[Document_Detail_document_detail]    Script Date: 10/6/2025 20:03:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document_Detail_document_detail](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Id_document_id] [bigint] NOT NULL,
	[id_student_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Document_document]    Script Date: 10/6/2025 20:03:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document_document](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code_document] [nvarchar](50) NOT NULL,
	[name_document] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_group]    Script Date: 10/6/2025 20:03:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_group](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code_group] [nvarchar](50) NOT NULL,
	[level_group] [nvarchar](max) NOT NULL,
	[section_group] [nvarchar](max) NOT NULL,
	[amount_group] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Imparte_imparte]    Script Date: 10/6/2025 20:03:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Imparte_imparte](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Hora] [time](7) NOT NULL,
	[id_group_id] [bigint] NOT NULL,
	[id_subject_id] [bigint] NOT NULL,
	[id_teacher_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mentor_mentor]    Script Date: 10/6/2025 20:03:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mentor_mentor](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code_tutor] [nvarchar](50) NOT NULL,
	[name_tutor] [nvarchar](max) NOT NULL,
	[birthdate_tutor] [date] NOT NULL,
	[phone_tutor] [nvarchar](max) NOT NULL,
	[email_tutor] [nvarchar](max) NOT NULL,
	[address_tutor] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Non_Attendance_non_attendance]    Script Date: 10/6/2025 20:03:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Non_Attendance_non_attendance](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Date] [datetimeoffset](7) NOT NULL,
	[id_registration_id] [bigint] NOT NULL,
	[id_subject_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Note_note]    Script Date: 10/6/2025 20:03:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Note_note](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[first_partial] [nvarchar](max) NOT NULL,
	[second_partial] [nvarchar](max) NOT NULL,
	[first_semester] [nvarchar](max) NOT NULL,
	[third_partial] [nvarchar](max) NOT NULL,
	[quarter_partial] [nvarchar](max) NOT NULL,
	[second_semester] [nvarchar](max) NOT NULL,
	[final_grade] [nvarchar](max) NOT NULL,
	[special_note] [float] NOT NULL,
	[id_registration_id] [bigint] NOT NULL,
	[id_subject_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration_registration]    Script Date: 10/6/2025 20:03:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration_registration](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code_registration] [nvarchar](30) NOT NULL,
	[date_registration] [datetimeoffset](7) NOT NULL,
	[mode_registration] [nvarchar](max) NOT NULL,
	[level_registration] [nvarchar](max) NOT NULL,
	[id_group_id] [bigint] NOT NULL,
	[id_student_id] [bigint] NOT NULL,
	[id_tutor_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_student]    Script Date: 10/6/2025 20:03:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_student](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code_student] [nvarchar](50) NOT NULL,
	[name_student] [nvarchar](max) NOT NULL,
	[surname_student] [nvarchar](max) NOT NULL,
	[birthday_student] [date] NOT NULL,
	[phone_student] [nvarchar](max) NOT NULL,
	[email_student] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects_subjects]    Script Date: 10/6/2025 20:03:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects_subjects](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code_subject] [nvarchar](50) NOT NULL,
	[name_subject] [nvarchar](max) NOT NULL,
	[period_subject] [nvarchar](max) NOT NULL,
	[academic_subject] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_teacher]    Script Date: 10/6/2025 20:03:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_teacher](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code_teacher] [nvarchar](50) NOT NULL,
	[name_teacher] [nvarchar](max) NOT NULL,
	[phone_teacher] [nvarchar](max) NOT NULL,
	[email_teacher] [nvarchar](max) NOT NULL,
	[address_teacher] [nvarchar](max) NOT NULL,
	[area_teacher] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Document_Detail_document_detail]  WITH CHECK ADD  CONSTRAINT [Document_Detail_document_detail_Id_document_id_77e2c15a_fk_Document_document_id] FOREIGN KEY([Id_document_id])
REFERENCES [dbo].[Document_document] ([id])
GO
ALTER TABLE [dbo].[Document_Detail_document_detail] CHECK CONSTRAINT [Document_Detail_document_detail_Id_document_id_77e2c15a_fk_Document_document_id]
GO
ALTER TABLE [dbo].[Document_Detail_document_detail]  WITH CHECK ADD  CONSTRAINT [Document_Detail_document_detail_id_student_id_8a59f365_fk_Student_student_id] FOREIGN KEY([id_student_id])
REFERENCES [dbo].[Student_student] ([id])
GO
ALTER TABLE [dbo].[Document_Detail_document_detail] CHECK CONSTRAINT [Document_Detail_document_detail_id_student_id_8a59f365_fk_Student_student_id]
GO
ALTER TABLE [dbo].[Imparte_imparte]  WITH CHECK ADD  CONSTRAINT [Imparte_imparte_id_group_id_95f6d271_fk_Group_group_id] FOREIGN KEY([id_group_id])
REFERENCES [dbo].[Group_group] ([id])
GO
ALTER TABLE [dbo].[Imparte_imparte] CHECK CONSTRAINT [Imparte_imparte_id_group_id_95f6d271_fk_Group_group_id]
GO
ALTER TABLE [dbo].[Imparte_imparte]  WITH CHECK ADD  CONSTRAINT [Imparte_imparte_id_subject_id_afa3aa53_fk_Subjects_subjects_id] FOREIGN KEY([id_subject_id])
REFERENCES [dbo].[Subjects_subjects] ([id])
GO
ALTER TABLE [dbo].[Imparte_imparte] CHECK CONSTRAINT [Imparte_imparte_id_subject_id_afa3aa53_fk_Subjects_subjects_id]
GO
ALTER TABLE [dbo].[Imparte_imparte]  WITH CHECK ADD  CONSTRAINT [Imparte_imparte_id_teacher_id_8310bfc6_fk_Teacher_teacher_id] FOREIGN KEY([id_teacher_id])
REFERENCES [dbo].[Teacher_teacher] ([id])
GO
ALTER TABLE [dbo].[Imparte_imparte] CHECK CONSTRAINT [Imparte_imparte_id_teacher_id_8310bfc6_fk_Teacher_teacher_id]
GO
ALTER TABLE [dbo].[Non_Attendance_non_attendance]  WITH CHECK ADD  CONSTRAINT [Non_Attendance_non_attendance_id_registration_id_c98e0df1_fk_Registration_registration_id] FOREIGN KEY([id_registration_id])
REFERENCES [dbo].[Registration_registration] ([id])
GO
ALTER TABLE [dbo].[Non_Attendance_non_attendance] CHECK CONSTRAINT [Non_Attendance_non_attendance_id_registration_id_c98e0df1_fk_Registration_registration_id]
GO
ALTER TABLE [dbo].[Non_Attendance_non_attendance]  WITH CHECK ADD  CONSTRAINT [Non_Attendance_non_attendance_id_subject_id_b374cca9_fk_Subjects_subjects_id] FOREIGN KEY([id_subject_id])
REFERENCES [dbo].[Subjects_subjects] ([id])
GO
ALTER TABLE [dbo].[Non_Attendance_non_attendance] CHECK CONSTRAINT [Non_Attendance_non_attendance_id_subject_id_b374cca9_fk_Subjects_subjects_id]
GO
ALTER TABLE [dbo].[Note_note]  WITH CHECK ADD  CONSTRAINT [Note_note_id_registration_id_68cce8b8_fk_Registration_registration_id] FOREIGN KEY([id_registration_id])
REFERENCES [dbo].[Registration_registration] ([id])
GO
ALTER TABLE [dbo].[Note_note] CHECK CONSTRAINT [Note_note_id_registration_id_68cce8b8_fk_Registration_registration_id]
GO
ALTER TABLE [dbo].[Note_note]  WITH CHECK ADD  CONSTRAINT [Note_note_id_subject_id_f99d403c_fk_Subjects_subjects_id] FOREIGN KEY([id_subject_id])
REFERENCES [dbo].[Subjects_subjects] ([id])
GO
ALTER TABLE [dbo].[Note_note] CHECK CONSTRAINT [Note_note_id_subject_id_f99d403c_fk_Subjects_subjects_id]
GO
ALTER TABLE [dbo].[Registration_registration]  WITH CHECK ADD  CONSTRAINT [Registration_registration_id_group_id_21f31b41_fk_Group_group_id] FOREIGN KEY([id_group_id])
REFERENCES [dbo].[Group_group] ([id])
GO
ALTER TABLE [dbo].[Registration_registration] CHECK CONSTRAINT [Registration_registration_id_group_id_21f31b41_fk_Group_group_id]
GO
ALTER TABLE [dbo].[Registration_registration]  WITH CHECK ADD  CONSTRAINT [Registration_registration_id_student_id_02d73c12_fk_Student_student_id] FOREIGN KEY([id_student_id])
REFERENCES [dbo].[Student_student] ([id])
GO
ALTER TABLE [dbo].[Registration_registration] CHECK CONSTRAINT [Registration_registration_id_student_id_02d73c12_fk_Student_student_id]
GO
ALTER TABLE [dbo].[Registration_registration]  WITH CHECK ADD  CONSTRAINT [Registration_registration_id_tutor_id_15c209f6_fk_Mentor_mentor_id] FOREIGN KEY([id_tutor_id])
REFERENCES [dbo].[Mentor_mentor] ([id])
GO
ALTER TABLE [dbo].[Registration_registration] CHECK CONSTRAINT [Registration_registration_id_tutor_id_15c209f6_fk_Mentor_mentor_id]
GO
