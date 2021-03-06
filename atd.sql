USE [master]
GO
/****** Object:  Database [Attendance_Web_Project]    Script Date: 12/10/2021 12:16:56 PM ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 12/10/2021 12:16:56 PM ******/
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
/****** Object:  Table [dbo].[Attendance]    Script Date: 12/10/2021 12:16:56 PM ******/
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
/****** Object:  Table [dbo].[Class]    Script Date: 12/10/2021 12:16:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[cid] [int] NOT NULL,
	[cname] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 12/10/2021 12:16:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[rid] [int] NOT NULL,
	[title] [varchar](150) NOT NULL,
	[username] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/10/2021 12:16:56 PM ******/
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
INSERT [dbo].[Class] ([cid], [cname]) VALUES (1, N'Class1')
INSERT [dbo].[Class] ([cid], [cname]) VALUES (2, N'Class2')
INSERT [dbo].[Class] ([cid], [cname]) VALUES (3, N'Class3')
INSERT [dbo].[Class] ([cid], [cname]) VALUES (4, N'Class4')
INSERT [dbo].[Class] ([cid], [cname]) VALUES (5, N'Class5')
INSERT [dbo].[Request] ([rid], [title], [username]) VALUES (1, N'Class1', N'haku1404')
INSERT [dbo].[Request] ([rid], [title], [username]) VALUES (2, N'Class2', N'haku1404')
INSERT [dbo].[Request] ([rid], [title], [username]) VALUES (3, N'Class3', N'haku1404')
INSERT [dbo].[Request] ([rid], [title], [username]) VALUES (4, N'Class4', N'touru2901')
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
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (23, N'Image/Kimetsu no Yaiba/Agatsuma Zenitsu.jpg', N'Agatsuma', N'Zenitsu', 1, CAST(N'2000-01-23' AS Date), 3)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (24, N'Image/Kimetsu no Yaiba/Giyu Tomioka.jpg', N'Giyu', N'Tomioka', 1, CAST(N'2000-01-24' AS Date), 3)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (25, N'Image/Kimetsu no Yaiba/Gyomei Himejima.jpg', N'Gyomei', N'Himejima', 1, CAST(N'2000-01-25' AS Date), 3)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (26, N'Image/Kimetsu no Yaiba/Hashibira Inosuke.jpg', N'Hashibira', N'Inosuke', 1, CAST(N'2000-01-26' AS Date), 3)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (27, N'Image/Kimetsu no Yaiba/Kagaya Ubuyashiki.jpg', N'Kagaya', N'Ubuyashiki', 1, CAST(N'2000-01-27' AS Date), 3)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (28, N'Image/Kimetsu no Yaiba/Kamado Nezuko.jpg', N'Kamado', N'Nezuko', 0, CAST(N'2000-01-28' AS Date), 3)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (29, N'Image/Kimetsu no Yaiba/Kamado Tanjiro.jpg', N'Kamado', N'Tanjiro', 1, CAST(N'2000-01-29' AS Date), 3)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (30, N'Image/Kimetsu no Yaiba/Kibutsuji Muzan.jpg', N'Kibutsuji', N'Muzan', 1, CAST(N'2000-01-30' AS Date), 3)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (31, N'Image/Kimetsu no Yaiba/Kochou Shinobu.jpg', N'Kochou', N'Shinobu', 0, CAST(N'2000-01-31' AS Date), 3)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (32, N'Image/Kimetsu no Yaiba/Kyojuro Rengoku.jpg', N'Kyojuro', N'Rengoku', 1, CAST(N'2000-02-01' AS Date), 3)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (33, N'Image/Kimetsu no Yaiba/Mitsuri Kanroji.jpg', N'Mitsuri', N'Kanroji', 0, CAST(N'2000-02-02' AS Date), 3)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (34, N'Image/Kimetsu no Yaiba/Muichiro Tokito.jpg', N'Muichiro', N'Tokito', 1, CAST(N'2000-02-03' AS Date), 3)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (35, N'Image/Kimetsu no Yaiba/Obanai Iguro.jpg', N'Obanai', N'Iguro', 1, CAST(N'2000-02-04' AS Date), 3)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (36, N'Image/Kimetsu no Yaiba/Sanemi Shinazugawa.jpg', N'Sanemi', N'Shinazugawa', 1, CAST(N'2000-02-05' AS Date), 3)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (37, N'Image/Kimetsu no Yaiba/Tengen Uzui.jpg', N'Tengen', N'Uzui', 1, CAST(N'2000-02-06' AS Date), 3)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (38, N'Image/Naruto/Aburame Shino.jpg', N'Aburame', N'Shino', 1, CAST(N'2000-02-07' AS Date), 4)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (39, N'Image/Naruto/Akamaru.jpg', NULL, N'Akamaru', 1, CAST(N'2005-02-08' AS Date), 4)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (40, N'Image/Naruto/Akimichi Choji.jpg', N'Akimichi', N'Choji', 1, CAST(N'2000-02-09' AS Date), 4)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (41, N'Image/Naruto/Gaara.jpg', NULL, N'Gaara', 1, CAST(N'2000-02-10' AS Date), 4)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (42, N'Image/Naruto/Haruno Sakura.jpg', N'Haruno', N'Sakura', 0, CAST(N'2000-02-11' AS Date), 4)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (43, N'Image/Naruto/Hyuga Hanabi.jpg', N'Hanabi', N'Hyuga', 0, CAST(N'2000-02-12' AS Date), 4)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (44, N'Image/Naruto/Hyuga Hinata.jpg', N'Hyuga', N'Hinata', 0, CAST(N'2000-02-13' AS Date), 4)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (45, N'Image/Naruto/Hyuga Neji.jpg', N'Hyuga', N'Neji', 1, CAST(N'2000-02-14' AS Date), 4)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (46, N'Image/Naruto/Inuzuka Kiba.jpg', N'Inuzuka', N'Kiba', 1, CAST(N'2000-02-15' AS Date), 4)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (47, N'Image/Naruto/Nara Shikamaru.jpg', N'Nara', N'Shikamaru', 1, CAST(N'2000-02-16' AS Date), 4)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (48, N'Image/Naruto/Rock Lee.jpg', N'Rock', N'Lee', 1, CAST(N'2000-02-17' AS Date), 4)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (49, N'Image/Naruto/Sai.jpg', NULL, N'Sai', 1, CAST(N'2000-02-18' AS Date), 4)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (50, N'Image/Naruto/Uchiha Sasuke.jpg', N'Uchiha', N'Sasuke', 1, CAST(N'2000-02-19' AS Date), 4)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (51, N'Image/Naruto/Uzumaki Naruto.jpg', N'Uzumaki', N'Naruto', 1, CAST(N'2000-02-20' AS Date), 4)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (52, N'Image/Naruto/Yamanaka Ino.jpg', N'Yamanaka', N'Ino', 0, CAST(N'2000-02-21' AS Date), 4)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (53, N'Image/One Piece/Ace.jpg', NULL, N'Ace', 1, CAST(N'2000-02-22' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (54, N'Image/One Piece/Boa Hancook.jpg', N'Boa', N'Hancook', 0, CAST(N'2000-02-23' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (55, N'Image/One Piece/Brook.jpg', NULL, N'Brook', 1, CAST(N'1940-02-24' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (56, N'Image/One Piece/Chopper.jpg', NULL, N'Chopper', 1, CAST(N'2000-02-25' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (57, N'Image/One Piece/Franky.jpg', NULL, N'Franky', 1, CAST(N'2000-02-26' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (58, N'Image/One Piece/Jinbei.jpg', NULL, N'Jinbei', 1, CAST(N'2000-02-27' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (59, N'Image/One Piece/Kozuki Hyori.jpg', N'Kozuki', N'Hyori', 0, CAST(N'2000-02-28' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (60, N'Image/One Piece/Luffy.jpg', N'Monkey.D', N'Luffy', 1, CAST(N'2000-03-01' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (61, N'Image/One Piece/Marco.jpg', NULL, N'Marco', 1, CAST(N'2000-03-02' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (62, N'Image/One Piece/Monkey D Dragon.jpg', N'Monkey.D', N'Dragon', 1, CAST(N'1970-03-03' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (63, N'Image/One Piece/Monkey D Garp.jpg', N'Monkey.D', N'Garp', 1, CAST(N'1945-03-04' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (64, N'Image/One Piece/Nami.jpg', NULL, N'Nami', 0, CAST(N'2000-03-05' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (65, N'Image/One Piece/Robin.jpg', N'Nico', N'Robin', 0, CAST(N'2000-03-06' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (66, N'Image/One Piece/Sabo.jpg', NULL, N'Sabo', 1, CAST(N'2000-03-06' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (67, N'Image/One Piece/Sanji.jpg', NULL, N'Sanji', 1, CAST(N'2000-03-07' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (68, N'Image/One Piece/Shank.jpg', NULL, N'Shanks', 1, CAST(N'2000-03-08' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (69, N'Image/One Piece/Tragalfar Law.jpg', N'Tragalfar', N'Law', 1, CAST(N'2000-03-09' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (70, N'Image/One Piece/Usopp.jpg', NULL, N'Usopp', 1, CAST(N'2000-03-10' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (71, N'Image/One Piece/Yamato.jpg', NULL, N'Yamato', 0, CAST(N'2000-03-11' AS Date), 5)
INSERT [dbo].[Student] ([sid], [image], [fname], [lname], [gender], [dob], [cid]) VALUES (72, N'Image/One Piece/Zoro.jpg', NULL, N'Zoro', 1, CAST(N'2000-03-12' AS Date), 5)
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Account]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Class] FOREIGN KEY([cid])
REFERENCES [dbo].[Class] ([cid])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Class]
GO
USE [master]
GO
ALTER DATABASE [Attendance_Web_Project] SET  READ_WRITE 
GO
