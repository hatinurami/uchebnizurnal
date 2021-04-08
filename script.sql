CREATE DATABASE [LessonApp]
 go
USE [LessonApp]
GO

CREATE TABLE [dbo].[Answers](
	[idOtvet] [int] NOT NULL,
	[qv1] [int] NOT NULL,
	[qv2] [int] NOT NULL,
 CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED 
(
	[idOtvet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 06.04.2021 14:52:37 ******/
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
/****** Object:  Table [dbo].[Students]    Script Date: 06.04.2021 14:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[idStud] [int] IDENTITY(1,1) NOT NULL,
	[fName] [nvarchar](50) NOT NULL,
	[lName] [nvarchar](50) NOT NULL,
	[dob] [datetime2](7) NOT NULL,
	[group] [int] NOT NULL,
	[available] [int] NOT NULL,
	[login] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[lessCheck] [int] NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[idStud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 06.04.2021 14:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[idTeachers] [int] IDENTITY(1,1) NOT NULL,
	[fName] [nvarchar](50) NOT NULL,
	[lName] [nvarchar](50) NOT NULL,
	[dob] [datetime2](7) NOT NULL,
	[login] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[idTeachers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Answers] ([idOtvet], [qv1], [qv2]) VALUES (1, 2, 3)
INSERT [dbo].[Answers] ([idOtvet], [qv1], [qv2]) VALUES (2, 1, 3)
INSERT [dbo].[Answers] ([idOtvet], [qv1], [qv2]) VALUES (3, 1, 4)
INSERT [dbo].[Answers] ([idOtvet], [qv1], [qv2]) VALUES (4, 3, 2)
INSERT [dbo].[Answers] ([idOtvet], [qv1], [qv2]) VALUES (5, 4, 1)
INSERT [dbo].[Answers] ([idOtvet], [qv1], [qv2]) VALUES (6, 2, 3)
INSERT [dbo].[Answers] ([idOtvet], [qv1], [qv2]) VALUES (7, 3, 2)
INSERT [dbo].[Answers] ([idOtvet], [qv1], [qv2]) VALUES (8, 3, 1)
INSERT [dbo].[Answers] ([idOtvet], [qv1], [qv2]) VALUES (9, 4, 2)
INSERT [dbo].[Answers] ([idOtvet], [qv1], [qv2]) VALUES (10, 2, 1)
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
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (1, N'Изабелла', N'Гершельмана', CAST(N'1993-01-12T00:00:00.0000000' AS DateTime2), 2, 1, N'user', N'123', 2)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (2, N'Изольда', N'Гребнева', CAST(N'1993-02-15T00:00:00.0000000' AS DateTime2), 3, 1, NULL, NULL, 0)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (3, N'Анастасия', N'Флёрова', CAST(N'1993-02-21T00:00:00.0000000' AS DateTime2), 1, 1, NULL, NULL, 0)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (4, N'Артемий', N'Онегин', CAST(N'1993-02-26T00:00:00.0000000' AS DateTime2), 3, 1, NULL, NULL, 0)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (5, N'Аркадий', N'Гордеев', CAST(N'1993-03-04T00:00:00.0000000' AS DateTime2), 2, 1, NULL, NULL, 0)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (6, N'Ярослава', N'Ханинова', CAST(N'1993-06-15T00:00:00.0000000' AS DateTime2), 4, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (7, N'Фадей', N'Кабальнов', CAST(N'1993-07-29T00:00:00.0000000' AS DateTime2), 5, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (8, N'Агап', N'Васенин', CAST(N'1993-08-08T00:00:00.0000000' AS DateTime2), 6, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (9, N'Евдоким', N'Яковлев', CAST(N'1993-09-19T00:00:00.0000000' AS DateTime2), 8, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (10, N'Станислава', N'Суботина', CAST(N'1993-10-08T00:00:00.0000000' AS DateTime2), 7, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (11, N'Бронислава', N'Путинова', CAST(N'1994-04-10T00:00:00.0000000' AS DateTime2), 9, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (12, N'Аким', N'Мальцев', CAST(N'1994-05-18T00:00:00.0000000' AS DateTime2), 10, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (13, N'Поликарп', N'Царско', CAST(N'1994-07-13T00:00:00.0000000' AS DateTime2), 2, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (14, N'Влада', N'Нугаева', CAST(N'1994-09-19T00:00:00.0000000' AS DateTime2), 3, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (15, N'Элина', N'Эссена', CAST(N'1994-09-23T00:00:00.0000000' AS DateTime2), 1, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (16, N'Афина', N'Панкина', CAST(N'1994-11-08T00:00:00.0000000' AS DateTime2), 3, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (17, N'Екатерина', N'Касатый', CAST(N'1994-12-06T00:00:00.0000000' AS DateTime2), 2, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (18, N'Вера', N'Дмитриева', CAST(N'1995-03-07T00:00:00.0000000' AS DateTime2), 4, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (19, N'Денис', N'Максимов', CAST(N'1995-08-22T00:00:00.0000000' AS DateTime2), 5, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (20, N'Фёдор', N'Стиплин', CAST(N'1995-09-08T00:00:00.0000000' AS DateTime2), 6, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (21, N'Элеонора', N'Приходько', CAST(N'1995-12-16T00:00:00.0000000' AS DateTime2), 8, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (22, N'Игнатий', N'Шурупин', CAST(N'1996-01-11T00:00:00.0000000' AS DateTime2), 7, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (23, N'Григорий', N'Трошкин', CAST(N'1996-03-15T00:00:00.0000000' AS DateTime2), 9, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (24, N'Карина', N'Рудникова', CAST(N'1996-04-06T00:00:00.0000000' AS DateTime2), 10, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (25, N'Мартин', N'Тихоньков', CAST(N'1996-04-07T00:00:00.0000000' AS DateTime2), 2, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (26, N'Дарина', N'Веретёнова', CAST(N'1996-04-08T00:00:00.0000000' AS DateTime2), 3, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (27, N'Остап', N'Типалов', CAST(N'1996-04-19T00:00:00.0000000' AS DateTime2), 1, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (28, N'Дементий', N'Примаков', CAST(N'1996-09-19T00:00:00.0000000' AS DateTime2), 3, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (29, N'Лаврентий', N'Енотов', CAST(N'1996-10-13T00:00:00.0000000' AS DateTime2), 2, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (30, N'Василий', N'Шатохин', CAST(N'1997-05-25T00:00:00.0000000' AS DateTime2), 4, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (31, N'Аида', N'Бессонова', CAST(N'1997-05-29T00:00:00.0000000' AS DateTime2), 5, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (32, N'Ариадна', N'Фастера', CAST(N'1997-09-08T00:00:00.0000000' AS DateTime2), 6, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (33, N'Агния', N'Кузнецова', CAST(N'1997-10-01T00:00:00.0000000' AS DateTime2), 8, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (34, N'Эвелина', N'Скороходова', CAST(N'1997-10-09T00:00:00.0000000' AS DateTime2), 7, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (35, N'Борис', N'Стрелков', CAST(N'1997-11-18T00:00:00.0000000' AS DateTime2), 9, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (36, N'Аделя', N'Чайка', CAST(N'1997-12-20T00:00:00.0000000' AS DateTime2), 10, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (37, N'Алёна', N'Мышкина', CAST(N'1998-01-25T00:00:00.0000000' AS DateTime2), 2, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (38, N'Белла', N'Салькова', CAST(N'1998-03-04T00:00:00.0000000' AS DateTime2), 3, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (39, N'Илья', N'Огарков', CAST(N'1998-06-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (40, N'Алия', N'Руднева', CAST(N'1998-09-02T00:00:00.0000000' AS DateTime2), 3, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (41, N'Полина', N'Кадцына', CAST(N'1998-10-11T00:00:00.0000000' AS DateTime2), 2, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (42, N'Парфен', N'Гришкин', CAST(N'1998-10-12T00:00:00.0000000' AS DateTime2), 4, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (43, N'Али', N'Алешин', CAST(N'1999-05-03T00:00:00.0000000' AS DateTime2), 5, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (44, N'Иннокентий', N'Морошкин', CAST(N'1999-05-18T00:00:00.0000000' AS DateTime2), 6, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (45, N'Вячеслав', N'Чекмарёв', CAST(N'1999-05-23T00:00:00.0000000' AS DateTime2), 8, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (46, N'Аделина', N'Дорохова', CAST(N'1999-07-04T00:00:00.0000000' AS DateTime2), 7, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (47, N'Лилия', N'Табернакулова', CAST(N'1999-08-28T00:00:00.0000000' AS DateTime2), 9, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (48, N'Виктория', N'Антонович', CAST(N'1999-09-02T00:00:00.0000000' AS DateTime2), 10, 1, NULL, NULL, NULL)
INSERT [dbo].[Students] ([idStud], [fName], [lName], [dob], [group], [available], [login], [password], [lessCheck]) VALUES (49, N'Прокл', N'Недельский', CAST(N'1999-10-19T00:00:00.0000000' AS DateTime2), 3, 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password]) VALUES (1, N'Лавр', N'Бобр', CAST(N'1971-02-12T00:00:00.0000000' AS DateTime2), N'admin', N'123')
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password]) VALUES (2, N'Анастасия', N'Белорусова', CAST(N'1974-01-30T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password]) VALUES (3, N'Игорь', N'Левтев', CAST(N'1976-08-17T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password]) VALUES (4, N'Милослава', N'Андрюшина', CAST(N'1976-09-07T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password]) VALUES (5, N'Герасим', N'Оськин', CAST(N'1978-10-17T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password]) VALUES (6, N'Злата', N'Яблонова', CAST(N'1982-07-19T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password]) VALUES (7, N'Яна', N'Рябкина', CAST(N'1987-05-16T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password]) VALUES (8, N'Антон', N'Анисимов', CAST(N'1987-11-07T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password]) VALUES (9, N'Дина', N'Игнатьева', CAST(N'1990-09-29T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Teachers] ([idTeachers], [fName], [lName], [dob], [login], [password]) VALUES (10, N'Игнатий', N'Низовский', CAST(N'1991-10-18T00:00:00.0000000' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Teachers] FOREIGN KEY([curator])
REFERENCES [dbo].[Teachers] ([idTeachers])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Teachers]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Group] FOREIGN KEY([group])
REFERENCES [dbo].[Group] ([idGroup])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Group]
GO
USE [master]
GO
ALTER DATABASE [LessonApp] SET  READ_WRITE 
GO
