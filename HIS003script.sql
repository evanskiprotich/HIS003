USE [master]
GO
/****** Object:  Database [HIS]    Script Date: 9/24/2024 11:22:57 AM ******/
CREATE DATABASE [HIS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HIS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\HIS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HIS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\HIS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [HIS] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HIS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HIS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HIS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HIS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HIS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HIS] SET ARITHABORT OFF 
GO
ALTER DATABASE [HIS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HIS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HIS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HIS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HIS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HIS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HIS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HIS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HIS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HIS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HIS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HIS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HIS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HIS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HIS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HIS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HIS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HIS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HIS] SET  MULTI_USER 
GO
ALTER DATABASE [HIS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HIS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HIS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HIS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HIS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HIS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HIS] SET QUERY_STORE = ON
GO
ALTER DATABASE [HIS] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [HIS]
GO
/****** Object:  Table [dbo].[PatientList]    Script Date: 9/24/2024 11:22:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[First Name] [nvarchar](255) NULL,
	[Middle Name] [nvarchar](255) NULL,
	[Last Name] [nvarchar](255) NULL,
	[Gender] [nvarchar](255) NULL,
	[Date of Birth] [datetime] NULL,
	[Height (m)] [float] NULL,
	[Weight (kg)] [float] NULL,
	[Temperature (Â°C)] [float] NULL,
	[Blood Pressure] [nvarchar](255) NULL,
	[Heart Rate (bpm)] [float] NULL,
	[County] [nvarchar](255) NULL,
	[Sub County] [nvarchar](255) NULL,
	[Ward] [nvarchar](255) NULL,
	[Village] [nvarchar](255) NULL,
	[Visit Date] [datetime] NULL,
	[Next Appointment Date] [datetime] NULL,
	[Doctor] [nvarchar](255) NULL,
	[Illness] [nvarchar](255) NULL,
	[Prescription] [nvarchar](255) NULL,
 CONSTRAINT [PK_PatientList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PatientList] ON 

INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (51, N'Daniel', N'Richard', N'Clarke', N'Female', CAST(N'1936-01-14T00:00:00.000' AS DateTime), 1.6, 64.2, 36.9, N'95/62', 86, N'West Virginia', N'Amandaberg', N'Clifford Island', N'town', CAST(N'2024-01-18T00:00:00.000' AS DateTime), CAST(N'2024-02-09T00:00:00.000' AS DateTime), N'Dr. Franco', N'Heart Disease', N'Ibuprofen')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (52, N'James', N'Chad', N'Hicks', N'Female', CAST(N'1983-03-28T00:00:00.000' AS DateTime), 1.61, 77.6, 37.2, N'128/67', 79, N'Ohio', N'South Samantha', N'Krystal Views', N'stad', CAST(N'2024-02-10T00:00:00.000' AS DateTime), CAST(N'2024-02-24T00:00:00.000' AS DateTime), N'Dr. Davis', N'Flu', N'Paracetamol')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (53, N'Jason', N'John', N'Holland', N'Male', CAST(N'1975-10-28T00:00:00.000' AS DateTime), 1.62, 67.6, 36, N'135/72', 74, N'Nebraska', N'Martinezborough', N'Jose Unions', N'fort', CAST(N'2024-01-03T00:00:00.000' AS DateTime), CAST(N'2024-01-21T00:00:00.000' AS DateTime), N'Dr. Rivera', N'Arthritis', N'Insulin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (54, N'Judith', N'John', N'West', N'Female', CAST(N'1950-12-12T00:00:00.000' AS DateTime), 1.87, 77.7, 37.2, N'107/62', 70, N'Georgia', N'Samuelmouth', N'Jones Port', N'town', CAST(N'2024-07-07T00:00:00.000' AS DateTime), CAST(N'2024-08-02T00:00:00.000' AS DateTime), N'Dr. Bradford', N'Migraine', N'Aspirin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (55, N'Laurie', N'Allison', N'Cox', N'Female', CAST(N'1971-07-07T00:00:00.000' AS DateTime), 1.66, 75.6, 37.1, N'94/70', 70, N'Missouri', N'New Ricky', N'Shannon Curve', N'port', CAST(N'2024-02-17T00:00:00.000' AS DateTime), CAST(N'2024-03-10T00:00:00.000' AS DateTime), N'Dr. Myers', N'Heart Disease', N'Lisinopril')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (56, N'Geoffrey', N'Jamie', N'Graham', N'Female', CAST(N'1961-12-27T00:00:00.000' AS DateTime), 1.55, 53, 36.8, N'106/73', 96, N'Connecticut', N'Coreyfurt', N'Robin View', N'town', CAST(N'2024-06-12T00:00:00.000' AS DateTime), CAST(N'2024-06-22T00:00:00.000' AS DateTime), N'Dr. Bray', N'Migraine', N'Aspirin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (57, N'Sergio', N'Caitlin', N'Torres', N'Female', CAST(N'2005-03-01T00:00:00.000' AS DateTime), 1.84, 63.2, 36.8, N'139/78', 78, N'Hawaii', N'Fergusonstad', N'Alexander Dam', N'side', CAST(N'2024-08-17T00:00:00.000' AS DateTime), CAST(N'2024-09-16T00:00:00.000' AS DateTime), N'Dr. Jones', N'Arthritis', N'Paracetamol')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (58, N'Anita', N'Jeffrey', N'Hamilton', N'Female', CAST(N'1985-02-15T00:00:00.000' AS DateTime), 1.79, 93.3, 37.4, N'137/66', 99, N'Mississippi', N'Chavezmouth', N'Nguyen Drive', N'borough', CAST(N'2024-07-23T00:00:00.000' AS DateTime), CAST(N'2024-08-18T00:00:00.000' AS DateTime), N'Dr. Smith', N'Anemia', N'Amoxicillin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (59, N'Kathleen', N'Nicole', N'Thornton', N'Male', CAST(N'2001-04-06T00:00:00.000' AS DateTime), 1.62, 62.9, 36.1, N'96/61', 95, N'Delaware', N'Howardview', N'Kimberly Centers', N'side', CAST(N'2024-02-16T00:00:00.000' AS DateTime), CAST(N'2024-03-10T00:00:00.000' AS DateTime), N'Dr. Frederick', N'Flu', N'Lisinopril')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (60, N'Peter', N'Spencer', N'Flores', N'Male', CAST(N'2006-05-01T00:00:00.000' AS DateTime), 1.99, 53.7, 37.3, N'109/86', 81, N'Mississippi', N'West Sergioborough', N'Berger Viaduct', N'ville', CAST(N'2024-07-04T00:00:00.000' AS DateTime), CAST(N'2024-07-29T00:00:00.000' AS DateTime), N'Dr. Anderson', N'Anemia', N'Paracetamol')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (61, N'Peter', N'Matthew', N'Rush', N'Male', CAST(N'1980-09-29T00:00:00.000' AS DateTime), 1.73, 76.8, 36.7, N'120/60', 64, N'Montana', N'Laneport', N'Ballard Fort', N'stad', CAST(N'2024-02-07T00:00:00.000' AS DateTime), CAST(N'2024-02-15T00:00:00.000' AS DateTime), N'Dr. Munoz', N'Arthritis', N'Atorvastatin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (62, N'Andrew', N'Adam', N'Barnes', N'Male', CAST(N'1966-08-30T00:00:00.000' AS DateTime), 1.83, 84.1, 36.8, N'106/89', 75, N'Virginia', N'East Stephanie', N'Sara Alley', N'stad', CAST(N'2024-04-01T00:00:00.000' AS DateTime), CAST(N'2024-04-16T00:00:00.000' AS DateTime), N'Dr. Jenkins', N'Anemia', N'Omeprazole')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (63, N'Christopher', N'Lori', N'Pollard', N'Female', CAST(N'2004-05-23T00:00:00.000' AS DateTime), 1.79, 88.5, 36.9, N'128/78', 60, N'Virginia', N'Younghaven', N'Johnson Turnpike', N'port', CAST(N'2024-01-15T00:00:00.000' AS DateTime), CAST(N'2024-01-26T00:00:00.000' AS DateTime), N'Dr. Hendrix', N'COVID-19', N'Lisinopril')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (64, N'Susan', N'Eric', N'Morris', N'Male', CAST(N'1946-02-19T00:00:00.000' AS DateTime), 1.84, 71.2, 36.3, N'131/63', 69, N'South Carolina', N'Danielport', N'Luis Freeway', N'town', CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-28T00:00:00.000' AS DateTime), N'Dr. Campbell', N'Arthritis', N'Amoxicillin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (65, N'Cynthia', N'Natasha', N'Smith', N'Male', CAST(N'1972-10-05T00:00:00.000' AS DateTime), 1.84, 76.4, 36.5, N'124/81', 88, N'Texas', N'North Robertstad', N'Christopher Islands', N'side', CAST(N'2024-04-05T00:00:00.000' AS DateTime), CAST(N'2024-04-12T00:00:00.000' AS DateTime), N'Dr. Owens', N'Flu', N'Paracetamol')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (66, N'Valerie', N'Rebecca', N'Vega', N'Male', CAST(N'1954-04-08T00:00:00.000' AS DateTime), 1.85, 68.1, 36.1, N'94/65', 78, N'New York', N'South Kellyview', N'Ward Place', N'mouth', CAST(N'2024-02-05T00:00:00.000' AS DateTime), CAST(N'2024-02-22T00:00:00.000' AS DateTime), N'Dr. Dixon', N'COVID-19', N'Amoxicillin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (67, N'Danielle', N'Matthew', N'Hayes', N'Female', CAST(N'1961-03-31T00:00:00.000' AS DateTime), 1.78, 68.1, 37.5, N'129/67', 91, N'Texas', N'South Ronald', N'Brenda Port', N'side', CAST(N'2024-05-30T00:00:00.000' AS DateTime), CAST(N'2024-06-12T00:00:00.000' AS DateTime), N'Dr. Flores', N'Heart Disease', N'Amoxicillin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (68, N'Jared', N'Gloria', N'Stevenson', N'Female', CAST(N'1945-10-05T00:00:00.000' AS DateTime), 1.59, 99.5, 37.4, N'140/60', 94, N'New Mexico', N'Lake Natalieton', N'Kelly Center', N'land', CAST(N'2024-07-10T00:00:00.000' AS DateTime), CAST(N'2024-08-01T00:00:00.000' AS DateTime), N'Dr. Vang', N'Heart Disease', N'Insulin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (69, N'Tonya', N'James', N'Taylor', N'Female', CAST(N'1974-01-13T00:00:00.000' AS DateTime), 1.98, 71.4, 37.2, N'103/61', 99, N'Indiana', N'Ashleyfort', N'Brad Route', N'ville', CAST(N'2024-07-29T00:00:00.000' AS DateTime), CAST(N'2024-08-21T00:00:00.000' AS DateTime), N'Dr. Bernard', N'Migraine', N'Aspirin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (70, N'Martha', N'Karen', N'Nelson', N'Female', CAST(N'1958-08-03T00:00:00.000' AS DateTime), 1.82, 96.8, 36.5, N'129/84', 97, N'Georgia', N'Alishabury', N'Olsen Locks', N'borough', CAST(N'2024-03-09T00:00:00.000' AS DateTime), CAST(N'2024-03-26T00:00:00.000' AS DateTime), N'Dr. Le', N'Anemia', N'Metformin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (71, N'Megan', N'William', N'Leonard', N'Male', CAST(N'1990-05-07T00:00:00.000' AS DateTime), 1.7, 85.7, 36.9, N'101/78', 89, N'Connecticut', N'North Tiffany', N'Ashley Avenue', N'side', CAST(N'2024-04-02T00:00:00.000' AS DateTime), CAST(N'2024-05-01T00:00:00.000' AS DateTime), N'Dr. Buckley', N'Anemia', N'Amoxicillin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (72, N'James', N'Emily', N'Rogers', N'Female', CAST(N'1939-10-28T00:00:00.000' AS DateTime), 1.68, 65.6, 37, N'105/90', 63, N'Mississippi', N'Smithburgh', N'Mary Oval', N'burgh', CAST(N'2024-07-29T00:00:00.000' AS DateTime), CAST(N'2024-08-09T00:00:00.000' AS DateTime), N'Dr. Cochran', N'Anemia', N'Lisinopril')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (73, N'Haley', N'Megan', N'Orozco', N'Male', CAST(N'1949-04-01T00:00:00.000' AS DateTime), 1.67, 63.2, 36.5, N'97/89', 61, N'Illinois', N'Wuhaven', N'Hubbard Views', N'borough', CAST(N'2024-08-03T00:00:00.000' AS DateTime), CAST(N'2024-08-14T00:00:00.000' AS DateTime), N'Dr. Garcia', N'Heart Disease', N'Ibuprofen')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (74, N'Ernest', N'Richard', N'Olson', N'Male', CAST(N'1944-01-23T00:00:00.000' AS DateTime), 1.61, 95.6, 36.1, N'119/84', 85, N'Arkansas', N'Fritzburgh', N'Mathis Port', N'bury', CAST(N'2024-08-02T00:00:00.000' AS DateTime), CAST(N'2024-08-24T00:00:00.000' AS DateTime), N'Dr. Landry', N'Anemia', N'Ibuprofen')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (75, N'Steven', N'Elizabeth', N'Jones', N'Male', CAST(N'1990-10-04T00:00:00.000' AS DateTime), 1.52, 86, 37.4, N'109/76', 79, N'Massachusetts', N'Kellerburgh', N'Julie Mission', N'haven', CAST(N'2024-02-10T00:00:00.000' AS DateTime), CAST(N'2024-02-26T00:00:00.000' AS DateTime), N'Dr. Gibson', N'Diabetes', N'Insulin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (76, N'Maureen', N'Robert', N'Freeman', N'Male', CAST(N'1960-10-11T00:00:00.000' AS DateTime), 1.93, 86.1, 36.5, N'119/75', 76, N'California', N'Travisstad', N'Smith Square', N'fort', CAST(N'2024-04-12T00:00:00.000' AS DateTime), CAST(N'2024-04-30T00:00:00.000' AS DateTime), N'Dr. Roach', N'Asthma', N'Paracetamol')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (77, N'Shane', N'Kevin', N'Klein', N'Male', CAST(N'2003-08-18T00:00:00.000' AS DateTime), 1.62, 58.9, 37, N'115/63', 72, N'California', N'Lake Timothyburgh', N'Patty Summit', N'land', CAST(N'2024-08-23T00:00:00.000' AS DateTime), CAST(N'2024-09-04T00:00:00.000' AS DateTime), N'Dr. Stokes', N'COVID-19', N'Omeprazole')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (78, N'Johnny', N'Tammy', N'Bolton', N'Male', CAST(N'1955-05-12T00:00:00.000' AS DateTime), 1.63, 94.4, 37.4, N'117/60', 73, N'Delaware', N'Matthewport', N'Allen Tunnel', N'ton', CAST(N'2024-08-11T00:00:00.000' AS DateTime), CAST(N'2024-09-10T00:00:00.000' AS DateTime), N'Dr. Arnold', N'COVID-19', N'Aspirin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (79, N'David', N'Mary', N'Huff', N'Female', CAST(N'1952-12-01T00:00:00.000' AS DateTime), 1.52, 90.5, 37.3, N'102/82', 62, N'Kansas', N'East John', N'Tiffany Drives', N'fort', CAST(N'2024-06-04T00:00:00.000' AS DateTime), CAST(N'2024-06-21T00:00:00.000' AS DateTime), N'Dr. Bailey', N'Migraine', N'Omeprazole')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (80, N'Marie', N'Darlene', N'Burke', N'Male', CAST(N'1998-03-16T00:00:00.000' AS DateTime), 1.6, 83, 37.4, N'104/76', 70, N'Tennessee', N'East Andrew', N'Sampson Park', N'town', CAST(N'2024-04-30T00:00:00.000' AS DateTime), CAST(N'2024-05-27T00:00:00.000' AS DateTime), N'Dr. Berger', N'Anemia', N'Aspirin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (81, N'Chris', N'Shannon', N'Mccormick', N'Female', CAST(N'1975-06-08T00:00:00.000' AS DateTime), 1.68, 55.6, 36.8, N'139/73', 83, N'Nevada', N'Grahamland', N'Davis Avenue', N'mouth', CAST(N'2024-02-07T00:00:00.000' AS DateTime), CAST(N'2024-03-03T00:00:00.000' AS DateTime), N'Dr. Holmes', N'Migraine', N'Metformin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (82, N'Daniel', N'Ashley', N'Rodgers', N'Male', CAST(N'1945-10-01T00:00:00.000' AS DateTime), 1.66, 64.3, 37.4, N'123/88', 86, N'Vermont', N'West Debra', N'John Corner', N'burgh', CAST(N'2024-01-25T00:00:00.000' AS DateTime), CAST(N'2024-02-13T00:00:00.000' AS DateTime), N'Dr. Jackson', N'Arthritis', N'Lisinopril')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (83, N'Wesley', N'Tamara', N'Hernandez', N'Female', CAST(N'1949-11-08T00:00:00.000' AS DateTime), 1.79, 60.7, 36.5, N'94/62', 87, N'Missouri', N'North Scott', N'Kristin Highway', N'view', CAST(N'2024-01-04T00:00:00.000' AS DateTime), CAST(N'2024-01-12T00:00:00.000' AS DateTime), N'Dr. Murphy', N'Hypertension', N'Atorvastatin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (84, N'Justin', N'Jesse', N'Johnson', N'Female', CAST(N'1957-08-23T00:00:00.000' AS DateTime), 1.62, 81, 36.9, N'98/68', 97, N'Maine', N'North Charlesburgh', N'Cynthia Neck', N'shire', CAST(N'2024-04-05T00:00:00.000' AS DateTime), CAST(N'2024-05-05T00:00:00.000' AS DateTime), N'Dr. King', N'Hypertension', N'Atorvastatin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (85, N'Glenn', N'Jacob', N'Jenkins', N'Female', CAST(N'1992-02-25T00:00:00.000' AS DateTime), 1.77, 52.3, 37.5, N'112/69', 78, N'Oregon', N'East David', N'King Turnpike', N'town', CAST(N'2024-05-19T00:00:00.000' AS DateTime), CAST(N'2024-06-14T00:00:00.000' AS DateTime), N'Dr. Preston', N'Hypertension', N'Metformin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (86, N'Amanda', N'Amy', N'Turner', N'Male', CAST(N'1982-05-21T00:00:00.000' AS DateTime), 1.55, 81, 37.1, N'99/90', 78, N'Nebraska', N'North Robertland', N'Garcia Hollow', N'burgh', CAST(N'2024-04-29T00:00:00.000' AS DateTime), CAST(N'2024-05-17T00:00:00.000' AS DateTime), N'Dr. Stewart', N'Hypertension', N'Omeprazole')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (87, N'Jennifer', N'Sandra', N'Fields', N'Female', CAST(N'1940-09-20T00:00:00.000' AS DateTime), 1.5, 94.7, 36.4, N'110/87', 82, N'Mississippi', N'New Michaelmouth', N'Gross Expressway', N'ton', CAST(N'2024-04-30T00:00:00.000' AS DateTime), CAST(N'2024-05-18T00:00:00.000' AS DateTime), N'Dr. Williams', N'Arthritis', N'Lisinopril')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (88, N'Eric', N'Grant', N'Hall', N'Male', CAST(N'1965-12-27T00:00:00.000' AS DateTime), 1.82, 75.5, 37.2, N'125/75', 64, N'Washington', N'Leonberg', N'Stephen Common', N'mouth', CAST(N'2024-04-24T00:00:00.000' AS DateTime), CAST(N'2024-05-24T00:00:00.000' AS DateTime), N'Dr. Walker', N'Diabetes', N'Amoxicillin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (89, N'Mason', N'Sara', N'Berry', N'Male', CAST(N'1981-09-13T00:00:00.000' AS DateTime), 1.68, 54.4, 37.2, N'140/75', 63, N'Colorado', N'Sellerston', N'Baker Row', N'port', CAST(N'2024-02-22T00:00:00.000' AS DateTime), CAST(N'2024-03-10T00:00:00.000' AS DateTime), N'Dr. Swanson', N'Anemia', N'Atorvastatin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (90, N'Michael', N'Jose', N'Luna', N'Male', CAST(N'2002-03-15T00:00:00.000' AS DateTime), 1.67, 97.8, 36.8, N'105/64', 83, N'Kansas', N'Port Elizabethville', N'Johnson Station', N'port', CAST(N'2024-04-11T00:00:00.000' AS DateTime), CAST(N'2024-05-10T00:00:00.000' AS DateTime), N'Dr. Gray', N'Heart Disease', N'Amoxicillin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (91, N'Ricardo', N'Jodi', N'Sanchez', N'Female', CAST(N'1957-11-01T00:00:00.000' AS DateTime), 1.83, 74.4, 37.2, N'107/86', 63, N'South Dakota', N'Mirandamouth', N'Elizabeth Spurs', N'burgh', CAST(N'2024-02-17T00:00:00.000' AS DateTime), CAST(N'2024-03-08T00:00:00.000' AS DateTime), N'Dr. Williams', N'Arthritis', N'Metformin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (92, N'Joseph', N'John', N'Buchanan', N'Male', CAST(N'1997-11-22T00:00:00.000' AS DateTime), 1.56, 74.6, 36.5, N'136/69', 80, N'Minnesota', N'New Gregory', N'Rodney Union', N'haven', CAST(N'2024-06-29T00:00:00.000' AS DateTime), CAST(N'2024-07-21T00:00:00.000' AS DateTime), N'Dr. Rodriguez', N'Diabetes', N'Ibuprofen')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (93, N'Rebecca', N'Sierra', N'Patton', N'Male', CAST(N'1938-01-13T00:00:00.000' AS DateTime), 1.51, 71.3, 36, N'140/70', 98, N'Alabama', N'Shelbyborough', N'Scott Knoll', N'view', CAST(N'2024-09-03T00:00:00.000' AS DateTime), CAST(N'2024-09-23T00:00:00.000' AS DateTime), N'Dr. Stevens', N'Diabetes', N'Aspirin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (94, N'Sherry', N'Pamela', N'Baldwin', N'Female', CAST(N'1967-12-30T00:00:00.000' AS DateTime), 1.55, 57.4, 36.8, N'120/89', 91, N'Washington', N'Valerietown', N'Perez Prairie', N'bury', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-11T00:00:00.000' AS DateTime), N'Dr. Little', N'Anemia', N'Metformin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (95, N'Emily', N'Linda', N'Garcia', N'Female', CAST(N'1987-01-22T00:00:00.000' AS DateTime), 1.89, 57.9, 37, N'130/75', 65, N'Texas', N'New Savannah', N'Tara Mountain', N'town', CAST(N'2024-05-24T00:00:00.000' AS DateTime), CAST(N'2024-06-21T00:00:00.000' AS DateTime), N'Dr. Gonzalez', N'COVID-19', N'Metformin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (96, N'Blake', N'David', N'Meyer', N'Male', CAST(N'1979-09-22T00:00:00.000' AS DateTime), 1.93, 81.2, 36, N'113/63', 80, N'Michigan', N'Port Ravenberg', N'Wagner Gardens', N'chester', CAST(N'2024-01-08T00:00:00.000' AS DateTime), CAST(N'2024-01-29T00:00:00.000' AS DateTime), N'Dr. Green', N'Heart Disease', N'Lisinopril')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (97, N'Ashley', N'Jeffrey', N'Ramos', N'Female', CAST(N'1989-06-11T00:00:00.000' AS DateTime), 1.69, 75.3, 36.1, N'129/76', 75, N'Idaho', N'Lake Kathryn', N'Smith Freeway', N'berg', CAST(N'2024-01-11T00:00:00.000' AS DateTime), CAST(N'2024-01-23T00:00:00.000' AS DateTime), N'Dr. Cook', N'Hypertension', N'Atorvastatin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (98, N'Katherine', N'Jeremiah', N'Potter', N'Male', CAST(N'1938-11-08T00:00:00.000' AS DateTime), 1.82, 63.9, 36.7, N'91/82', 90, N'Idaho', N'Eugenechester', N'Clark Manors', N'town', CAST(N'2024-04-21T00:00:00.000' AS DateTime), CAST(N'2024-05-08T00:00:00.000' AS DateTime), N'Dr. Simmons', N'COVID-19', N'Metformin')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (99, N'Sharon', N'Dawn', N'Anderson', N'Female', CAST(N'1942-04-30T00:00:00.000' AS DateTime), 1.64, 99.6, 36.3, N'90/77', 94, N'South Carolina', N'South Ericbury', N'Malik Mews', N'stad', CAST(N'2024-06-05T00:00:00.000' AS DateTime), CAST(N'2024-06-18T00:00:00.000' AS DateTime), N'Dr. Smith', N'Asthma', N'Ibuprofen')
INSERT [dbo].[PatientList] ([ID], [First Name], [Middle Name], [Last Name], [Gender], [Date of Birth], [Height (m)], [Weight (kg)], [Temperature (Â°C)], [Blood Pressure], [Heart Rate (bpm)], [County], [Sub County], [Ward], [Village], [Visit Date], [Next Appointment Date], [Doctor], [Illness], [Prescription]) VALUES (100, N'Karl', N'Joshua', N'Perez', N'Female', CAST(N'1945-02-16T00:00:00.000' AS DateTime), 1.82, 99.8, 36.3, N'118/63', 97, N'Indiana', N'West Jeanette', N'Leslie Passage', N'view', CAST(N'2024-08-18T00:00:00.000' AS DateTime), CAST(N'2024-09-02T00:00:00.000' AS DateTime), N'Dr. Solis', N'Heart Disease', N'Insulin')
SET IDENTITY_INSERT [dbo].[PatientList] OFF
GO
USE [master]
GO
ALTER DATABASE [HIS] SET  READ_WRITE 
GO
