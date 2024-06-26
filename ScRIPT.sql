USE [master]
GO
/****** Object:  Database [DanceStudioDB]    Script Date: 25.04.2024 12:24:28 ******/
CREATE DATABASE [DanceStudioDB]
 
GO
USE [DanceStudioDB]
GO
/****** Object:  Table [dbo].[Abonement]    Script Date: 25.04.2024 12:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abonement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryTrainerId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[LessonCount] [int] NOT NULL,
 CONSTRAINT [PK_PriceList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buy]    Script Date: 25.04.2024 12:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AbonementId] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[LessonsLeftCount] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_Abonement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 25.04.2024 12:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryTrainer]    Script Date: 25.04.2024 12:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryTrainer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TrainerId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_CategoryTrainer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 25.04.2024 12:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[AbonementId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Rent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 25.04.2024 12:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeTable]    Script Date: 25.04.2024 12:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryTrainerId] [int] NOT NULL,
	[DayWeek] [nvarchar](50) NOT NULL,
	[DayTime] [time](7) NOT NULL,
 CONSTRAINT [PK_TimeTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainer]    Script Date: 25.04.2024 12:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[MiddleName] [nvarchar](100) NOT NULL,
	[Birthday] [date] NOT NULL,
	[WorkExperience] [int] NOT NULL,
	[Info] [nvarchar](1000) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Trainer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 25.04.2024 12:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[Phone] [nvarchar](30) NULL,
	[Email] [nvarchar](50) NULL,
	[PassportSeries] [nvarchar](50) NULL,
	[PassportNum] [nvarchar](50) NULL,
	[Role] [bit] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Visit]    Script Date: 25.04.2024 12:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BuytId] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Visit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Abonement] ON 

INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (5, 2, 1000, 4)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (7, 7, 1600, 4)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (8, 8, 2000, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (9, 44, 1800, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (10, 46, 1000, 4)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (11, 46, 1800, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (12, 46, 2400, 12)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (13, 48, 1000, 4)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (14, 48, 1800, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (15, 49, 800, 4)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (16, 49, 1500, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (17, 49, 2000, 12)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (18, 54, 800, 4)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (19, 54, 1500, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (20, 54, 2000, 12)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (23, 2, 1800, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (24, 2, 2400, 12)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (25, 44, 1000, 4)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (26, 44, 2400, 12)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (27, 45, 800, 4)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (28, 45, 1400, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (29, 45, 2000, 12)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (30, 7, 2500, 9)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (32, 8, 1621, 4)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (33, 8, 2500, 12)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (34, 9, 1000, 4)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (35, 9, 1600, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (36, 9, 2000, 12)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (37, 52, 800, 4)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (38, 52, 1600, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (39, 52, 2000, 12)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (40, 48, 2000, 12)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (41, 47, 1000, 4)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (42, 47, 1500, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (43, 47, 2000, 12)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (44, 50, 1000, 4)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (45, 50, 1800, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (46, 50, 3400, 16)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (47, 51, 1000, 4)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (48, 51, 1800, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (49, 51, 3400, 16)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (50, 53, 1000, 4)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (51, 53, 1800, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (52, 53, 3400, 16)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (53, 63, 1000, 4)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (54, 63, 1800, 8)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (55, 63, 3500, 16)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (56, 65, 10000, 3)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (57, 67, 5000, 2)
INSERT [dbo].[Abonement] ([Id], [CategoryTrainerId], [Price], [LessonCount]) VALUES (58, 8, 4, 2)
SET IDENTITY_INSERT [dbo].[Abonement] OFF
GO
SET IDENTITY_INSERT [dbo].[Buy] ON 

INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (14, 28, CAST(N'2024-04-30T12:21:55.910' AS DateTime), 0, N'sveta', 2)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (15, 32, CAST(N'2024-04-30T12:26:26.630' AS DateTime), 0, N'olya', 2)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (16, 18, CAST(N'2024-04-27T13:01:12.967' AS DateTime), 0, N'ruzilya', 2)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (17, 20, CAST(N'2024-04-30T17:03:04.123' AS DateTime), 12, N'ruzilya', 1)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (18, 23, CAST(N'2024-04-28T13:03:42.483' AS DateTime), 0, N'anya', 2)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (19, 14, CAST(N'2024-04-30T15:18:02.300' AS DateTime), 6, N'kamila', 1)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (20, 43, CAST(N'2024-06-02T15:38:22.840' AS DateTime), 7, N'igor', 1)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (21, 56, CAST(N'2024-06-02T16:22:29.573' AS DateTime), 3, N'Kamilla123', 1)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (22, 53, CAST(N'2024-06-10T12:09:11.763' AS DateTime), 4, N'anya', 1)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (23, 25, CAST(N'2024-06-10T12:09:20.843' AS DateTime), 4, N'liza', 1)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (24, 56, CAST(N'2024-06-10T12:22:03.677' AS DateTime), 3, N'Kamilla', 1)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (26, 45, CAST(N'2024-06-17T09:20:59.383' AS DateTime), 8, N'qq', 1)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (27, 9, CAST(N'2024-06-15T09:21:59.120' AS DateTime), 8, N'qq', 1)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (28, 53, CAST(N'2024-06-19T10:02:05.827' AS DateTime), 1, N'оо', 1)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (29, 14, CAST(N'2024-04-25T10:32:35.510' AS DateTime), 8, N'mia', 1)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (30, 42, CAST(N'2024-04-25T10:32:56.717' AS DateTime), 8, N'mia', 1)
INSERT [dbo].[Buy] ([Id], [AbonementId], [DateTime], [LessonsLeftCount], [UserName], [StatusId]) VALUES (31, 33, CAST(N'2024-04-25T12:10:28.547' AS DateTime), 11, N'maria', 1)
SET IDENTITY_INSERT [dbo].[Buy] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Дети 7-9 лет')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Дети 3-4 года')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Дети 12-16 лет')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Дети 13-17 лет')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (5, N'Дети 4-6 лет')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (6, N'Дети 12-15 лет')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (7, N'Дети 6-7 лет')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (8, N'Дети 9-12 лет')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryTrainer] ON 

INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (2, 2, 3)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (7, 1, 3)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (8, 1, 5)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (9, 1, 6)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (44, 2, 1)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (45, 2, 2)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (46, 3, 4)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (47, 3, 5)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (48, 3, 6)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (49, 4, 2)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (50, 4, 6)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (51, 4, 8)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (52, 5, 2)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (53, 5, 3)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (54, 5, 6)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (63, 4, 7)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (65, 6, 2)
INSERT [dbo].[CategoryTrainer] ([Id], [TrainerId], [CategoryId]) VALUES (67, 6, 4)
SET IDENTITY_INSERT [dbo].[CategoryTrainer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [Username], [AbonementId], [Date]) VALUES (26, N'nastya', 11, CAST(N'2024-04-25T11:37:03.433' AS DateTime))
INSERT [dbo].[Order] ([Id], [Username], [AbonementId], [Date]) VALUES (27, N'anya', 57, CAST(N'2024-04-25T11:37:22.083' AS DateTime))
INSERT [dbo].[Order] ([Id], [Username], [AbonementId], [Date]) VALUES (28, N'sveta', 8, CAST(N'2024-04-25T11:37:53.077' AS DateTime))
INSERT [dbo].[Order] ([Id], [Username], [AbonementId], [Date]) VALUES (29, N'partina', 55, CAST(N'2024-04-25T11:38:10.947' AS DateTime))
INSERT [dbo].[Order] ([Id], [Username], [AbonementId], [Date]) VALUES (30, N'mia', 26, CAST(N'2024-04-25T11:38:31.997' AS DateTime))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[Status] ([Id], [Name], [Color]) VALUES (1, N'активирован', N'#FFD4FFAA')
INSERT [dbo].[Status] ([Id], [Name], [Color]) VALUES (2, N'истек', N'#FFFECDC7')
GO
SET IDENTITY_INSERT [dbo].[TimeTable] ON 

INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (5, 2, N'Понедельник', CAST(N'16:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (7, 8, N'Четверг', CAST(N'15:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (8, 9, N'Пятница', CAST(N'14:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (9, 2, N'Среда', CAST(N'16:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (10, 2, N'Пятница', CAST(N'15:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (11, 44, N'Вторник', CAST(N'13:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (12, 44, N'Четверг', CAST(N'16:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (13, 48, N'Понедельник', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (14, 48, N'Среда', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (15, 48, N'Пятница', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (16, 44, N'Суббота', CAST(N'16:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (17, 45, N'Понедельник', CAST(N'17:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (18, 45, N'Среда', CAST(N'17:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (19, 45, N'Пятница', CAST(N'17:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (20, 9, N'Понедельник', CAST(N'14:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (21, 9, N'Среда', CAST(N'14:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (22, 8, N'Вторник', CAST(N'15:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (23, 8, N'Суббота', CAST(N'15:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (24, 7, N'Понедельник', CAST(N'17:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (25, 7, N'Среда', CAST(N'17:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (26, 7, N'Пятница', CAST(N'17:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (27, 46, N'Вторник', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (28, 46, N'Четверг', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (29, 46, N'Суббота', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (30, 47, N'Понедельник', CAST(N'20:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (31, 47, N'Среда', CAST(N'20:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (32, 47, N'Пятница', CAST(N'20:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (33, 49, N'Понедельник', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (35, 49, N'Среда', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (36, 49, N'Пятница', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (37, 50, N'Вторник', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (38, 50, N'Четверг', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (39, 50, N'Суббота', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (40, 51, N'Понедельник', CAST(N'20:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (41, 51, N'Среда', CAST(N'20:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (42, 51, N'Пятница', CAST(N'20:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (43, 52, N'Понедельник', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (46, 52, N'Среда', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (47, 52, N'Пятница', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (48, 53, N'Вторник', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (49, 53, N'Четверг', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (50, 53, N'Суббота', CAST(N'18:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (51, 54, N'Понедельник', CAST(N'20:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (52, 54, N'Среда', CAST(N'20:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (53, 54, N'Пятница', CAST(N'20:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (54, 63, N'Вторник', CAST(N'20:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (55, 63, N'Четверг', CAST(N'20:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (56, 63, N'Суббота', CAST(N'20:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (57, 65, N'Вторник', CAST(N'13:00:00' AS Time))
INSERT [dbo].[TimeTable] ([Id], [CategoryTrainerId], [DayWeek], [DayTime]) VALUES (58, 44, N'Воскресенье', CAST(N'06:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[TimeTable] OFF
GO
SET IDENTITY_INSERT [dbo].[Trainer] ON 

INSERT [dbo].[Trainer] ([Id], [LastName], [FirstName], [MiddleName], [Birthday], [WorkExperience], [Info], [Photo]) VALUES (1, N'Артюшина', N'Анна', N'Владимировна', CAST(N'1989-01-01' AS Date), 12, N'Основатель и руководитель студии. В dance-индустрии более 27 лет.', N'11.png')
INSERT [dbo].[Trainer] ([Id], [LastName], [FirstName], [MiddleName], [Birthday], [WorkExperience], [Info], [Photo]) VALUES (2, N'Антонова', N'Оксана', N'Петровна', CAST(N'1994-05-21' AS Date), 7, N'Старший педагог-хореограф. В dance-индустрии более 17 лет.
', N'3.png')
INSERT [dbo].[Trainer] ([Id], [LastName], [FirstName], [MiddleName], [Birthday], [WorkExperience], [Info], [Photo]) VALUES (3, N'Сергеева', N'Аделина', N'Рамилевна', CAST(N'1998-03-12' AS Date), 4, N'Старший педагог-хореограф. В dance-индустрии более 17 лет.
Девиз в работе: нужно любить себя такой ,какая есть-просто совершенствоваться!', N'4.png')
INSERT [dbo].[Trainer] ([Id], [LastName], [FirstName], [MiddleName], [Birthday], [WorkExperience], [Info], [Photo]) VALUES (4, N'Князькина', N'Евгения', N'Александровна', CAST(N'1997-06-17' AS Date), 8, N'Старший педагог-хореограф. В dance-индустрии более 10 лет.', N'12.png')
INSERT [dbo].[Trainer] ([Id], [LastName], [FirstName], [MiddleName], [Birthday], [WorkExperience], [Info], [Photo]) VALUES (5, N'Сабирова', N'Камилла', N'Ильдусовна', CAST(N'1999-06-17' AS Date), 4, N'Образование:  
Сертифицированный тренер сети студии растяжки lady stretch.
Учусь в институте на преподавателя психолога.
Достижения: закончила в музыкальной школе хореографическое отделение с красным дипломом. Призовые места на Всероссийских конкурсах, как «Созвездие» «Танцевальная Ассамблея» международные конкурсы «Пятый элемент», «Радуга танца». Ездили с коллективом на различные конкурсы в другие города всегда получали призовые места, так же проходили мастер классы у Егора Дружинина по современным танцам и у танцоров камерного балета «Пантера»
Опыт работы: 1 год
Люблю в своей работе видеть горящие глаза клиентов, возможность мотивировать их и становится каждым днём все лучше и лучше.
Хобби: обожаю читать различные книги по психологии, медитировать и заниматься спортом, танцами, растяжкой
Девиз в работе: всё невозможное-возможно)', N'5.jpg')
INSERT [dbo].[Trainer] ([Id], [LastName], [FirstName], [MiddleName], [Birthday], [WorkExperience], [Info], [Photo]) VALUES (6, N'Масленикова', N'Полина', N'Владимировна', CAST(N'2002-06-14' AS Date), 4, N'Старший педагог-хореограф. В dance-индустрии более 17 лет.', N'5.png')
SET IDENTITY_INSERT [dbo].[Trainer] OFF
GO
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'admin', N'1', N'Шакирова', N'Камилла', N'Ильсуровна', N'+7 (900) 745-32-34', N'alishtop@mail.ru', NULL, NULL, 1)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'anya', N'1', N'Федорова', N'Анна', N'Александровна', N'+7 (969) 325-95-89', N'anya188@mail.ru', NULL, NULL, 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'igor', N'1', N'Иванова', N'Катерина', N'Ивановна', N'8964564654', N'456456', N'121', N'121221', 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'jj', N'1', N'', N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'kamila', N'1', N'Сивохина', N'Камилла', N'Радиковна', N'895454574', N'kamil@mail.ru', N'11', N'1111', 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'Kamilla', N'123', N'', N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'Kamilla123', N'2', N'Cbdhdhfhfg', N'sdfgsfd', N'gsdfg', N'36536', N'sffdh', N'23124', N'345654', 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'kk', N'1', N'', N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'liza', N'1', N'Герасимова1', N'Елизавета', N'Сергеевна', N'+7 (991) 240-73-10', N'lisabetta@yandex.ru', N'1', N'2', 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'maria', N'1', N'Казеева', N'Мария', N'Юрьевна', N'1111111', N'maria@mail.ru', N'1111', N'1111111', 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'mia', N'1', N'Кристофорова', N'Элла', N'Эдуардовна', N'1', N'hello@mail.ru', N'111111', N'121212', 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'nastya', N'1', N'Ефремова', N'Анастасия', N'Антоновна', N'+7 (917) 459-24-33', N'dimon2228@gmail.ru', NULL, NULL, 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'olya', N'1', N'Астахова', N'Ольга', N'Николаевна', N'+7 (939) 848-86-83', N'AstahovDunkan459@mail.ru', NULL, NULL, 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'partina', N'1', N'Москаленко ', N'Партина', N' Геннадиевна', N'+7 (954) 343-27-62', N'MoskalenkoPartina240@mail.ru', NULL, NULL, 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'qq', N'1', N'Си', N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'ruzilya', N'1', N'Миндубаева', N'Рузиля', N'Рафисовна', N'+7 (942) 988-43-60', N'rusilya@mail.ru', NULL, NULL, 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'sveta', N'5', N'Гусева', N'Светлана', N'Георгиевна', N'89674547454', N'guseva@mail.ru', N'1111', N'1111111', 0)
INSERT [dbo].[User] ([UserName], [Password], [LastName], [FirstName], [MiddleName], [Phone], [Email], [PassportSeries], [PassportNum], [Role]) VALUES (N'оо', N'1', N'Сив', N'Кам', N'', N'9999999', N'аака', N'', N'', 0)
GO
SET IDENTITY_INSERT [dbo].[Visit] ON 

INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (9, 14, CAST(N'2023-04-30T12:40:36.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (10, 14, CAST(N'2023-04-28T12:40:43.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (11, 15, CAST(N'2023-04-29T08:40:09.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (12, 16, CAST(N'2023-04-21T17:00:32.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (13, 16, CAST(N'2023-04-22T17:01:58.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (14, 16, CAST(N'2023-04-25T17:02:13.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (15, 16, CAST(N'2023-04-28T17:02:28.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (16, 18, CAST(N'2023-04-30T13:03:59.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (17, 19, CAST(N'2023-04-30T15:23:43.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (18, 18, CAST(N'2023-06-02T16:23:11.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (19, 18, CAST(N'2023-06-02T16:23:22.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (20, 18, CAST(N'2023-06-02T16:23:25.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (21, 18, CAST(N'2023-06-02T16:23:27.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (22, 18, CAST(N'2023-06-02T16:23:29.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (23, 18, CAST(N'2023-06-02T16:23:31.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (24, 18, CAST(N'2023-06-02T16:23:34.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (25, 14, CAST(N'2023-06-10T12:20:46.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (26, 14, CAST(N'2023-06-10T12:20:51.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (27, 14, CAST(N'2023-06-10T12:20:55.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (28, 14, CAST(N'2023-06-10T12:20:59.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (29, 14, CAST(N'2023-06-10T12:21:01.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (30, 14, CAST(N'2023-06-10T12:21:04.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (31, 15, CAST(N'2023-06-17T09:23:32.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (32, 15, CAST(N'2023-06-17T09:23:36.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (34, 28, CAST(N'2023-06-19T10:04:35.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (35, 28, CAST(N'2023-06-19T10:04:39.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (37, 28, CAST(N'2023-06-19T10:04:45.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (38, 15, CAST(N'2024-04-25T09:23:39.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (39, 19, CAST(N'2024-04-25T10:34:36.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (40, 20, CAST(N'2024-04-25T11:43:19.000' AS DateTime))
INSERT [dbo].[Visit] ([Id], [BuytId], [DateTime]) VALUES (41, 31, CAST(N'2024-04-25T12:13:10.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Visit] OFF
GO
ALTER TABLE [dbo].[Abonement]  WITH CHECK ADD  CONSTRAINT [FK_Abonement_CategoryTrainer] FOREIGN KEY([CategoryTrainerId])
REFERENCES [dbo].[CategoryTrainer] ([Id])
GO
ALTER TABLE [dbo].[Abonement] CHECK CONSTRAINT [FK_Abonement_CategoryTrainer]
GO
ALTER TABLE [dbo].[Buy]  WITH CHECK ADD  CONSTRAINT [FK_Buy_Abonement] FOREIGN KEY([AbonementId])
REFERENCES [dbo].[Abonement] ([Id])
GO
ALTER TABLE [dbo].[Buy] CHECK CONSTRAINT [FK_Buy_Abonement]
GO
ALTER TABLE [dbo].[Buy]  WITH CHECK ADD  CONSTRAINT [FK_Buy_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[Buy] CHECK CONSTRAINT [FK_Buy_Status]
GO
ALTER TABLE [dbo].[Buy]  WITH CHECK ADD  CONSTRAINT [FK_Buy_User] FOREIGN KEY([UserName])
REFERENCES [dbo].[User] ([UserName])
GO
ALTER TABLE [dbo].[Buy] CHECK CONSTRAINT [FK_Buy_User]
GO
ALTER TABLE [dbo].[CategoryTrainer]  WITH CHECK ADD  CONSTRAINT [FK_CategoryTrainer_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[CategoryTrainer] CHECK CONSTRAINT [FK_CategoryTrainer_Category]
GO
ALTER TABLE [dbo].[CategoryTrainer]  WITH CHECK ADD  CONSTRAINT [FK_CategoryTrainer_Trainer] FOREIGN KEY([TrainerId])
REFERENCES [dbo].[Trainer] ([Id])
GO
ALTER TABLE [dbo].[CategoryTrainer] CHECK CONSTRAINT [FK_CategoryTrainer_Trainer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Abonement] FOREIGN KEY([AbonementId])
REFERENCES [dbo].[Abonement] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Abonement]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Rent_Client1] FOREIGN KEY([Username])
REFERENCES [dbo].[User] ([UserName])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Rent_Client1]
GO
ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [FK_TimeTable_CategoryTrainer] FOREIGN KEY([CategoryTrainerId])
REFERENCES [dbo].[CategoryTrainer] ([Id])
GO
ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [FK_TimeTable_CategoryTrainer]
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK_Visit_Buy] FOREIGN KEY([BuytId])
REFERENCES [dbo].[Buy] ([Id])
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK_Visit_Buy]
GO
USE [master]
GO
ALTER DATABASE [DanceStudioDB] SET  READ_WRITE 
GO
