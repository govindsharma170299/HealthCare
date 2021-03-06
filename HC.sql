USE [master]
GO
/****** Object:  Database [HealthCareDB]    Script Date: 12 May, Wed 09:48:40 ******/
CREATE DATABASE [HealthCareDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HealthCareDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\HealthCareDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HealthCareDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\HealthCareDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HealthCareDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HealthCareDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HealthCareDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HealthCareDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HealthCareDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HealthCareDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HealthCareDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HealthCareDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HealthCareDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HealthCareDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HealthCareDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HealthCareDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HealthCareDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HealthCareDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HealthCareDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HealthCareDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HealthCareDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HealthCareDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HealthCareDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HealthCareDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HealthCareDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HealthCareDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HealthCareDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HealthCareDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HealthCareDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HealthCareDB] SET  MULTI_USER 
GO
ALTER DATABASE [HealthCareDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HealthCareDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HealthCareDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HealthCareDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HealthCareDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [HealthCareDB]
GO
/****** Object:  Table [dbo].[Ambulance]    Script Date: 12 May, Wed 09:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ambulance](
	[SerialNo] [int] IDENTITY(1,1) NOT NULL,
	[PatientName] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[AlterMobile] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[ZipCode] [int] NULL,
	[ABDT] [varchar](50) NULL,
 CONSTRAINT [PK_Ambulance] PRIMARY KEY CLUSTERED 
(
	[SerialNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 12 May, Wed 09:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Answer](
	[AnsID] [int] IDENTITY(1,1) NOT NULL,
	[EmailID] [varchar](50) NOT NULL,
	[Answer] [varchar](max) NOT NULL,
	[QuesID] [int] NOT NULL,
	[ADT] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[AnsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 12 May, Wed 09:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Appointment](
	[SerialNo] [int] IDENTITY(1,1) NOT NULL,
	[PatientName] [varchar](50) NOT NULL,
	[FatherName] [varchar](50) NOT NULL,
	[EmailID] [varchar](50) NOT NULL,
	[Mobile] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[PatientType] [varchar](10) NOT NULL,
	[Department] [varchar](50) NOT NULL,
	[BloodGroup] [varchar](50) NOT NULL,
	[ReportDesc] [varchar](max) NULL,
	[ReportFile] [varchar](50) NULL,
	[ADT] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[SerialNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 12 May, Wed 09:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cities](
	[CID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 12 May, Wed 09:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactUs](
	[SerialNo] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[EmailID] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Msg] [varchar](50) NULL,
	[EDT] [varchar](50) NULL,
 CONSTRAINT [PK_ContactUs] PRIMARY KEY CLUSTERED 
(
	[SerialNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[District]    Script Date: 12 May, Wed 09:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[District](
	[DistID] [int] IDENTITY(1,1) NOT NULL,
	[DistName] [varchar](50) NULL,
	[CID] [int] NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[DistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ENTDepartment]    Script Date: 12 May, Wed 09:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ENTDepartment](
	[SerialNo] [int] IDENTITY(1,1) NOT NULL,
	[PatientName] [varchar](50) NOT NULL,
	[FatherName] [varchar](50) NOT NULL,
	[Mobile] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Department] [varchar](50) NOT NULL,
	[PatientType] [varchar](50) NOT NULL,
	[BloodGroup] [varchar](50) NOT NULL,
	[EADT] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ENTDepartment] PRIMARY KEY CLUSTERED 
(
	[SerialNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ForgetPassword]    Script Date: 12 May, Wed 09:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ForgetPassword](
	[Id] [varchar](50) NOT NULL,
	[UserID] [int] NULL,
	[RDT] [datetime] NULL,
 CONSTRAINT [PK_ForgetPassword] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GeneralDepartment]    Script Date: 12 May, Wed 09:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GeneralDepartment](
	[SerialNo] [int] IDENTITY(1,1) NOT NULL,
	[PatientName] [varchar](50) NOT NULL,
	[FatherName] [varchar](50) NOT NULL,
	[Mobile] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Department] [varchar](50) NOT NULL,
	[PatientType] [varchar](50) NOT NULL,
	[BloodGroup] [varchar](50) NOT NULL,
	[GADT] [varchar](50) NOT NULL,
 CONSTRAINT [PK_GeneralDepartment] PRIMARY KEY CLUSTERED 
(
	[SerialNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HeartDepartment]    Script Date: 12 May, Wed 09:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HeartDepartment](
	[SerialNo] [int] IDENTITY(1,1) NOT NULL,
	[PatientName] [varchar](50) NOT NULL,
	[FatherName] [varchar](50) NOT NULL,
	[Mobile] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Department] [varchar](50) NOT NULL,
	[PatientType] [varchar](50) NOT NULL,
	[BloodGroup] [varchar](50) NOT NULL,
	[HADT] [varchar](50) NOT NULL,
 CONSTRAINT [PK_HeartDepartment] PRIMARY KEY CLUSTERED 
(
	[SerialNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HosRegistration]    Script Date: 12 May, Wed 09:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HosRegistration](
	[SerialNo] [int] IDENTITY(1,1) NOT NULL,
	[HosName] [varchar](100) NOT NULL,
	[HosContact] [varchar](10) NOT NULL,
	[HosAddress] [varchar](200) NOT NULL,
	[HosState] [varchar](20) NOT NULL,
	[HosCity] [varchar](50) NOT NULL,
	[HosEmail] [varchar](25) NOT NULL,
	[HosPassword] [varchar](25) NOT NULL,
	[HosAval1] [varchar](20) NOT NULL,
	[HosAval2] [varchar](20) NOT NULL,
	[HosAval3] [varchar](20) NOT NULL,
	[HosAval4] [varchar](20) NOT NULL,
	[HosAval5] [varchar](20) NOT NULL,
	[HosAval6] [varchar](20) NOT NULL,
	[HosOxygen] [int] NOT NULL,
	[HosPlasma] [int] NOT NULL,
	[HosVaccine] [int] NOT NULL,
	[RDT] [varchar](50) NULL,
 CONSTRAINT [PK_Hos_Registartion] PRIMARY KEY CLUSTERED 
(
	[HosName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 12 May, Wed 09:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[SerialNo] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[UType] [varchar](20) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[SerialNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrthoDepartment]    Script Date: 12 May, Wed 09:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrthoDepartment](
	[SerialNo] [int] IDENTITY(1,1) NOT NULL,
	[PatientName] [varchar](50) NOT NULL,
	[FatherName] [varchar](50) NOT NULL,
	[Mobile] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Department] [varchar](50) NOT NULL,
	[PatientType] [varchar](50) NOT NULL,
	[BloodGroup] [varchar](50) NOT NULL,
	[OADT] [varchar](50) NOT NULL,
 CONSTRAINT [PK_OrthoDepartment] PRIMARY KEY CLUSTERED 
(
	[SerialNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Question]    Script Date: 12 May, Wed 09:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Question](
	[QuesID] [int] IDENTITY(1,1) NOT NULL,
	[EmailID] [varchar](50) NOT NULL,
	[Question] [varchar](max) NOT NULL,
	[QDT] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[QuesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 12 May, Wed 09:48:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registration](
	[SerialNo] [int] IDENTITY(1,1) NOT NULL,
	[PatientName] [varchar](50) NOT NULL,
	[Mobile] [varchar](20) NOT NULL,
	[EmailID] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[Age] [varchar](5) NOT NULL,
	[BloodGroup] [varchar](5) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[ProfilePic] [varchar](50) NOT NULL,
	[Status] [varchar](10) NOT NULL,
	[RDT] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[EmailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Question_Answer] FOREIGN KEY([QuesID])
REFERENCES [dbo].[Question] ([QuesID])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Question_Answer]
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District_Cities] FOREIGN KEY([CID])
REFERENCES [dbo].[Cities] ([CID])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District_Cities]
GO
ALTER TABLE [dbo].[ForgetPassword]  WITH CHECK ADD  CONSTRAINT [FK_ForgetPassword_Login] FOREIGN KEY([UserID])
REFERENCES [dbo].[Login] ([SerialNo])
GO
ALTER TABLE [dbo].[ForgetPassword] CHECK CONSTRAINT [FK_ForgetPassword_Login]
GO
USE [master]
GO
ALTER DATABASE [HealthCareDB] SET  READ_WRITE 
GO
