USE [master]
GO
/****** Object:  Database [LessonApp]    Script Date: 21.03.2021 16:20:17 ******/
CREATE DATABASE [LessonApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LessonApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LessonApp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LessonApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LessonApp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LessonApp] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LessonApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LessonApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LessonApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LessonApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LessonApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LessonApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [LessonApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LessonApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LessonApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LessonApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LessonApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LessonApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LessonApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LessonApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LessonApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LessonApp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LessonApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LessonApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LessonApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LessonApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LessonApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LessonApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LessonApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LessonApp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LessonApp] SET  MULTI_USER 
GO
ALTER DATABASE [LessonApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LessonApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LessonApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LessonApp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LessonApp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LessonApp] SET QUERY_STORE = OFF
GO
USE [LessonApp]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 21.03.2021 16:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[idGroup] [int] IDENTITY(1,1) NOT NULL,
	[groupName] [nvarchar](50) NOT NULL,
	[curator] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[idGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Progress]    Script Date: 21.03.2021 16:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Progress](
	[idProgress] [int] IDENTITY(1,1) NOT NULL,
	[idStud] [int] NOT NULL,
	[lessCheck] [int] NOT NULL,
 CONSTRAINT [PK_Progress] PRIMARY KEY CLUSTERED 
(
	[idProgress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 21.03.2021 16:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[idStud] [int] IDENTITY(1,1) NOT NULL,
	[fName] [nvarchar](50) NOT NULL,
	[lName] [nvarchar](50) NOT NULL,
	[dob] [datetime2](7) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[group] [int] NOT NULL,
	[role] [int] NOT NULL,
	[available] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[idStud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 21.03.2021 16:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[idTeachers] [int] IDENTITY(1,1) NOT NULL,
	[fName] [nvarchar](50) NOT NULL,
	[lName] [nvarchar](50) NOT NULL,
	[dob] [datetime2](7) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[role] [int] NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[idTeachers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uRole]    Script Date: 21.03.2021 16:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uRole](
	[idRole] [int] IDENTITY(1,1) NOT NULL,
	[nameRole] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([idGroup], [groupName], [curator]) VALUES (1, N'1 АСС11-3', 2)
INSERT [dbo].[Group] ([idGroup], [groupName], [curator]) VALUES (2, N'1 АСС9-5ВБ', 1)
INSERT [dbo].[Group] ([idGroup], [groupName], [curator]) VALUES (3, N'1 ИСП11-14', 3)
INSERT [dbo].[Group] ([idGroup], [groupName], [curator]) VALUES (4, N'1 ИСП11-15', 4)
INSERT [dbo].[Group] ([idGroup], [groupName], [curator]) VALUES (5, N'1 ИСП11-16', 6)
INSERT [dbo].[Group] ([idGroup], [groupName], [curator]) VALUES (6, N'1 ИСП11-17', 5)
INSERT [dbo].[Group] ([idGroup], [groupName], [curator]) VALUES (7, N'1 ИСП9-15ВБ', 7)
INSERT [dbo].[Group] ([idGroup], [groupName], [curator]) VALUES (8, N'1 ИСП9-16ВБ', 10)
INSERT [dbo].[Group] ([idGroup], [groupName], [curator]) VALUES (9, N'1 ОСАТ9-6', 9)
INSERT [dbo].[Group] ([idGroup], [groupName], [curator]) VALUES (10, N'1 ОСАТ9-7ВБ', 8)
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
SET IDENTITY_INSERT [dbo].[Progress] ON 

INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (1, 1, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (2, 2, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (3, 3, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (4, 4, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (5, 5, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (6, 6, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (7, 7, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (8, 8, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (9, 9, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (10, 10, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (11, 11, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (12, 12, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (13, 13, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (14, 14, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (15, 15, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (16, 16, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (17, 17, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (18, 18, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (19, 19, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (20, 20, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (21, 21, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (22, 22, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (23, 23, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (24, 24, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (25, 25, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (26, 26, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (27, 27, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (28, 28, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (29, 29, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (30, 30, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (31, 31, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (32, 32, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (33, 33, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (34, 34, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (35, 35, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (36, 36, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (37, 37, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (38, 38, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (39, 39, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (40, 40, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (41, 41, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (42, 42, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (43, 43, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (44, 44, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (45, 45, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (46, 46, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (47, 47, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (48, 48, 0)
INSERT [dbo].[Progress] ([idProgress], [idStud], [lessCheck]) VALUES (49, 49, 0)
SET IDENTITY_INSERT [dbo].[Progress] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (1, N'Изабелла', N'Гершельмана', CAST(N'1993-01-12T00:00:00.0000000' AS DateTime2), N'student', N'123456', 2, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (2, N'Изольда', N'Гребнева', CAST(N'1993-02-15T00:00:00.0000000' AS DateTime2), N'tENOtAcrivi', N'3jcmfhR', 3, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (3, N'Анастасия', N'Флёрова', CAST(N'1993-02-21T00:00:00.0000000' AS DateTime2), N'nOrEAMBiLIN', N'p5kRqa', 1, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (4, N'Артемий', N'Онегин', CAST(N'1993-02-26T00:00:00.0000000' AS DateTime2), N'UrMItypoSat', N'hiyo9G', 3, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (5, N'Аркадий', N'Гордеев', CAST(N'1993-03-04T00:00:00.0000000' AS DateTime2), N'OSIoNialoEl', N'Caxpumodxs2i', 2, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (6, N'Ярослава', N'Ханинова', CAST(N'1993-06-15T00:00:00.0000000' AS DateTime2), N'tENOtAcrivi', N'5voFlo', 4, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (7, N'Фадей', N'Кабальнов', CAST(N'1993-07-29T00:00:00.0000000' AS DateTime2), N'nOrEAMBiLIN', N'qYrgnbsphqr5', 5, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (8, N'Агап', N'Васенин', CAST(N'1993-08-08T00:00:00.0000000' AS DateTime2), N'UrMItypoSat', N'xlHybfxo8fr', 6, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (9, N'Евдоким', N'Яковлев', CAST(N'1993-09-19T00:00:00.0000000' AS DateTime2), N'OSIoNialoEl', N'zcomreSpo6', 8, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (10, N'Станислава', N'Суботина', CAST(N'1993-10-08T00:00:00.0000000' AS DateTime2), N'tENOtAcrivi', N'ibpbbi5waBp', 7, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (11, N'Бронислава', N'Путинова', CAST(N'1994-04-10T00:00:00.0000000' AS DateTime2), N'nOrEAMBiLIN', N'gmh1ztsTpe', 9, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (12, N'Аким', N'Мальцев', CAST(N'1994-05-18T00:00:00.0000000' AS DateTime2), N'UrMItypoSat', N'lwczot2mntKy', 10, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (13, N'Поликарп', N'Царско', CAST(N'1994-07-13T00:00:00.0000000' AS DateTime2), N'OSIoNialoEl', N'Vwnwcsl7', 2, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (14, N'Влада', N'Нугаева', CAST(N'1994-09-19T00:00:00.0000000' AS DateTime2), N'tENOtAcrivi', N'pdn7Uey', 3, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (15, N'Элина', N'Эссена', CAST(N'1994-09-23T00:00:00.0000000' AS DateTime2), N'nOrEAMBiLIN', N'i3pluqIh', 1, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (16, N'Афина', N'Панкина', CAST(N'1994-11-08T00:00:00.0000000' AS DateTime2), N'UrMItypoSat', N'ppbguubDovr1', 3, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (17, N'Екатерина', N'Касатый', CAST(N'1994-12-06T00:00:00.0000000' AS DateTime2), N'OSIoNialoEl', N'Qk6zgyrezd', 2, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (18, N'Вера', N'Дмитриева', CAST(N'1995-03-07T00:00:00.0000000' AS DateTime2), N'tENOtAcrivi', N'm5mfjfiD', 4, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (19, N'Денис', N'Максимов', CAST(N'1995-08-22T00:00:00.0000000' AS DateTime2), N'nOrEAMBiLIN', N'll4hiF', 5, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (20, N'Фёдор', N'Стиплин', CAST(N'1995-09-08T00:00:00.0000000' AS DateTime2), N'UrMItypoSat', N'qkrPvca8ji', 6, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (21, N'Элеонора', N'Приходько', CAST(N'1995-12-16T00:00:00.0000000' AS DateTime2), N'OSIoNialoEl', N'cczzllZc7aj', 8, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (22, N'Игнатий', N'Шурупин', CAST(N'1996-01-11T00:00:00.0000000' AS DateTime2), N'tENOtAcrivi', N've8Braotuf', 7, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (23, N'Григорий', N'Трошкин', CAST(N'1996-03-15T00:00:00.0000000' AS DateTime2), N'nOrEAMBiLIN', N'x5sAfb', 9, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (24, N'Карина', N'Рудникова', CAST(N'1996-04-06T00:00:00.0000000' AS DateTime2), N'UrMItypoSat', N'khg6aeXv', 10, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (25, N'Мартин', N'Тихоньков', CAST(N'1996-04-07T00:00:00.0000000' AS DateTime2), N'OSIoNialoEl', N'pmhYp8s', 2, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (26, N'Дарина', N'Веретёнова', CAST(N'1996-04-08T00:00:00.0000000' AS DateTime2), N'tENOtAcrivi', N'lnyqqaD1', 3, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (27, N'Остап', N'Типалов', CAST(N'1996-04-19T00:00:00.0000000' AS DateTime2), N'nOrEAMBiLIN', N'6wMrdmbpyc', 1, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (28, N'Дементий', N'Примаков', CAST(N'1996-09-19T00:00:00.0000000' AS DateTime2), N'UrMItypoSat', N'Jv6rzaj', 3, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (29, N'Лаврентий', N'Енотов', CAST(N'1996-10-13T00:00:00.0000000' AS DateTime2), N'OSIoNialoEl', N'pqs5wjzYo', 2, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (30, N'Василий', N'Шатохин', CAST(N'1997-05-25T00:00:00.0000000' AS DateTime2), N'tENOtAcrivi', N'vz2Pel', 4, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (31, N'Аида', N'Бессонова', CAST(N'1997-05-29T00:00:00.0000000' AS DateTime2), N'nOrEAMBiLIN', N'8qdtvnpeXs', 5, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (32, N'Ариадна', N'Фастера', CAST(N'1997-09-08T00:00:00.0000000' AS DateTime2), N'UrMItypoSat', N'7Qngra', 6, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (33, N'Агния', N'Кузнецова', CAST(N'1997-10-01T00:00:00.0000000' AS DateTime2), N'OSIoNialoEl', N'yxdwpFcjvxu0', 8, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (34, N'Эвелина', N'Скороходова', CAST(N'1997-10-09T00:00:00.0000000' AS DateTime2), N'tENOtAcrivi', N'sjozyqocN0bj', 7, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (35, N'Борис', N'Стрелков', CAST(N'1997-11-18T00:00:00.0000000' AS DateTime2), N'nOrEAMBiLIN', N'siRzf8j', 9, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (36, N'Аделя', N'Чайка', CAST(N'1997-12-20T00:00:00.0000000' AS DateTime2), N'UrMItypoSat', N'rMozkmi9', 10, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (37, N'Алёна', N'Мышкина', CAST(N'1998-01-25T00:00:00.0000000' AS DateTime2), N'OSIoNialoEl', N'gH8kniba', 2, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (38, N'Белла', N'Салькова', CAST(N'1998-03-04T00:00:00.0000000' AS DateTime2), N'tENOtAcrivi', N'glLu5p', 3, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (39, N'Илья', N'Огарков', CAST(N'1998-06-01T00:00:00.0000000' AS DateTime2), N'nOrEAMBiLIN', N'7jRiefo', 1, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (40, N'Алия', N'Руднева', CAST(N'1998-09-02T00:00:00.0000000' AS DateTime2), N'UrMItypoSat', N'btq6tqA', 3, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (41, N'Полина', N'Кадцына', CAST(N'1998-10-11T00:00:00.0000000' AS DateTime2), N'OSIoNialoEl', N'w9feQoaifmk', 2, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (42, N'Парфен', N'Гришкин', CAST(N'1998-10-12T00:00:00.0000000' AS DateTime2), N'tENOtAcrivi', N'Sqmqwd7lnev', 4, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (43, N'Али', N'Алешин', CAST(N'1999-05-03T00:00:00.0000000' AS DateTime2), N'nOrEAMBiLIN', N'Sgvujssn1wg', 5, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (44, N'Иннокентий', N'Морошкин', CAST(N'1999-05-18T00:00:00.0000000' AS DateTime2), N'UrMItypoSat', N'a8sgcZw', 6, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (45, N'Вячеслав', N'Чекмарёв', CAST(N'1999-05-23T00:00:00.0000000' AS DateTime2), N'OSIoNialoEl', N'est1Eoopapc', 8, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (46, N'Аделина', N'Дорохова', CAST(N'1999-07-04T00:00:00.0000000' AS DateTime2), N'tENOtAcrivi', N'Dqdtfi1xbrue', 7, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (47, N'Лилия', N'Табернакулова', CAST(N'1999-08-28T00:00:00.0000000' AS DateTime2), N'nOrEAMBiLIN', N'ekkivhmE3je', 9, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (48, N'Виктория', N'Антонович', CAST(N'1999-09-02T00:00:00.0000000' AS DateTime2), N'UrMItypoSat', N'po8yxEyp', 10, 2, 1)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [login], [password], [group], [role], [available]) VALUES (49, N'Прокл', N'Недельский', CAST(N'1999-10-19T00:00:00.0000000' AS DateTime2), N'OSIoNialoEl', N'mdzf6heFjct', 3, 2, 1)
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password], [role]) VALUES (1, N'Лавр', N'Бобр', CAST(N'1971-02-12T00:00:00.0000000' AS DateTime2), N'prepod', N'123456', 1)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password], [role]) VALUES (2, N'Анастасия', N'Белорусова', CAST(N'1974-01-30T00:00:00.0000000' AS DateTime2), N'DsmtmCT', N'7sbdnykarMjh', 1)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password], [role]) VALUES (3, N'Игорь', N'Левтев', CAST(N'1976-08-17T00:00:00.0000000' AS DateTime2), N'tPyvcRA', N'wofbgCr2w', 1)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password], [role]) VALUES (4, N'Милослава', N'Андрюшина', CAST(N'1976-09-07T00:00:00.0000000' AS DateTime2), N'FxBaDsa', N'9qGezsyv', 1)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password], [role]) VALUES (5, N'Герасим', N'Оськин', CAST(N'1978-10-17T00:00:00.0000000' AS DateTime2), N'hDGHam', N'0Zqslsscg', 1)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password], [role]) VALUES (6, N'Злата', N'Яблонова', CAST(N'1982-07-19T00:00:00.0000000' AS DateTime2), N'aUhTbgsV', N'z3pXayvvz', 1)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password], [role]) VALUES (7, N'Яна', N'Рябкина', CAST(N'1987-05-16T00:00:00.0000000' AS DateTime2), N'wirQsAL', N'xt2hxylcWnx', 1)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password], [role]) VALUES (8, N'Антон', N'Анисимов', CAST(N'1987-11-07T00:00:00.0000000' AS DateTime2), N'fxIeAbX', N'lktr1Scuxuc', 1)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password], [role]) VALUES (9, N'Дина', N'Игнатьева', CAST(N'1990-09-29T00:00:00.0000000' AS DateTime2), N'BjNphI', N'mnRdhxtsux0f', 1)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password], [role]) VALUES (10, N'Игнатий', N'Низовский', CAST(N'1991-10-18T00:00:00.0000000' AS DateTime2), N'wiTWnZ', N'iEluexd4', 1)
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET IDENTITY_INSERT [dbo].[uRole] ON 

INSERT [dbo].[uRole] ([idRole], [nameRole]) VALUES (1, N'Преподаватель')
INSERT [dbo].[uRole] ([idRole], [nameRole]) VALUES (2, N'Студент')
SET IDENTITY_INSERT [dbo].[uRole] OFF
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Teachers] FOREIGN KEY([curator])
REFERENCES [dbo].[Teachers] ([idTeachers])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Teachers]
GO
ALTER TABLE [dbo].[Progress]  WITH CHECK ADD  CONSTRAINT [FK_Progress_Students1] FOREIGN KEY([idStud])
REFERENCES [dbo].[Students] ([idStud])
GO
ALTER TABLE [dbo].[Progress] CHECK CONSTRAINT [FK_Progress_Students1]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Group] FOREIGN KEY([group])
REFERENCES [dbo].[Group] ([idGroup])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Group]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_uRole] FOREIGN KEY([role])
REFERENCES [dbo].[uRole] ([idRole])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_uRole]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [FK_Teachers_uRole] FOREIGN KEY([role])
REFERENCES [dbo].[uRole] ([idRole])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Teachers_uRole]
GO
USE [master]
GO
ALTER DATABASE [LessonApp] SET  READ_WRITE 
GO
