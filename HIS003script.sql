USE [HIS]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 10/8/2024 1:16:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[AppointmentID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [int] NOT NULL,
	[AppointmentDate] [date] NOT NULL,
	[AppointmentTime] [time](7) NOT NULL,
	[Reason] [varchar](255) NOT NULL,
	[Status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AppointmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 10/8/2024 1:16:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[County] [nvarchar](50) NULL,
	[SubCounty] [nvarchar](50) NULL,
	[Ward] [nvarchar](50) NULL,
	[Village] [nvarchar](50) NULL,
 CONSTRAINT [PK__Location__E7FEA477F32E5439] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalHistory]    Script Date: 10/8/2024 1:16:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalHistory](
	[MedicalHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [int] NOT NULL,
	[Illness] [varchar](100) NOT NULL,
	[DiagnosisDate] [date] NOT NULL,
	[Treatment] [varchar](100) NOT NULL,
	[Doctor] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MedicalHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patients]    Script Date: 10/8/2024 1:16:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients](
	[PatientID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [nvarchar](10) NULL,
	[DateOfBirth] [date] NULL,
	[Height] [decimal](4, 2) NULL,
	[Weight] [decimal](5, 2) NULL,
	[LocationID] [int] NULL,
 CONSTRAINT [PK__Patients__970EC346583684F5] PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vitals]    Script Date: 10/8/2024 1:16:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vitals](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [int] NOT NULL,
	[Temperature] [decimal](4, 1) NOT NULL,
	[BloodPressure] [varchar](7) NOT NULL,
	[HeartRate] [int] NOT NULL,
	[VisitDate] [date] NOT NULL,
	[NextAppointmentDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Appointments] ON 

INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (1, 50, CAST(N'2024-01-10' AS Date), CAST(N'09:00:00' AS Time), N'Routine Checkup', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (2, 51, CAST(N'2024-01-12' AS Date), CAST(N'10:30:00' AS Time), N'Follow-up', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (3, 52, CAST(N'2024-01-15' AS Date), CAST(N'11:00:00' AS Time), N'Vaccination', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (4, 53, CAST(N'2024-01-20' AS Date), CAST(N'14:00:00' AS Time), N'Consultation', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (5, 54, CAST(N'2024-01-22' AS Date), CAST(N'08:30:00' AS Time), N'Blood Test', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (6, 55, CAST(N'2024-01-25' AS Date), CAST(N'13:30:00' AS Time), N'Routine Checkup', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (7, 56, CAST(N'2024-01-27' AS Date), CAST(N'10:00:00' AS Time), N'Skin Allergy', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (8, 57, CAST(N'2024-01-30' AS Date), CAST(N'09:45:00' AS Time), N'Consultation', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (9, 58, CAST(N'2024-02-01' AS Date), CAST(N'15:00:00' AS Time), N'Dental Check', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (10, 59, CAST(N'2024-02-05' AS Date), CAST(N'11:30:00' AS Time), N'Physical Exam', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (11, 60, CAST(N'2024-02-07' AS Date), CAST(N'09:00:00' AS Time), N'Routine Checkup', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (12, 61, CAST(N'2024-02-10' AS Date), CAST(N'10:30:00' AS Time), N'Follow-up', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (13, 62, CAST(N'2024-02-12' AS Date), CAST(N'14:00:00' AS Time), N'Vaccination', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (14, 63, CAST(N'2024-02-15' AS Date), CAST(N'08:30:00' AS Time), N'Consultation', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (15, 64, CAST(N'2024-02-18' AS Date), CAST(N'09:00:00' AS Time), N'Blood Test', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (16, 65, CAST(N'2024-02-20' AS Date), CAST(N'13:30:00' AS Time), N'Routine Checkup', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (17, 66, CAST(N'2024-02-25' AS Date), CAST(N'10:00:00' AS Time), N'Skin Allergy', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (18, 67, CAST(N'2024-02-28' AS Date), CAST(N'15:00:00' AS Time), N'Consultation', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (19, 68, CAST(N'2024-03-01' AS Date), CAST(N'11:30:00' AS Time), N'Dental Check', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (20, 69, CAST(N'2024-03-05' AS Date), CAST(N'09:00:00' AS Time), N'Physical Exam', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (21, 70, CAST(N'2024-03-10' AS Date), CAST(N'10:30:00' AS Time), N'Routine Checkup', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (22, 71, CAST(N'2024-03-12' AS Date), CAST(N'14:00:00' AS Time), N'Follow-up', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (23, 72, CAST(N'2024-03-15' AS Date), CAST(N'08:30:00' AS Time), N'Vaccination', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (24, 73, CAST(N'2024-03-18' AS Date), CAST(N'09:00:00' AS Time), N'Consultation', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (25, 74, CAST(N'2024-03-20' AS Date), CAST(N'13:30:00' AS Time), N'Blood Test', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (26, 75, CAST(N'2024-03-25' AS Date), CAST(N'10:00:00' AS Time), N'Routine Checkup', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (27, 76, CAST(N'2024-03-28' AS Date), CAST(N'15:00:00' AS Time), N'Skin Allergy', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (28, 77, CAST(N'2024-04-01' AS Date), CAST(N'11:30:00' AS Time), N'Consultation', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (29, 78, CAST(N'2024-04-05' AS Date), CAST(N'09:00:00' AS Time), N'Dental Check', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (30, 79, CAST(N'2024-04-10' AS Date), CAST(N'10:30:00' AS Time), N'Physical Exam', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (31, 80, CAST(N'2024-04-15' AS Date), CAST(N'09:00:00' AS Time), N'Routine Checkup', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (32, 81, CAST(N'2024-04-20' AS Date), CAST(N'10:30:00' AS Time), N'Follow-up', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (33, 82, CAST(N'2024-04-25' AS Date), CAST(N'14:00:00' AS Time), N'Vaccination', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (34, 83, CAST(N'2024-04-28' AS Date), CAST(N'08:30:00' AS Time), N'Consultation', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (35, 84, CAST(N'2024-05-01' AS Date), CAST(N'09:00:00' AS Time), N'Blood Test', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (36, 85, CAST(N'2024-05-05' AS Date), CAST(N'13:30:00' AS Time), N'Routine Checkup', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (37, 86, CAST(N'2024-05-10' AS Date), CAST(N'10:00:00' AS Time), N'Skin Allergy', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (38, 87, CAST(N'2024-05-15' AS Date), CAST(N'15:00:00' AS Time), N'Consultation', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (39, 88, CAST(N'2024-05-20' AS Date), CAST(N'11:30:00' AS Time), N'Dental Check', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (40, 89, CAST(N'2024-05-25' AS Date), CAST(N'09:00:00' AS Time), N'Physical Exam', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (41, 90, CAST(N'2024-05-30' AS Date), CAST(N'10:30:00' AS Time), N'Routine Checkup', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (42, 91, CAST(N'2024-06-01' AS Date), CAST(N'14:00:00' AS Time), N'Follow-up', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (43, 92, CAST(N'2024-06-05' AS Date), CAST(N'08:30:00' AS Time), N'Vaccination', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (44, 93, CAST(N'2024-06-10' AS Date), CAST(N'09:00:00' AS Time), N'Consultation', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (45, 94, CAST(N'2024-06-15' AS Date), CAST(N'13:30:00' AS Time), N'Blood Test', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (46, 95, CAST(N'2024-06-20' AS Date), CAST(N'10:00:00' AS Time), N'Routine Checkup', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (47, 96, CAST(N'2024-06-25' AS Date), CAST(N'15:00:00' AS Time), N'Skin Allergy', N'Scheduled')
INSERT [dbo].[Appointments] ([AppointmentID], [PatientID], [AppointmentDate], [AppointmentTime], [Reason], [Status]) VALUES (48, 97, CAST(N'2024-06-30' AS Date), CAST(N'11:30:00' AS Time), N'Consultation', N'Scheduled')
SET IDENTITY_INSERT [dbo].[Appointments] OFF
GO
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (1, N'West Virginia', N'Amandaberg', N'Clifford Island', N'town')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (2, N'Ohio', N'South Samantha', N'Krystal Views', N'stad')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (3, N'Nebraska', N'Martinezborough', N'Jose Unions', N'fort')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (4, N'Georgia', N'Samuelmouth', N'Jones Port', N'town')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (5, N'Missouri', N'New Ricky', N'Shannon Curve', N'port')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (6, N'Virginia', N'South Jennifer', N'Johnsonland', N'burgh')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (7, N'Texas', N'Kristaburgh', N'Matthewmouth', N'shire')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (8, N'Connecticut', N'West Brianland', N'South Ruthborough', N'ton')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (9, N'Nebraska', N'Davidshire', N'New Stephen', N'port')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (10, N'New Hampshire', N'Lindsaymouth', N'Amandashire', N'side')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (11, N'Minnesota', N'Stevenside', N'Lopezberg', N'shire')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (12, N'Texas', N'Andersonfort', N'Lake Douglas', N'land')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (13, N'Minnesota', N'Richland', N'Elizabethside', N'burgh')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (14, N'Louisiana', N'Jeffreyfort', N'Phillipsland', N'side')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (15, N'Nebraska', N'Crystalchester', N'North Richardshire', N'town')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (16, N'Nebraska', N'Rogersland', N'New Colleen', N'ville')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (17, N'South Carolina', N'New Frank', N'Lake Kylemouth', N'burgh')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (18, N'Virginia', N'Phillipsview', N'West Jaime', N'shire')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (19, N'Michigan', N'Hillfort', N'West Marthaville', N'port')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (20, N'Virginia', N'South Harryview', N'Rebeccaborough', N'mouth')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (21, N'New Jersey', N'Rodriguezburgh', N'Michaelton', N'fort')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (22, N'Arkansas', N'West Amanda', N'West Melissaland', N'port')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (23, N'Hawaii', N'South Derek', N'Johnsonport', N'side')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (24, N'Georgia', N'East Karenstad', N'North Cassandraville', N'mouth')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (25, N'Indiana', N'Matthewmouth', N'Brianside', N'town')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (26, N'Connecticut', N'Valeriabury', N'Dillonport', N'shire')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (27, N'Ohio', N'Stephaniemouth', N'North Briannaview', N'ville')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (28, N'Virginia', N'South Jennifer', N'Josephport', N'side')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (29, N'Indiana', N'Port Daniel', N'Martinezland', N'town')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (30, N'Kansas', N'Peterside', N'South Adamview', N'fort')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (31, N'Delaware', N'Juliemouth', N'Jonesport', N'town')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (32, N'Louisiana', N'Matthewberg', N'North Christina', N'land')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (33, N'Georgia', N'Jamesstad', N'Paulineview', N'shire')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (34, N'Florida', N'East Lauratown', N'Petersland', N'shire')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (35, N'Tennessee', N'Jonathanport', N'North Nicole', N'side')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (36, N'Georgia', N'Port Tamara', N'Stephenstad', N'port')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (37, N'Texas', N'Port Kimberly', N'South Davidshire', N'mouth')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (38, N'Missouri', N'Scottmouth', N'Turnerview', N'port')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (39, N'Tennessee', N'South Olivia', N'Port Steven', N'fort')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (40, N'Florida', N'Aaronview', N'Lake Chris', N'burgh')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (41, N'Connecticut', N'South Charles', N'Martinfurt', N'land')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (42, N'Mississippi', N'Jenniferborough', N'Christinaland', N'fort')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (43, N'Hawaii', N'West Chris', N'New Brentland', N'burgh')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (44, N'Florida', N'Port Matthew', N'Juliaport', N'shire')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (45, N'Ohio', N'Port William', N'New Vanessa', N'port')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (46, N'Arkansas', N'West Valerie', N'Lisamouth', N'mouth')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (47, N'New Jersey', N'West Nicole', N'North Chrisshire', N'burgh')
INSERT [dbo].[Locations] ([LocationID], [County], [SubCounty], [Ward], [Village]) VALUES (48, N'New Hampshire', N'East Danielside', N'South Jessicamouth', N'side')
SET IDENTITY_INSERT [dbo].[Locations] OFF
GO
SET IDENTITY_INSERT [dbo].[MedicalHistory] ON 

INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (1, 50, N'Hypertension', CAST(N'2023-01-05' AS Date), N'Medication', N'Dr. Smith')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (2, 51, N'Diabetes', CAST(N'2023-01-15' AS Date), N'Insulin Therapy', N'Dr. Adams')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (3, 52, N'Asthma', CAST(N'2023-02-10' AS Date), N'Inhaler', N'Dr. Lee')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (4, 53, N'Anemia', CAST(N'2023-02-20' AS Date), N'Iron Supplements', N'Dr. Baker')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (5, 54, N'Migraine', CAST(N'2023-03-02' AS Date), N'Painkillers', N'Dr. Johnson')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (6, 55, N'Hypertension', CAST(N'2023-03-12' AS Date), N'Medication', N'Dr. Smith')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (7, 56, N'Chronic Bronchitis', CAST(N'2023-03-25' AS Date), N'Steroids', N'Dr. Cooper')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (8, 57, N'Heart Disease', CAST(N'2023-04-05' AS Date), N'Beta Blockers', N'Dr. Davis')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (9, 58, N'Kidney Disease', CAST(N'2023-04-18' AS Date), N'Dialysis', N'Dr. Martinez')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (10, 59, N'Depression', CAST(N'2023-05-01' AS Date), N'Therapy', N'Dr. Patel')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (11, 60, N'Allergy', CAST(N'2023-05-10' AS Date), N'Antihistamines', N'Dr. Lee')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (12, 61, N'Hypertension', CAST(N'2023-05-20' AS Date), N'Medication', N'Dr. Adams')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (13, 62, N'Diabetes', CAST(N'2023-06-01' AS Date), N'Insulin Therapy', N'Dr. Smith')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (14, 63, N'Asthma', CAST(N'2023-06-12' AS Date), N'Inhaler', N'Dr. Baker')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (15, 64, N'Arthritis', CAST(N'2023-06-25' AS Date), N'Pain Management', N'Dr. Cooper')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (16, 65, N'Migraine', CAST(N'2023-07-05' AS Date), N'Painkillers', N'Dr. Johnson')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (17, 66, N'Chronic Bronchitis', CAST(N'2023-07-18' AS Date), N'Steroids', N'Dr. Davis')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (18, 67, N'Heart Disease', CAST(N'2023-08-01' AS Date), N'Beta Blockers', N'Dr. Lee')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (19, 68, N'Kidney Disease', CAST(N'2023-08-12' AS Date), N'Dialysis', N'Dr. Martinez')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (20, 69, N'Depression', CAST(N'2023-08-22' AS Date), N'Therapy', N'Dr. Patel')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (21, 70, N'Allergy', CAST(N'2023-09-01' AS Date), N'Antihistamines', N'Dr. Adams')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (22, 71, N'Hypertension', CAST(N'2023-09-10' AS Date), N'Medication', N'Dr. Smith')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (23, 72, N'Diabetes', CAST(N'2023-09-20' AS Date), N'Insulin Therapy', N'Dr. Baker')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (24, 73, N'Asthma', CAST(N'2023-10-01' AS Date), N'Inhaler', N'Dr. Lee')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (25, 74, N'Anemia', CAST(N'2023-10-12' AS Date), N'Iron Supplements', N'Dr. Cooper')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (26, 75, N'Migraine', CAST(N'2023-10-25' AS Date), N'Painkillers', N'Dr. Johnson')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (27, 76, N'Chronic Bronchitis', CAST(N'2023-11-02' AS Date), N'Steroids', N'Dr. Davis')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (28, 77, N'Heart Disease', CAST(N'2023-11-15' AS Date), N'Beta Blockers', N'Dr. Martinez')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (29, 78, N'Kidney Disease', CAST(N'2023-11-28' AS Date), N'Dialysis', N'Dr. Patel')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (30, 79, N'Depression', CAST(N'2023-12-01' AS Date), N'Therapy', N'Dr. Adams')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (31, 80, N'Allergy', CAST(N'2023-12-10' AS Date), N'Antihistamines', N'Dr. Smith')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (32, 81, N'Hypertension', CAST(N'2023-12-20' AS Date), N'Medication', N'Dr. Baker')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (33, 82, N'Diabetes', CAST(N'2024-01-02' AS Date), N'Insulin Therapy', N'Dr. Cooper')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (34, 83, N'Asthma', CAST(N'2024-01-12' AS Date), N'Inhaler', N'Dr. Lee')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (35, 84, N'Arthritis', CAST(N'2024-01-22' AS Date), N'Pain Management', N'Dr. Johnson')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (36, 85, N'Migraine', CAST(N'2024-02-01' AS Date), N'Painkillers', N'Dr. Davis')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (37, 86, N'Chronic Bronchitis', CAST(N'2024-02-10' AS Date), N'Steroids', N'Dr. Martinez')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (38, 87, N'Heart Disease', CAST(N'2024-02-22' AS Date), N'Beta Blockers', N'Dr. Patel')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (39, 88, N'Kidney Disease', CAST(N'2024-03-01' AS Date), N'Dialysis', N'Dr. Adams')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (40, 89, N'Depression', CAST(N'2024-03-10' AS Date), N'Therapy', N'Dr. Smith')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (41, 90, N'Allergy', CAST(N'2024-03-22' AS Date), N'Antihistamines', N'Dr. Cooper')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (42, 91, N'Hypertension', CAST(N'2024-04-01' AS Date), N'Medication', N'Dr. Lee')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (43, 92, N'Diabetes', CAST(N'2024-04-12' AS Date), N'Insulin Therapy', N'Dr. Baker')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (44, 93, N'Asthma', CAST(N'2024-04-20' AS Date), N'Inhaler', N'Dr. Johnson')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (45, 94, N'Anemia', CAST(N'2024-05-02' AS Date), N'Iron Supplements', N'Dr. Davis')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (46, 95, N'Migraine', CAST(N'2024-05-15' AS Date), N'Painkillers', N'Dr. Martinez')
INSERT [dbo].[MedicalHistory] ([MedicalHistoryID], [PatientID], [Illness], [DiagnosisDate], [Treatment], [Doctor]) VALUES (47, 96, N'Chronic Bronchitis', CAST(N'2024-05-28' AS Date), N'Steroids', N'Dr. Patel')
SET IDENTITY_INSERT [dbo].[MedicalHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[Patients] ON 

INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (50, N'Daniel', N'Richard', N'Clarke', N'Male', CAST(N'1936-01-14' AS Date), CAST(1.60 AS Decimal(4, 2)), CAST(64.20 AS Decimal(5, 2)), 1)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (51, N'James', N'Chad', N'Hicks', N'Male', CAST(N'1983-03-28' AS Date), CAST(1.61 AS Decimal(4, 2)), CAST(77.60 AS Decimal(5, 2)), 2)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (52, N'Jason', N'John', N'Holland', N'Male', CAST(N'1975-10-28' AS Date), CAST(1.62 AS Decimal(4, 2)), CAST(67.60 AS Decimal(5, 2)), 3)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (53, N'Judith', N'John', N'West', N'Female', CAST(N'1950-12-12' AS Date), CAST(1.87 AS Decimal(4, 2)), CAST(77.70 AS Decimal(5, 2)), 4)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (54, N'Laurie', N'Allison', N'Cox', N'Female', CAST(N'1971-07-07' AS Date), CAST(1.66 AS Decimal(4, 2)), CAST(75.60 AS Decimal(5, 2)), 5)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (55, N'John', N'Amanda', N'Henderson', N'Male', CAST(N'1951-08-18' AS Date), CAST(1.79 AS Decimal(4, 2)), CAST(67.80 AS Decimal(5, 2)), 6)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (56, N'Eric', N'Jason', N'Richards', N'Male', CAST(N'1975-05-23' AS Date), CAST(1.88 AS Decimal(4, 2)), CAST(66.90 AS Decimal(5, 2)), 7)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (57, N'Brandon', N'Rebecca', N'Miller', N'Male', CAST(N'1976-11-19' AS Date), CAST(1.73 AS Decimal(4, 2)), CAST(78.30 AS Decimal(5, 2)), 8)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (58, N'Emily', N'Kathryn', N'Rodriguez', N'Female', CAST(N'1985-12-25' AS Date), CAST(1.61 AS Decimal(4, 2)), CAST(83.50 AS Decimal(5, 2)), 9)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (59, N'Brenda', N'Alexander', N'Phillips', N'Female', CAST(N'1937-12-04' AS Date), CAST(1.68 AS Decimal(4, 2)), CAST(88.10 AS Decimal(5, 2)), 10)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (60, N'Stephen', N'Jeremy', N'Jones', N'Male', CAST(N'1987-07-14' AS Date), CAST(1.67 AS Decimal(4, 2)), CAST(65.90 AS Decimal(5, 2)), 11)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (61, N'Lisa', N'Gregory', N'Torres', N'Female', CAST(N'1948-11-02' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(82.00 AS Decimal(5, 2)), 12)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (62, N'Ashley', N'Joseph', N'Adams', N'Female', CAST(N'1972-04-20' AS Date), CAST(1.64 AS Decimal(4, 2)), CAST(67.70 AS Decimal(5, 2)), 13)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (63, N'Patricia', N'Kimberly', N'Gray', N'Female', CAST(N'1982-01-09' AS Date), CAST(1.84 AS Decimal(4, 2)), CAST(78.50 AS Decimal(5, 2)), 14)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (64, N'Richard', N'Christopher', N'Perry', N'Male', CAST(N'1964-11-22' AS Date), CAST(1.69 AS Decimal(4, 2)), CAST(80.70 AS Decimal(5, 2)), 15)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (65, N'Michelle', N'Melissa', N'James', N'Female', CAST(N'1969-12-06' AS Date), CAST(1.72 AS Decimal(4, 2)), CAST(82.90 AS Decimal(5, 2)), 16)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (66, N'Elizabeth', N'Patrick', N'Bennett', N'Female', CAST(N'1995-04-13' AS Date), CAST(1.61 AS Decimal(4, 2)), CAST(89.60 AS Decimal(5, 2)), 17)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (67, N'Laura', N'Ryan', N'Coleman', N'Female', CAST(N'1990-05-10' AS Date), CAST(1.63 AS Decimal(4, 2)), CAST(79.40 AS Decimal(5, 2)), 18)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (68, N'Brian', N'Edward', N'Jenkins', N'Male', CAST(N'1991-03-22' AS Date), CAST(1.60 AS Decimal(4, 2)), CAST(64.30 AS Decimal(5, 2)), 19)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (69, N'Jessica', N'Nicholas', N'Murphy', N'Female', CAST(N'1993-12-15' AS Date), CAST(1.65 AS Decimal(4, 2)), CAST(81.20 AS Decimal(5, 2)), 20)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (70, N'Robert', N'Vincent', N'Howard', N'Male', CAST(N'1994-10-08' AS Date), CAST(1.73 AS Decimal(4, 2)), CAST(86.70 AS Decimal(5, 2)), 21)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (71, N'Kenneth', N'Charles', N'Reed', N'Male', CAST(N'1978-09-20' AS Date), CAST(1.69 AS Decimal(4, 2)), CAST(92.60 AS Decimal(5, 2)), 22)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (72, N'Thomas', N'Russell', N'King', N'Male', CAST(N'1940-06-25' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(88.80 AS Decimal(5, 2)), 23)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (73, N'Sarah', N'Shawn', N'Wright', N'Female', CAST(N'1963-02-11' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(81.70 AS Decimal(5, 2)), 24)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (74, N'Christopher', N'Sean', N'Scott', N'Male', CAST(N'1981-08-01' AS Date), CAST(1.79 AS Decimal(4, 2)), CAST(74.50 AS Decimal(5, 2)), 25)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (75, N'Jennifer', N'Cynthia', N'Green', N'Female', CAST(N'1961-06-14' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(85.40 AS Decimal(5, 2)), 26)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (76, N'Kimberly', N'Diana', N'Baker', N'Female', CAST(N'1955-09-19' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(79.90 AS Decimal(5, 2)), 27)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (77, N'George', N'Matthew', N'Nelson', N'Male', CAST(N'1962-07-08' AS Date), CAST(1.81 AS Decimal(4, 2)), CAST(82.20 AS Decimal(5, 2)), 28)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (78, N'Matthew', N'Erin', N'Carter', N'Male', CAST(N'1956-05-18' AS Date), CAST(1.65 AS Decimal(4, 2)), CAST(83.30 AS Decimal(5, 2)), 29)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (79, N'Barbara', N'Eric', N'Mitchell', N'Female', CAST(N'1979-11-23' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(92.10 AS Decimal(5, 2)), 30)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (80, N'Anthony', N'Jordan', N'Perez', N'Male', CAST(N'1988-12-12' AS Date), CAST(1.72 AS Decimal(4, 2)), CAST(84.40 AS Decimal(5, 2)), 31)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (81, N'Sharon', N'Sharon', N'Roberts', N'Female', CAST(N'1953-09-09' AS Date), CAST(1.69 AS Decimal(4, 2)), CAST(67.50 AS Decimal(5, 2)), 32)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (82, N'Angela', N'Jasmine', N'Turner', N'Female', CAST(N'1958-02-22' AS Date), CAST(1.66 AS Decimal(4, 2)), CAST(89.30 AS Decimal(5, 2)), 33)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (83, N'Mary', N'Steven', N'Phillips', N'Female', CAST(N'1947-03-04' AS Date), CAST(1.77 AS Decimal(4, 2)), CAST(94.70 AS Decimal(5, 2)), 34)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (84, N'Sandra', N'Brooke', N'Campbell', N'Female', CAST(N'1956-05-29' AS Date), CAST(1.65 AS Decimal(4, 2)), CAST(78.50 AS Decimal(5, 2)), 35)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (85, N'Donna', N'Peter', N'Parker', N'Female', CAST(N'1996-11-12' AS Date), CAST(1.72 AS Decimal(4, 2)), CAST(83.80 AS Decimal(5, 2)), 36)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (86, N'Mark', N'Austin', N'Evans', N'Male', CAST(N'1992-08-21' AS Date), CAST(1.71 AS Decimal(4, 2)), CAST(75.30 AS Decimal(5, 2)), 37)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (87, N'Kevin', N'Paul', N'White', N'Male', CAST(N'1990-04-16' AS Date), CAST(1.68 AS Decimal(4, 2)), CAST(70.70 AS Decimal(5, 2)), 38)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (88, N'Charles', N'Shane', N'Harris', N'Male', CAST(N'1989-03-18' AS Date), CAST(1.73 AS Decimal(4, 2)), CAST(74.90 AS Decimal(5, 2)), 39)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (89, N'Margaret', N'Anna', N'Sanchez', N'Female', CAST(N'1957-01-10' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(76.50 AS Decimal(5, 2)), 40)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (90, N'Betty', N'Grace', N'Clark', N'Female', CAST(N'1952-02-15' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(82.70 AS Decimal(5, 2)), 41)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (91, N'Donald', N'Allison', N'Walker', N'Male', CAST(N'1985-07-01' AS Date), CAST(1.60 AS Decimal(4, 2)), CAST(68.90 AS Decimal(5, 2)), 42)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (92, N'Ronald', N'Benjamin', N'Young', N'Male', CAST(N'1997-10-05' AS Date), CAST(1.61 AS Decimal(4, 2)), CAST(69.20 AS Decimal(5, 2)), 43)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (93, N'Carol', N'Melissa', N'Hernandez', N'Female', CAST(N'1994-12-25' AS Date), CAST(1.77 AS Decimal(4, 2)), CAST(85.10 AS Decimal(5, 2)), 44)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (94, N'Joseph', N'Rebecca', N'Hall', N'Male', CAST(N'1991-11-19' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(79.50 AS Decimal(5, 2)), 45)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (95, N'Paul', N'Victoria', N'Allen', N'Male', CAST(N'1986-09-08' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(87.80 AS Decimal(5, 2)), 46)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (96, N'Timothy', N'Bethany', N'Torres', N'Male', CAST(N'1959-06-03' AS Date), CAST(1.64 AS Decimal(4, 2)), CAST(77.40 AS Decimal(5, 2)), 47)
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MiddleName], [LastName], [Gender], [DateOfBirth], [Height], [Weight], [LocationID]) VALUES (97, N'Linda', N'Kayla', N'Brooks', N'Female', CAST(N'1992-07-27' AS Date), CAST(1.68 AS Decimal(4, 2)), CAST(65.40 AS Decimal(5, 2)), 48)
SET IDENTITY_INSERT [dbo].[Patients] OFF
GO
SET IDENTITY_INSERT [dbo].[Vitals] ON 

INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (51, 50, CAST(37.0 AS Decimal(4, 1)), N'120/80', 75, CAST(N'2024-01-10' AS Date), CAST(N'2024-02-10' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (52, 51, CAST(38.2 AS Decimal(4, 1)), N'130/85', 80, CAST(N'2024-02-15' AS Date), CAST(N'2024-03-15' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (53, 52, CAST(36.5 AS Decimal(4, 1)), N'125/82', 72, CAST(N'2024-01-20' AS Date), CAST(N'2024-02-20' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (54, 53, CAST(37.5 AS Decimal(4, 1)), N'140/90', 88, CAST(N'2024-01-25' AS Date), CAST(N'2024-02-25' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (55, 54, CAST(36.8 AS Decimal(4, 1)), N'118/76', 70, CAST(N'2024-01-30' AS Date), CAST(N'2024-02-28' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (56, 55, CAST(37.1 AS Decimal(4, 1)), N'130/86', 76, CAST(N'2024-02-05' AS Date), CAST(N'2024-03-05' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (57, 56, CAST(38.0 AS Decimal(4, 1)), N'120/80', 85, CAST(N'2024-01-15' AS Date), CAST(N'2024-02-15' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (58, 57, CAST(37.3 AS Decimal(4, 1)), N'128/84', 78, CAST(N'2024-01-18' AS Date), CAST(N'2024-02-18' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (59, 58, CAST(36.9 AS Decimal(4, 1)), N'125/83', 74, CAST(N'2024-01-23' AS Date), CAST(N'2024-02-23' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (60, 59, CAST(37.4 AS Decimal(4, 1)), N'135/87', 82, CAST(N'2024-01-12' AS Date), CAST(N'2024-02-12' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (61, 60, CAST(37.6 AS Decimal(4, 1)), N'128/78', 77, CAST(N'2024-01-17' AS Date), CAST(N'2024-02-17' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (62, 61, CAST(36.7 AS Decimal(4, 1)), N'119/75', 73, CAST(N'2024-01-28' AS Date), CAST(N'2024-02-28' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (63, 62, CAST(37.5 AS Decimal(4, 1)), N'132/84', 81, CAST(N'2024-02-02' AS Date), CAST(N'2024-03-02' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (64, 63, CAST(36.4 AS Decimal(4, 1)), N'120/79', 69, CAST(N'2024-01-11' AS Date), CAST(N'2024-02-11' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (65, 64, CAST(37.8 AS Decimal(4, 1)), N'134/88', 83, CAST(N'2024-01-14' AS Date), CAST(N'2024-02-14' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (66, 65, CAST(37.2 AS Decimal(4, 1)), N'126/77', 71, CAST(N'2024-01-21' AS Date), CAST(N'2024-02-21' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (67, 66, CAST(36.6 AS Decimal(4, 1)), N'118/74', 66, CAST(N'2024-02-03' AS Date), CAST(N'2024-03-03' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (68, 67, CAST(37.9 AS Decimal(4, 1)), N'129/81', 79, CAST(N'2024-01-09' AS Date), CAST(N'2024-02-09' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (69, 68, CAST(37.0 AS Decimal(4, 1)), N'127/79', 74, CAST(N'2024-01-07' AS Date), CAST(N'2024-02-07' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (70, 69, CAST(36.8 AS Decimal(4, 1)), N'131/82', 77, CAST(N'2024-01-24' AS Date), CAST(N'2024-02-24' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (71, 70, CAST(37.3 AS Decimal(4, 1)), N'120/78', 76, CAST(N'2024-02-01' AS Date), CAST(N'2024-03-01' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (72, 71, CAST(37.5 AS Decimal(4, 1)), N'135/89', 82, CAST(N'2024-01-26' AS Date), CAST(N'2024-02-26' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (73, 72, CAST(36.5 AS Decimal(4, 1)), N'129/80', 80, CAST(N'2024-01-16' AS Date), CAST(N'2024-02-16' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (74, 73, CAST(37.1 AS Decimal(4, 1)), N'126/77', 72, CAST(N'2024-02-04' AS Date), CAST(N'2024-03-04' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (75, 74, CAST(36.4 AS Decimal(4, 1)), N'130/85', 75, CAST(N'2024-01-19' AS Date), CAST(N'2024-02-19' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (76, 75, CAST(37.8 AS Decimal(4, 1)), N'138/92', 84, CAST(N'2024-02-08' AS Date), CAST(N'2024-03-08' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (77, 76, CAST(37.0 AS Decimal(4, 1)), N'122/79', 73, CAST(N'2024-02-06' AS Date), CAST(N'2024-03-06' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (78, 77, CAST(36.9 AS Decimal(4, 1)), N'121/78', 78, CAST(N'2024-01-29' AS Date), CAST(N'2024-02-29' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (79, 78, CAST(37.6 AS Decimal(4, 1)), N'128/82', 76, CAST(N'2024-02-09' AS Date), CAST(N'2024-03-09' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (80, 79, CAST(36.5 AS Decimal(4, 1)), N'132/84', 79, CAST(N'2024-01-13' AS Date), CAST(N'2024-02-13' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (81, 80, CAST(37.1 AS Decimal(4, 1)), N'120/81', 74, CAST(N'2024-01-04' AS Date), CAST(N'2024-02-04' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (82, 81, CAST(38.0 AS Decimal(4, 1)), N'130/86', 81, CAST(N'2024-02-12' AS Date), CAST(N'2024-03-12' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (83, 82, CAST(37.4 AS Decimal(4, 1)), N'134/88', 77, CAST(N'2024-01-22' AS Date), CAST(N'2024-02-22' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (84, 83, CAST(36.6 AS Decimal(4, 1)), N'125/80', 69, CAST(N'2024-01-05' AS Date), CAST(N'2024-02-05' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (85, 84, CAST(37.7 AS Decimal(4, 1)), N'136/90', 83, CAST(N'2024-02-10' AS Date), CAST(N'2024-03-10' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (86, 85, CAST(37.3 AS Decimal(4, 1)), N'127/82', 75, CAST(N'2024-02-14' AS Date), CAST(N'2024-03-14' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (87, 86, CAST(36.8 AS Decimal(4, 1)), N'123/77', 72, CAST(N'2024-01-08' AS Date), CAST(N'2024-02-08' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (88, 87, CAST(37.2 AS Decimal(4, 1)), N'120/78', 76, CAST(N'2024-02-13' AS Date), CAST(N'2024-03-13' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (89, 88, CAST(36.9 AS Decimal(4, 1)), N'129/81', 80, CAST(N'2024-01-06' AS Date), CAST(N'2024-02-06' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (90, 89, CAST(37.5 AS Decimal(4, 1)), N'130/85', 77, CAST(N'2024-02-15' AS Date), CAST(N'2024-03-15' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (91, 90, CAST(37.0 AS Decimal(4, 1)), N'135/89', 83, CAST(N'2024-01-02' AS Date), CAST(N'2024-02-02' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (92, 91, CAST(38.1 AS Decimal(4, 1)), N'124/76', 74, CAST(N'2024-01-03' AS Date), CAST(N'2024-02-03' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (93, 92, CAST(36.7 AS Decimal(4, 1)), N'128/84', 78, CAST(N'2024-02-07' AS Date), CAST(N'2024-03-07' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (94, 93, CAST(37.6 AS Decimal(4, 1)), N'127/79', 72, CAST(N'2024-01-01' AS Date), CAST(N'2024-02-01' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (95, 94, CAST(37.0 AS Decimal(4, 1)), N'132/87', 80, CAST(N'2024-01-15' AS Date), CAST(N'2024-02-15' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (96, 95, CAST(37.2 AS Decimal(4, 1)), N'133/90', 79, CAST(N'2024-02-11' AS Date), CAST(N'2024-03-11' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (97, 96, CAST(36.8 AS Decimal(4, 1)), N'120/77', 76, CAST(N'2024-01-20' AS Date), CAST(N'2024-02-20' AS Date))
INSERT [dbo].[Vitals] ([ID], [PatientID], [Temperature], [BloodPressure], [HeartRate], [VisitDate], [NextAppointmentDate]) VALUES (98, 97, CAST(37.4 AS Decimal(4, 1)), N'129/81', 75, CAST(N'2024-01-09' AS Date), CAST(N'2024-02-09' AS Date))
SET IDENTITY_INSERT [dbo].[Vitals] OFF
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patients] ([PatientID])
GO
ALTER TABLE [dbo].[MedicalHistory]  WITH CHECK ADD FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patients] ([PatientID])
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK__Patients__Locati__4D94879B] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK__Patients__Locati__4D94879B]
GO
ALTER TABLE [dbo].[Vitals]  WITH CHECK ADD FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patients] ([PatientID])
GO
