USE [master]
GO
/****** Object:  Database [Attendance_Web_Project]    Script Date: 12/10/2021 1:15:48 AM ******/
CREATE DATABASE [Attendance_Web_Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Attendance_Web_Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.HIEU\MSSQL\DATA\Attendance_Web_Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Attendance_Web_Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.HIEU\MSSQL\DATA\Attendance_Web_Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Attendance_Web_Project] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Attendance_Web_Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Attendance_Web_Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Attendance_Web_Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Attendance_Web_Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Attendance_Web_Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Attendance_Web_Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET RECOVERY FULL 
GO
ALTER DATABASE [Attendance_Web_Project] SET  MULTI_USER 
GO
ALTER DATABASE [Attendance_Web_Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Attendance_Web_Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Attendance_Web_Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Attendance_Web_Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Attendance_Web_Project] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Attendance_Web_Project', N'ON'
GO
ALTER DATABASE [Attendance_Web_Project] SET QUERY_STORE = OFF
GO
USE [Attendance_Web_Project]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/10/2021 1:15:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[displayname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 12/10/2021 1:15:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[aid] [int] NOT NULL,
	[sid] [int] NOT NULL,
	[atd] [date] NOT NULL,
	[present] [bit] NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/10/2021 1:15:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[sid] [int] NOT NULL,
	[image] [varchar](100) NOT NULL,
	[fname] [varchar](50) NULL,
	[lname] [varchar](50) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
	[cid] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'haku1404', N'hieu1404', N'Dahlia')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'hdtl2503', N'long2503', N'Dragon')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'touru2901', N'dat2901', N'Hanatouru')
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (1, N'Image/Attack on Titan/Erwin Smith.jpg', N'Erwin', N'Smith', 1, CAST(N'2000-01-01' AS Date), 1)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (2, N'Image/Attack on Titan/Annie Leoheart.jpg', N'Annie', N'Leohart', 0, CAST(N'2000-01-02' AS Date), 1)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (3, N'Image/Attack on Titan/Armin Arlert.jpg', N'Armin', N'Arlert', 1, CAST(N'2000-01-03' AS Date), 1)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (4, N'Image/Attack on Titan/Bertholdt Hoover.jpg', N'Berthodldt', N'Hoover', 1, CAST(N'2000-01-04' AS Date), 1)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (5, N'Image/Attack on Titan/Conny Springer.jpg', N'Coony', N'Springer', 1, CAST(N'2000-01-05' AS Date), 1)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (6, N'Image/Attack on Titan/Hange Zoe.jpg', N'Hange', N'Zoe', 0, CAST(N'2000-01-06' AS Date), 1)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (7, N'Image/Attack on Titan/Jean Kirschen.jpg', N'Jean', N'Kirschen', 1, CAST(N'2000-01-07' AS Date), 1)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (8, N'Image/Attack on Titan/Levi Ackerman.jpg', N'Levi', N'Ackerman', 1, CAST(N'2000-01-08' AS Date), 1)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (9, N'Image/Attack on Titan/Mikasa Ackerman.jpg', N'Mikasa', N'Ackerman', 0, CAST(N'2000-01-09' AS Date), 1)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (10, N'Image/Attack on Titan/Pieck Finger.jpg', N'Pieck', N'Finger', 0, CAST(N'2000-01-10' AS Date), 1)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (11, N'Image/Attack on Titan/Reiner Braun.jpg', N'Reiner', N'Braun', 1, CAST(N'2000-01-11' AS Date), 1)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (12, N'Image/Attack on Titan/Sasha Braus.jpg', N'Sasha', N'Braus', 0, CAST(N'2000-01-12' AS Date), 1)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (13, N'Image/Doraemon/Dekisugi.jpg', NULL, N'Dekisugi', 1, CAST(N'2000-01-13' AS Date), 2)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (14, N'Image/Doraemon/Doraemon.jpg', NULL, N'Doraemon', 1, CAST(N'2000-01-14' AS Date), 2)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (15, N'Image/Doraemon/Dorami.jpg', NULL, N'Doraemi', 1, CAST(N'2000-01-15' AS Date), 2)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (16, N'Image/Doraemon/Honekawa Suneo.jpg', N'Honekawa', N'Suneo', 1, CAST(N'2000-01-16' AS Date), 2)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (17, N'Image/Doraemon/Jaiko Goda.jpg', N'Jaiko', N'Goda', 0, CAST(N'2002-01-17' AS Date), 2)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (18, N'Image/Doraemon/Minamoto Shizuka.jpg', N'Minamoto', N'Shizuka', 0, CAST(N'2000-01-18' AS Date), 2)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (19, N'Image/Doraemon/Nobi Nobisuke.jpg', N'Nobi', N'Nobisuke', 1, CAST(N'1975-01-19' AS Date), 2)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (20, N'Image/Doraemon/Nobi Nobita.jpg', N'Nobi', N'Nobita', 1, CAST(N'2000-01-20' AS Date), 2)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (21, N'Image/Doraemon/Nobi Tamako.jpg', N'Nobi', N'Tamako', 0, CAST(N'1977-01-21' AS Date), 2)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (22, N'Image/Doraemon/Takeshi Goda.jpg', N'Takeshi', N'Goda', 1, CAST(N'2000-01-22' AS Date), 2)
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
USE [master]
GO
ALTER DATABASE [Attendance_Web_Project] SET  READ_WRITE 
GO
