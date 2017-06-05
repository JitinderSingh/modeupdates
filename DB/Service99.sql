USE [Service99]
GO
/****** Object:  DatabaseRole [gd_execprocs]    Script Date: 11/6/2015 PM 08:15:16 ******/
CREATE ROLE [gd_execprocs]
GO
/****** Object:  Schema [ksoft_cms]    Script Date: 11/6/2015 PM 08:15:16 ******/
CREATE SCHEMA [ksoft_cms]
GO
/****** Object:  Table [dbo].[AppSettings]    Script Date: 11/6/2015 PM 08:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AppSettings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Key] [varchar](50) NULL,
	[Value] [varchar](50) NULL,
 CONSTRAINT [PK_AppSettings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookTechnician]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookTechnician](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceId] [int] NULL,
	[Name] [nvarchar](250) NULL,
	[City] [nvarchar](250) NULL,
	[MobileNo] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[DescribeProblem] [nvarchar](1000) NULL,
	[Status] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[HouseNo] [varchar](50) NULL,
	[Locality] [varchar](250) NULL,
 CONSTRAINT [PK_BookTechnician] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[City_Locality]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City_Locality](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
	[Name] [varchar](max) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_City_Locality] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClientFeedback]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientFeedback](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[FeedBack] [nvarchar](1000) NULL,
	[Date] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_ClientFeedback] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CMS]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CMS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](155) NOT NULL,
	[Description] [ntext] NOT NULL,
	[seo_keywords] [varchar](255) NOT NULL,
	[seo_descriptions] [varchar](255) NOT NULL,
	[Image] [varchar](255) NULL,
	[PageId] [int] NULL,
 CONSTRAINT [PK_CMS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[Message] [ntext] NULL,
	[PhoneNo] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Service]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NULL,
	[Details] [nvarchar](500) NULL,
	[Icon] [varchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[Status] [bit] NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[Service] ADD [DetailsIcon] [varchar](50) NULL
ALTER TABLE [dbo].[Service] ADD [DisplayOrder] [int] NULL
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserAddress]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserAddress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Address] [nvarchar](250) NULL,
	[FlatNo] [varchar](150) NULL,
	[City] [varchar](250) NULL,
	[State] [varchar](50) NULL,
	[Pin] [int] NULL,
 CONSTRAINT [PK_UserAddress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](150) NULL,
	[Mobile] [varchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[RoleId] [int] NULL,
	[Image] [varchar](150) NULL,
	[IsNewsLetter] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AppSettings] ON 

GO
INSERT [dbo].[AppSettings] ([ID], [Key], [Value]) VALUES (3, N'Homepagetitle', N'Welcometo Service99')
GO
INSERT [dbo].[AppSettings] ([ID], [Key], [Value]) VALUES (4, N'WebSiteUrl', N'http://service99.ksoftware.co.in/')
GO
INSERT [dbo].[AppSettings] ([ID], [Key], [Value]) VALUES (5, N'SeoDescription', N'Welcome to Service 99')
GO
INSERT [dbo].[AppSettings] ([ID], [Key], [Value]) VALUES (6, N'MailServer', N'smtpout.secureserver.net')
GO
INSERT [dbo].[AppSettings] ([ID], [Key], [Value]) VALUES (7, N'MailUserId', N'info@ksoftware.co.in')
GO
INSERT [dbo].[AppSettings] ([ID], [Key], [Value]) VALUES (8, N'MailPassword', N'011network0')
GO
INSERT [dbo].[AppSettings] ([ID], [Key], [Value]) VALUES (9, N'MailPort', N'25')
GO
INSERT [dbo].[AppSettings] ([ID], [Key], [Value]) VALUES (10, N'IsSSL', N'False')
GO
INSERT [dbo].[AppSettings] ([ID], [Key], [Value]) VALUES (11, N'ReceiverEmail', N'mantu.bcrec88@gmail.com')
GO
INSERT [dbo].[AppSettings] ([ID], [Key], [Value]) VALUES (12, N'Google_Analytics', N'Welcometo service99')
GO
INSERT [dbo].[AppSettings] ([ID], [Key], [Value]) VALUES (13, N'SeoKeyword', N'Welcome to Service 99')
GO
SET IDENTITY_INSERT [dbo].[AppSettings] OFF
GO
SET IDENTITY_INSERT [dbo].[BookTechnician] ON 

GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (36, 2, N'hjgj', N'dfghj', N'7658679678', N'abhishek.bcrec88@gmail.com', N'djdgf', 0, CAST(N'2015-09-09T20:46:14.303' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (46, 8, N'jyj', N'jyj', N'7568568769', N'a@gmail.com', N'mbkj', 0, CAST(N'2015-09-09T20:58:23.417' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (47, 8, N'jfghj', N'hfgj', N'7568568769', N'a@gmail.com', N'g,l', 0, CAST(N'2015-09-09T20:59:22.890' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (49, 6, N'Abhi', N'Kolkata', N'9631455144', N'abhishek.bcrec88@gmail.com', N'bdgfhd', 0, CAST(N'2015-09-10T20:07:46.873' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (50, 8, N'aa', N'aa', N'7568568769', N'abhishek.bcrec88@gmail.com', N'bdgfhd', 1, CAST(N'2015-09-10T20:12:44.973' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (51, 3, N'Abhi', N'Kolkata', N'9797494964', N'abhishek.bcrec88@gmail.com', N'i am testing', 0, CAST(N'2015-09-11T14:03:45.127' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (56, 10, N'Raju', N'Delhi', N'6547856877', N'ramesh@gmail.com', N'fdsgfsd', 0, CAST(N'2015-09-11T18:36:31.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (57, 10, N'Raju', N'Delhi', N'6547856877', N'ramesh@gmail.com', N'fdsgfsd', 0, CAST(N'2015-09-11T18:36:32.010' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (58, 11, N'Abhi', N'Kolkata', N'7857856969', N'ramesh@gmail.com', N'dfhdgfh', 0, CAST(N'2015-09-11T19:52:06.600' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (59, 11, N'Abhi', N'Kolkata', N'7857856969', N'ramesh@gmail.com', N'dfhdgfh', 0, CAST(N'2015-09-11T19:52:13.203' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (60, 11, N'hdgfh', N'dh', N'7658679780', N'abc@gmail.com', N'dfsvgdf', 0, CAST(N'2015-09-11T19:54:59.757' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (61, 11, N'hdgfh', N'dh', N'7658679780', N'abc@gmail.com', N'dfsvgdf', 0, CAST(N'2015-09-11T19:55:07.373' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (62, 11, N'hgfdjh', N'gdfgh', N'5686797808', N'a@gmail.com', N'gfdsg', 0, CAST(N'2015-09-11T19:56:22.497' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (63, 11, N'hgfdjh', N'gdfgh', N'5686797808', N'a@gmail.com', N'gfdsg', 0, CAST(N'2015-09-11T19:56:29.113' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (66, 8, N'sgdf', N'Kolkata', N'7568679890', N'abhishek.bcrec88@gmail.com', N'hfhkgkj', 0, CAST(N'2015-09-15T13:08:23.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (67, 8, N'sgdf', N'Kolkata', N'7568679890', N'abhishek.bcrec88@gmail.com', N'hfhkgkj', 0, CAST(N'2015-09-15T13:08:23.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (68, 2, N'Satyendra', N'Kolkata', N'7894561230', N'alok@gmail.com', N'Test description', 1, CAST(N'2015-09-16T18:22:36.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (69, 2, N'Satyendra', N'Kolkata', N'7894561230', N'alok@gmail.com', N'Test description', 0, CAST(N'2015-09-16T18:22:43.370' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (70, 2, N'Amar Singh', N'Asansol', N'7676593465', N'abhishek.bcrec88@gmail.com', N'eferg', 0, CAST(N'2015-09-18T15:08:06.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (71, 2, N'Amar Singh', N'Asansol', N'7676593465', N'abhishek.bcrec88@gmail.com', N'eferg', 0, CAST(N'2015-09-18T15:08:07.060' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (72, 2, N'Test', N'Kolkata', N'7894561230', N'satyendra.biet35@gmail.com', N'Thest problem', 0, CAST(N'2015-09-22T13:38:54.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (73, 2, N'Test', N'Kolkata', N'7894561230', N'satyendra.biet35@gmail.com', N'Thest problem', 0, CAST(N'2015-09-22T13:39:01.220' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (74, 11, N'Test ', N'Kolkata', N'9087654321', N'admin@service99.com', N'Test ', 0, CAST(N'2015-10-12T16:35:10.643' AS DateTime), N'AE-553', N'Kolkata Zoo, Alipore, Alipore Road, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (75, 11, N'Test ', N'Kolkata', N'9087654321', N'admin@service99.com', N'Test ', 0, CAST(N'2015-10-12T16:35:32.760' AS DateTime), N'AE-553', N'Kolkata Zoo, Alipore, Alipore Road, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (76, 11, N'Test Kr', N'Kolkata', N'7894530321', N'testing.skr@gmail.com', N'tesas', 0, CAST(N'2015-10-12T16:37:24.277' AS DateTime), N'da', N'Dharmatala, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (77, 11, N'Test Kr', N'Kolkata', N'7894530321', N'testing.skr@gmail.com', N'tesas', 0, CAST(N'2015-10-12T16:37:33.003' AS DateTime), N'da', N'Dharmatala, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (78, 1, N'Test Kr', N'Kolkata', N'7894561230', N'testing.skr@gmail.com', N'Kola', 0, CAST(N'2015-10-12T17:49:14.917' AS DateTime), N'AE-553', N'Salt Lake Stadium, Beleghata, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (79, 1, N'Test Kr', N'Kolkata', N'7894561230', N'testing.skr@gmail.com', N'Kola', 0, CAST(N'2015-10-12T17:49:22.027' AS DateTime), N'AE-553', N'Salt Lake Stadium, Beleghata, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (80, 1, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'I need technician to repair ac.', 0, CAST(N'2015-10-13T15:05:29.147' AS DateTime), N'Ae-553', N'A.E. Block sector 1, Sector-1, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (81, 1, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'I need technician to repair ac.', 0, CAST(N'2015-10-13T15:05:29.147' AS DateTime), N'Ae-553', N'A.E. Block sector 1, Sector-1, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (82, 2, N'Test ', N'Kolkata', N'7501312563', N'satyendra.biet35@gmail.com', N'test', 0, CAST(N'2015-10-13T15:23:28.040' AS DateTime), N'AE-553', N'Dum Dum, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (83, 2, N'Test ', N'Kolkata', N'7501312563', N'satyendra.biet35@gmail.com', N'test', 0, CAST(N'2015-10-13T15:23:28.447' AS DateTime), N'AE-553', N'Dum Dum, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (84, 1, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'da', 0, CAST(N'2015-10-13T15:59:22.917' AS DateTime), N'Ae-553', N'Kolkata, Belgachia, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (85, 1, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'da', 0, CAST(N'2015-10-13T15:59:22.917' AS DateTime), N'Ae-553', N'Kolkata, Belgachia, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (86, 2, N'Education', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'tesa', 0, CAST(N'2015-10-13T16:03:52.970' AS DateTime), N'AE-553', N'Salt Lake City, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (87, 2, N'Education', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'tesa', 0, CAST(N'2015-10-13T16:03:52.970' AS DateTime), N'AE-553', N'Salt Lake City, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (88, 3, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'ddf', 0, CAST(N'2015-10-13T16:07:08.643' AS DateTime), N'Ae', N'Salt Lake City, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (89, 3, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'ddf', 0, CAST(N'2015-10-13T16:07:08.643' AS DateTime), N'Ae', N'Salt Lake City, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (90, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'sad', 0, CAST(N'2015-10-13T16:09:31.647' AS DateTime), N'AE-553', N'Salt Lake City, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (91, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'sad', 0, CAST(N'2015-10-13T16:09:31.647' AS DateTime), N'AE-553', N'Salt Lake City, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (92, 3, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'aasa', 0, CAST(N'2015-10-13T16:13:42.610' AS DateTime), N'AE-553', N'Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (93, 3, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'aasa', 0, CAST(N'2015-10-13T16:13:42.610' AS DateTime), N'AE-553', N'Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (94, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-13T16:15:14.460' AS DateTime), N'as', N'Alipore, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (95, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-13T16:15:14.460' AS DateTime), N'as', N'Alipore, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (96, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'ad', 0, CAST(N'2015-10-13T16:22:34.113' AS DateTime), N'as', N'Sealdah Railway Station, Bepin Behari Ganguly Street, Sealdah, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (97, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'ad', 0, CAST(N'2015-10-13T16:22:34.113' AS DateTime), N'as', N'Sealdah Railway Station, Bepin Behari Ganguly Street, Sealdah, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (98, 1, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-13T16:25:32.547' AS DateTime), N'AE-0', N'Adamas Institute of Technology, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (99, 1, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-13T16:25:32.547' AS DateTime), N'AE-0', N'Adamas Institute of Technology, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (100, 3, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-13T16:29:16.503' AS DateTime), N'sda', N'Alipore, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (101, 3, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-13T16:29:16.550' AS DateTime), N'sda', N'Alipore, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (102, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-13T16:45:57.577' AS DateTime), N'AE-553', N'Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (103, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-13T16:45:57.577' AS DateTime), N'AE-553', N'Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (104, 1, N'Sa', N'Kolkata', N'7501312563', N'satyendra.biet35@gmail.com', N'asd', 0, CAST(N'2015-10-14T10:15:02.670' AS DateTime), N'AE-553', N'Sector-1, Salt Lake City, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (105, 1, N'Sa', N'Kolkata', N'7501312563', N'satyendra.biet35@gmail.com', N'asd', 0, CAST(N'2015-10-14T10:15:02.670' AS DateTime), N'AE-553', N'Sector-1, Salt Lake City, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (106, 1, N'Sa', N'Kolkata', N'7501312563', N'satyendra.biet35@gmail.com', N'asd', 0, CAST(N'2015-10-14T10:17:50.523' AS DateTime), N'AE-553', N'Sector-1, Salt Lake City, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (107, 1, N'Sa', N'Kolkata', N'7501312563', N'satyendra.biet35@gmail.com', N'asd', 0, CAST(N'2015-10-14T10:17:51.223' AS DateTime), N'AE-553', N'Sector-1, Salt Lake City, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (108, 3, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'aas', 0, CAST(N'2015-10-14T10:25:50.780' AS DateTime), N'Ae', N'Sealdah Railway Station, Bepin Behari Ganguly Street, Sealdah, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (109, 3, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'aas', 0, CAST(N'2015-10-14T10:25:50.780' AS DateTime), N'Ae', N'Sealdah Railway Station, Bepin Behari Ganguly Street, Sealdah, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (110, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asasd', 0, CAST(N'2015-10-14T10:31:45.010' AS DateTime), N'AE-553', N'Dum Dum Airport, Dum Dum, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (111, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asasd', 0, CAST(N'2015-10-14T10:31:45.027' AS DateTime), N'AE-553', N'Dum Dum Airport, Dum Dum, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (112, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asasd', 0, CAST(N'2015-10-14T10:34:01.053' AS DateTime), N'AE-553', N'Dum Dum Airport, Dum Dum, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (113, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asasd', 0, CAST(N'2015-10-14T10:34:01.070' AS DateTime), N'AE-553', N'Dum Dum Airport, Dum Dum, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (114, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asasd', 0, CAST(N'2015-10-14T10:36:24.123' AS DateTime), N'AE-553', N'Dum Dum Airport, Dum Dum, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (115, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asasd', 0, CAST(N'2015-10-14T10:36:24.123' AS DateTime), N'AE-553', N'Dum Dum Airport, Dum Dum, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (116, 3, N'adad', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'AS', 0, CAST(N'2015-10-14T10:37:14.123' AS DateTime), N's', N'DD Block, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (117, 3, N'adad', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'AS', 0, CAST(N'2015-10-14T10:37:14.123' AS DateTime), N's', N'DD Block, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (118, 3, N'adad', N'Kolkata', N'7501312563', N'satyendra.biet35@gmail.com', N'AS', 0, CAST(N'2015-10-14T10:37:53.840' AS DateTime), N's', N'DD Block, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (119, 3, N'adad', N'Kolkata', N'7501312563', N'satyendra.biet35@gmail.com', N'AS', 0, CAST(N'2015-10-14T10:37:53.857' AS DateTime), N's', N'DD Block, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (120, 3, N'adad', N'Kolkata', N'7501312563', N'satyendra.biet35@gmail.com', N'AS', 0, CAST(N'2015-10-14T10:43:01.263' AS DateTime), N's', N'DD Block, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (121, 3, N'adad', N'Kolkata', N'7501312563', N'satyendra.biet35@gmail.com', N'AS', 0, CAST(N'2015-10-14T10:43:01.263' AS DateTime), N's', N'DD Block, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (122, 1, N'Test Kr', N'Kolkata', N'7850131256', N'satyendra.biet35@gmail.com', N'Test message', 0, CAST(N'2015-10-15T13:29:00.173' AS DateTime), N'AE-553', N'Kalighat, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (123, 1, N'Test Kr', N'Kolkata', N'7850131256', N'satyendra.biet35@gmail.com', N'Test message', 0, CAST(N'2015-10-15T13:29:00.173' AS DateTime), N'AE-553', N'Kalighat, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (124, 1, N'ASD', N'Kolkata', N'7501312563', N'satyendra.biet35@gmail.com', N'asdad', 0, CAST(N'2015-10-15T13:44:01.910' AS DateTime), N'DUm dum', N'Dum Dum Airport, Dum Dum, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (125, 1, N'ASD', N'Kolkata', N'7501312563', N'satyendra.biet35@gmail.com', N'asdad', 0, CAST(N'2015-10-15T13:44:01.910' AS DateTime), N'DUm dum', N'Dum Dum Airport, Dum Dum, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (126, 1, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-15T13:45:35.713' AS DateTime), N'dum dum', N'Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (127, 1, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-15T13:45:35.713' AS DateTime), N'dum dum', N'Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (128, 1, N'Test Kr', N'Kolkata', N'7501312563', N'satyendra.biet35@gmail.com', N'adadasd ', 0, CAST(N'2015-10-15T13:52:20.850' AS DateTime), N'Dum dum ', N'Dum Dum Junction Railway Station, Satpukur, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (129, 1, N'Test Kr', N'Kolkata', N'7501312563', N'satyendra.biet35@gmail.com', N'adadasd ', 0, CAST(N'2015-10-15T13:52:21.773' AS DateTime), N'Dum dum ', N'Dum Dum Junction Railway Station, Satpukur, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (130, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'as', 0, CAST(N'2015-10-15T13:57:16.400' AS DateTime), N'Ae', N'Dharmatala, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (131, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'as', 0, CAST(N'2015-10-15T13:57:16.400' AS DateTime), N'Ae', N'Dharmatala, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (132, 3, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'test', 0, CAST(N'2015-10-15T16:35:03.443' AS DateTime), N'DUm', N'Dum Dum, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (133, 3, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'test', 0, CAST(N'2015-10-15T16:35:03.443' AS DateTime), N'DUm', N'Dum Dum, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (134, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-15T16:45:35.150' AS DateTime), N'Ae-553', N'Kolkata Zoo, Alipore, Alipore Road, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (135, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-15T16:45:35.167' AS DateTime), N'Ae-553', N'Kolkata Zoo, Alipore, Alipore Road, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (136, 1, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'a', 0, CAST(N'2015-10-15T16:58:19.193' AS DateTime), N'as', N'Dharmatala, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (137, 1, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'a', 0, CAST(N'2015-10-15T16:58:19.193' AS DateTime), N'as', N'Dharmatala, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (138, 3, N'Test Kr', N'Kolkata', N'750123569', N'testing.skr@gmail.com', N'dsdd', 0, CAST(N'2015-10-15T18:33:21.670' AS DateTime), N'Ae', N'Salt Lake City, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (139, 3, N'Test Kr', N'Kolkata', N'750123569', N'testing.skr@gmail.com', N'dsdd', 0, CAST(N'2015-10-15T18:33:21.687' AS DateTime), N'Ae', N'Salt Lake City, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (140, 3, N'Test Kr', N'Kolkata', N'7412312123', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-15T18:35:52.933' AS DateTime), N'awer', N'Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (141, 3, N'Test Kr', N'Kolkata', N'7412312123', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-15T18:35:52.950' AS DateTime), N'awer', N'Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (142, 3, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'adasd', 0, CAST(N'2015-10-15T18:46:26.837' AS DateTime), N'as', N'Asutosh College, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (143, 3, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'as', 0, CAST(N'2015-10-15T20:14:14.367' AS DateTime), N'as', N'Salt Lake City, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (144, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-15T20:23:41.913' AS DateTime), N'as', N'Sealdah Railway Station, Bepin Behari Ganguly Street, Sealdah, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (145, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'ad', 0, CAST(N'2015-10-15T20:34:31.793' AS DateTime), N'ad', N'Alipore, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (146, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'sadsa', 0, CAST(N'2015-10-15T20:36:08.867' AS DateTime), N'as', N'Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (147, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'sadsa', 0, CAST(N'2015-10-15T20:36:38.883' AS DateTime), N'as', N'Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (148, 2, N'Test Kr', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'ass', 0, CAST(N'2015-10-15T20:38:41.297' AS DateTime), N'as', N'Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (149, 9, N'Test ', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-15T20:51:28.487' AS DateTime), N'as', N'Kolkata Station Taxi Stand, Belgachia, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (150, 9, N'Test ', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-15T20:52:32.520' AS DateTime), N'as', N'Kolkata Station Taxi Stand, Belgachia, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (151, 9, N'Test ', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-15T20:52:56.900' AS DateTime), N'as', N'Kolkata Station Taxi Stand, Belgachia, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (152, 9, N'Test', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-15T20:54:11.563' AS DateTime), N'as', N'Kolkata Station Taxi Stand, Belgachia, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (153, 9, N'Test', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asd', 0, CAST(N'2015-10-15T20:54:25.313' AS DateTime), N'as', N'Kolkata Station Taxi Stand, Belgachia, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (154, 3, N'Test 090', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'as', 0, CAST(N'2015-10-16T10:03:23.900' AS DateTime), N'as', N'Sealdah Railway Station, Bepin Behari Ganguly Street, Sealdah, Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (155, 1, N'Test ', N' Kolkata', N'7501312563', N'testing.skr@gmail.com', N'This is test', 0, CAST(N'2015-11-02T15:03:08.827' AS DateTime), N'AE-553', N'Kolkata, Belgachia, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (156, 1, N'Test ', N' Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asdasd', 0, CAST(N'2015-11-02T15:10:36.550' AS DateTime), N'AE-553', N'Kolkata, Belgachia, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (157, 1, N'Test Kr', N' Kolkata', N'7501312563', N'testing.skr@gmail.com', N'sadasd', 0, CAST(N'2015-11-02T15:13:19.357' AS DateTime), N'AE-553', N'Kolkata, Belgachia, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (158, 1, N'Test ', N' Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asdas', 0, CAST(N'2015-11-02T15:18:47.280' AS DateTime), N'AE-553', N'Kolkata, Belgachia, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (159, 10, N'Test ', N'Kolkata', N'7501312563', N'testing.skr@gmail.com', N'asdasd', 0, CAST(N'2015-11-02T15:46:01.447' AS DateTime), N'AE-553', N'Kolkata, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (160, 8, N'Test ', N'Kolkata', N'7894561230', N'testing.skr@gmail.com', N'sdfdsf', 0, CAST(N'2015-11-02T19:16:31.277' AS DateTime), N'AE-332', N'Kolkata, Belgachia, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (161, 10, N'Test ', N'Kolkata', N'7894561230', N'testing.skr@gmail.com', N'asasd', 0, CAST(N'2015-11-02T19:32:12.200' AS DateTime), N'AE', N'Kolkata, Belgachia, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (162, 10, N'Satyendra Kumar', N'Kolkata', N'9608105641', N'satyendra.biet35@gmail.com', N'gdhff', 0, CAST(N'2015-11-02T19:40:19.490' AS DateTime), N'aaee11', N'Kolkata, Belgachia, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (163, 10, N'adad', N'Kolkata', N'9666666666', N'satyendra.biet35@gmail.com', N'sxgbf', 0, CAST(N'2015-11-02T19:42:25.063' AS DateTime), N'as66', N'Kolkata, Belgachia, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (164, 10, N'Test ', N'Kolkata', N'9966635263', N'admin@service99.com', N'afd', 0, CAST(N'2015-11-02T19:43:11.357' AS DateTime), N'aa33', N'Kolkata, Belgachia, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (165, 10, N'asdf', N'Kolkata', N'9999999999', N'satyendra.biet35@gmail.com', N'asdfgas', 0, CAST(N'2015-11-02T19:44:08.160' AS DateTime), N'ass3', N'Kolkata, Belgachia, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (166, 10, N'asdf', N'Kolkata', N'9999999999', N'admin@service99.com', N'af ', 0, CAST(N'2015-11-02T19:45:43.757' AS DateTime), N'ad', N'Kolkata, Belgachia, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (167, 10, N'Test ', N'Kolkata', N'5499999999', N'admin@service99.com', N'k;', 0, CAST(N'2015-11-02T19:46:15.547' AS DateTime), N'df', N'Kolkata, Belgachia, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (168, 10, N'Test 090', N'Kolkata', N'1111111111', N'admin@service99.com', N'\]\', 0, CAST(N'2015-11-02T19:49:37.563' AS DateTime), N'ooo', N'Kolkata, Belgachia, West Bengal, India')
GO
INSERT [dbo].[BookTechnician] ([Id], [ServiceId], [Name], [City], [MobileNo], [Email], [DescribeProblem], [Status], [CreatedDate], [HouseNo], [Locality]) VALUES (169, 10, N'Test ', N'Kolkata', N'7501312563', N'satyendra.biet35@gmail.com', N'Test desc..!!', 0, CAST(N'2015-11-06T12:04:53.630' AS DateTime), N'AE-553', N'Netaji Subhash Chandra Bose International Airport, Dum Dum, Kolkata, West Bengal, India')
GO
SET IDENTITY_INSERT [dbo].[BookTechnician] OFF
GO
SET IDENTITY_INSERT [dbo].[City_Locality] ON 

GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1, 0, N'Delhi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2, 1, N'Ashok Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3, 1, N'Asmara Lines', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4, 1, N'Azad Nagar East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (5, 1, N'Azadpur ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (6, 1, N'Badarpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (7, 1, N'Bhajanpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (8, 1, N'Bharat Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (9, 1, N'Bijwasan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (10, 1, N'Brar Square', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (11, 1, N'Chanakya Puri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (12, 1, N'Chandni Chowk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (13, 1, N'Chattarpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (14, 1, N'Chitranjan Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (15, 1, N'Civil Lines', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (16, 1, N'Connaught Place', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (17, 1, N'Darya Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (18, 1, N'Daya Basti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (19, 1, N'Dayal Pur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (20, 1, N'Defence Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (21, 1, N'Delhi Cantt', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (22, 1, N'Dr. Mukherjee Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (23, 1, N'Dwarka  ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (24, 1, N'Gagan Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (25, 1, N'Gandhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (26, 1, N'Gautam Puri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (27, 1, N'Geeta Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (28, 1, N'Ghonda Patti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (29, 1, N'Gole Market  ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (30, 1, N'Greater Kailash', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (31, 1, N'Green Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (32, 1, N'Gtb Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (33, 1, N'Gujranwala Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (34, 1, N'Hauz khas', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (35, 1, N'Hazrat Nizamuddin  ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (36, 1, N'IP Estate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (37, 1, N'Jaffrabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (38, 1, N'Janakpuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (39, 1, N'Jangpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (40, 1, N'Jasola  ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (41, 1, N'Jhandewalan ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (42, 1, N'Jhandewalan Extension', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (43, 1, N'Kailash Hills', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (44, 1, N'Kailash Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (45, 1, N'Kalkaji ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (46, 1, N'Kamaruddin Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (47, 1, N'Kamla Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (48, 1, N'Karawal Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (49, 1, N'Karol Bagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (50, 1, N'Khanpur ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (51, 1, N'Kidwai Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (52, 1, N'Kirti Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (53, 1, N'Krishna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (54, 1, N'Lajpat Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (55, 1, N'Lakshmi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (56, 1, N'Lal Kot ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (57, 1, N'Lal Kuan Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (58, 1, N'Lawrence Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (59, 1, N'Lodi Colony  ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (60, 1, N'Malka Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (61, 1, N'Malviya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (62, 1, N'Mangolpuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (63, 1, N'Mansarover Garden', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (64, 1, N'Maujpur ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (65, 1, N'Mayur Vihar 1  ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (66, 1, N'Mayur Vihar 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (67, 1, N'Mayur Vihar 3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (68, 1, N'Mehrauli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (69, 1, N'Model Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (70, 1, N'Mori Gate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (71, 1, N'Moti Bagh  ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (72, 1, N'Moti Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (73, 1, N'Motia Khan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (74, 1, N'Mehrauli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (75, 1, N'Naraina ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (76, 1, N'Nawab Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (77, 1, N'Netaji Nagar  ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (78, 1, N'New Friends Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (79, 1, N'New Gupta Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (80, 1, N'New Rajendra Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (81, 1, N'New Usmanpur ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (82, 1, N'Nicholson Lines', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (83, 1, N'Okhla  ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (84, 1, N'Old Rajendra Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (85, 1, N'Pahar Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (86, 1, N'Pahari Dhiraj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (87, 1, N'Palam Vihar ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (88, 1, N'Panchsheel', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (89, 1, N'Pandav Nagar  ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (90, 1, N'Patel Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (91, 1, N'Pira Garhi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (92, 1, N'Pitampura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (93, 1, N'Pragati Maidan ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (94, 1, N'Prashant Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (95, 1, N'Preet Vihar  ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (96, 1, N'Punjabi Baug', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (97, 1, N'R.K Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (98, 1, N'Raja Garden', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (99, 1, N'Rajendra Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (100, 1, N'Rajokri ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (101, 1, N'Rajouri Garden ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (102, 1, N'Ramesh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (103, 1, N'Rana Pratap Bagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (104, 1, N'Rani Bagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (105, 1, N'Rohini  ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (106, 1, N'Sabzi Mandi ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (107, 1, N'Sadar Bazaar ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (108, 1, N'Safdarjang Enclave', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (109, 1, N'Saket', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (110, 1, N'Sant Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (111, 1, N'Sarai Rohilla ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (112, 1, N'Sarita Vihar ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (113, 1, N'Sarojini Nagar ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (114, 1, N'Shahdara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (115, 1, N'Shakarpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (116, 1, N'Shakti Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (117, 1, N'Shalimar Bagh ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (118, 1, N'Shastri Nagar ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (119, 1, N'Shivalik ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (120, 1, N'Shri Niwas Puri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (121, 1, N'South Extension', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (122, 1, N'Subhash Nagar ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (123, 1, N'Teliwara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (124, 1, N'Tilak Nagar ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (125, 1, N'Tis Hazari ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (126, 1, N'Udyog Bhawan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (127, 1, N'Uttam Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (128, 1, N'Vaishali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (129, 1, N'Vasant Kunj ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (130, 1, N'Vasant Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (131, 1, N'Vikas Puri ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (132, 1, N'Yamuna Vihar ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (133, 0, N'Asansol ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (134, 0, N'Bardhman', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (135, 0, N'Bankura ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (136, 0, N'Chittaranjan ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (137, 0, N'Darjeeling', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (138, 0, N'Durgapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (139, 0, N'Howrah  ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (140, 0, N'Kolkata ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (141, 0, N'Purulia ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (142, 0, N'Raniganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (143, 0, N'Silliguri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (145, 0, N'Agra ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (146, 145, N'Achhnera', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (147, 145, N'Agra Bypass', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (148, 145, N'Agra Gpo', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (149, 145, N'Aligarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (150, 145, N'Awadpuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (151, 145, N'Bah', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (152, 145, N'Balkeshwar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (153, 145, N'Chankya Puri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (154, 145, N'Dayal Bagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (155, 145, N'Delhi Gate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (156, 145, N'Etmadpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (157, 145, N'Fatehbad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (158, 145, N'Fatehpur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (159, 145, N'Fatehpur Sikri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (160, 145, N'Firozabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (161, 145, N'Foundry Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (162, 145, N'Gwalior Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (163, 145, N'Kailashpuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (164, 145, N'Kaliandi Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (165, 145, N'Kamla Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (166, 145, N'Khandari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (167, 145, N'Kiraoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (168, 145, N'Mau Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (169, 145, N'Mg Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (170, 145, N'Nehru Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (171, 145, N'Nh2 Agra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (172, 145, N'Pinahat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (173, 145, N'Pratap Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (174, 145, N'Raja Mandi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (175, 145, N'Sanjay Place', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (176, 145, N'Shahaganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (177, 145, N'Shamsabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (178, 145, N'Shamshabad Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (179, 145, N'Shastripuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (180, 145, N'Sikandra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (181, 145, N'Taj Mahal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (182, 145, N'Tajganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (183, 145, N'Vijay Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (184, 0, N'Ahmedabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (185, 184, N'Acher', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (186, 184, N'Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (187, 184, N'Airport Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (188, 184, N'Ambawadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (189, 184, N'Amdupura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (190, 184, N'Amraiwadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (191, 184, N'Asarwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (192, 184, N'Ayojan Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (193, 184, N'Balvatika', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (194, 184, N'Bapunagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (195, 184, N'Bardolpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (196, 184, N'Bhadra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (197, 184, N'Bhatta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (198, 184, N'Bhimjipura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (199, 184, N'Bodakdev', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (200, 184, N'Chamanpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (201, 184, N'Chandkheda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (202, 184, N'Chandlodia', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (203, 184, N'Dariapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (204, 184, N'Dudheshwar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (205, 184, N'Ellis Bridge', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (206, 184, N'Ghatalodia', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (207, 184, N'Ghodasar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (208, 184, N'GIDC Naroda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (209, 184, N'Girdhar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (210, 184, N'Gomtipur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (211, 184, N'Gota', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (212, 184, N'Gulbai Tekra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (213, 184, N'Gurukul', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (214, 184, N'Hansol', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (215, 184, N'Haripura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (216, 184, N'Hirawadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (217, 184, N'Isanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (218, 184, N'Jayma Society', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (219, 184, N'Jodhpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (220, 184, N'Juhapura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (221, 184, N'Kalapi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (222, 184, N'Kalupur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (223, 184, N'Kankaria Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (224, 184, N'Karmchari Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (225, 184, N'Keshav Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (226, 184, N'Khadia', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (227, 184, N'Khanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (228, 184, N'Khokra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (229, 184, N'Krishna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (230, 184, N'Kuber Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (231, 184, N'Lal Darwaja', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (232, 184, N'Lati Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (233, 184, N'Madhupura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (234, 184, N'Mahavir Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (235, 184, N'Makarba', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (236, 184, N'Maninagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (237, 184, N'Megani Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (238, 184, N'Memnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (239, 184, N'Mirzapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (240, 184, N'Mithakali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (241, 184, N'Naranpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (242, 184, N'Narayan Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (243, 184, N'Naroda Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (244, 184, N'Nava Naroda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (245, 184, N'Nava Vadaj Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (246, 184, N'Navrangpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (247, 184, N'New Vadaj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (248, 184, N'Nicol', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (249, 184, N'Nikol Kathwada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (250, 184, N'Nirnay Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (251, 184, N'Odhav', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (252, 184, N'ONGC', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (253, 184, N'Paldi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (254, 184, N'Pankore Naka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (255, 184, N'Patel Society', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (256, 184, N'R C Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (257, 184, N'Ram Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (258, 184, N'Ranip', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (259, 184, N'Ranna Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (260, 184, N'Relief Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (261, 184, N'Sabarmati', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (262, 184, N'Sahjipur Bogha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (263, 184, N'Saijpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (264, 184, N'Saijpur Bogha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (265, 184, N'Sarda Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (266, 184, N'Sarkhej', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (267, 184, N'Satellite', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (268, 184, N'Shahibagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (269, 184, N'Shahibaghr', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (270, 184, N'Sola', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (271, 184, N'Thakkar Bapa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (272, 184, N'Thaltej', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (273, 184, N'University Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (274, 184, N'Usmanpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (275, 184, N'Vasna', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (276, 184, N'Vatva (G.I.D.C)', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (277, 184, N'Vejalpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (278, 184, N'Vrundavan Society', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (279, 0, N'Aizawl', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (280, 279, N'Bara Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (281, 279, N'Chanmari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (282, 279, N'Dawrpui', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (283, 279, N'Dawrpui Zion Street Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (284, 279, N'Mission Vengthlang', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (285, 279, N'Sairang', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (286, 279, N'Saitual', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (287, 279, N'Tuikual', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (288, 279, N'Veng', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (289, 279, N'Zarkawt', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (290, 0, N'Ajmer', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (291, 290, N'Beawar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (292, 290, N'Chandravardi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (293, 290, N'Civil Lines', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (294, 290, N'Kekri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (295, 290, N'Kiranipura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (296, 290, N'Kishangarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (297, 290, N'Nasirabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (298, 290, N'Pal Beechla', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (299, 290, N'Pushkar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (300, 290, N'Sarwar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (301, 290, N'Vaishali Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (302, 290, N'Vijainagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (303, 0, N'Akola', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (304, 303, N'Akot', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (305, 303, N'Balapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (306, 303, N'Civil Lines', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (307, 303, N'Gorakshan Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (308, 303, N'Jatharpeth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (309, 303, N'Malkapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (310, 303, N'Murtizapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (311, 303, N'Murtizapur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (312, 303, N'Patur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (313, 303, N'Ramdaspeth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (314, 303, N'Telhara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (315, 303, N'Tilak Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (316, 303, N'Umri Pragane Balapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (317, 0, N'Allahabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (318, 317, N'Allahabad Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (319, 317, N'Allahabad Fort', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (320, 317, N'Allahabad Golf Club', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (321, 317, N'Allahapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (322, 317, N'Ashok Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (323, 317, N'Bai Ka Bagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (324, 317, N'Bamrauli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (325, 317, N'Beniganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (326, 317, N'Chakiya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (327, 317, N'Chandpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (328, 317, N'Chaukhandi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (329, 317, N'Chheoki', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (330, 317, N'Civil Lines', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (331, 317, N'Colonelganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (332, 317, N'Dandupur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (333, 317, N'Daraganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (334, 317, N'Darbhanga Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (335, 317, N'Dariyabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (336, 317, N'Dhoomanganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (337, 317, N'George Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (338, 317, N'Ghayasuddinpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (339, 317, N'Gol Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (340, 317, N'Govindpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (341, 317, N'Jahangirabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (342, 317, N'Jhalwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (343, 317, N'Jhusi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (344, 317, N'Kala Danda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (345, 317, N'Kalindipuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (346, 317, N'Kalyanidevi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (347, 317, N'Khuldabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (348, 317, N'Kydganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (349, 317, N'Lukarganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (350, 317, N'Mahewa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (351, 317, N'Malviyanagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (352, 317, N'Military Farm', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (353, 317, N'Mirganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (354, 317, N'Miurabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (355, 317, N'Mumfordganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (356, 317, N'Mutthiganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (357, 317, N'Railway Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (358, 317, N'Rajapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (359, 317, N'Rajrooppur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (360, 317, N'Rani Mandi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (361, 317, N'South Malaka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (362, 317, N'Subedaganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (363, 0, N'Amritsar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (364, 363, N'Ajit Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (365, 363, N'Ajnala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (366, 363, N'Albert Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (367, 363, N'Amritsar Cantt', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (368, 363, N'Basant Avenue', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (369, 363, N'Batala Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (370, 363, N'Bhikhiwind', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (371, 363, N'Budha Theh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (372, 363, N'Chheharta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (373, 363, N'Circular Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (374, 363, N'Court Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (375, 363, N'East Mohan Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (376, 363, N'G.t.b. Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (377, 363, N'Green Avenue', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (378, 363, N'Gt Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (379, 363, N'Gt Road Bypass', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (380, 363, N'Guru Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (381, 363, N'Jandiala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (382, 363, N'Kashmir Avenue', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (383, 363, N'Khem Karan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (384, 363, N'Krishna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (385, 363, N'Krishna Square', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (386, 363, N'Lawrence Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (387, 363, N'Loharka Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (388, 363, N'Lohgarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (389, 363, N'Majitha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (390, 363, N'Majitha Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (391, 363, N'Mall Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (392, 363, N'Maqbool Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (393, 363, N'Patti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (394, 363, N'Putlighar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (395, 363, N'Queens Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (396, 363, N'Rajasansi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (397, 363, N'Ramdas', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (398, 363, N'Rani Ka Bagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (399, 363, N'Ranjit Avenue', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (400, 363, N'Rayya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (401, 363, N'Tarn Taran', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (402, 0, N'Aurangabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (403, 402, N'Aurangpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (404, 402, N'Bahadurpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (405, 402, N'Bajaj Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (406, 402, N'Bansilal Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (407, 402, N'Bari Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (408, 402, N'Beed Bypass', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (409, 402, N'Chatrapathi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (410, 402, N'Chawni', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (411, 402, N'Chelipura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (412, 402, N'Chetna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (413, 402, N'Chikalthana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (414, 402, N'Cidco', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (415, 402, N'Dalalwadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (416, 402, N'Dargah Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (417, 402, N'Dashmesh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (418, 402, N'Dr. Ambedkar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (419, 402, N'Fazalpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (420, 402, N'Gadhejalgaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (421, 402, N'Gandhi Chowk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (422, 402, N'Gangapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (423, 402, N'Garkheda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (424, 402, N'Ghardon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (425, 402, N'Gulmandi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (426, 402, N'Harsool', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (427, 402, N'Hudco', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (428, 402, N'Jafar Gate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (429, 402, N'Jalgaon Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (430, 402, N'Jalna', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (431, 402, N'Jawahar Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (432, 402, N'Juna Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (433, 402, N'Jyoti Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (434, 402, N'Kannad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (435, 402, N'Khadakeshwar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (436, 402, N'Khokadpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (437, 402, N'Khuldabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (438, 402, N'Kotwalpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (439, 402, N'Kranti Chowk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (440, 402, N'Midc', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (441, 402, N'Mondha Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (442, 402, N'Nageshwarwadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (443, 402, N'Naregaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (444, 402, N'Nawabpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (445, 402, N'New Gulmandi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (446, 402, N'New Mondha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (447, 402, N'Nirala Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (448, 402, N'Nizamganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (449, 402, N'Nutan Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (450, 402, N'Osmanpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (451, 402, N'Padmapura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (452, 402, N'Paithan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (453, 402, N'Pandharpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (454, 402, N'Phulambri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (455, 402, N'Pundlik Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (456, 402, N'Pushpa Nagari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (457, 402, N'Rachanakar Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (458, 402, N'Railway Station', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (459, 402, N'Samarth Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (460, 402, N'Sarafa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (461, 402, N'Shahaganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (462, 402, N'Shree Guru Ganesh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (463, 402, N'Shrey Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (464, 402, N'Sillod', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (465, 402, N'St Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (466, 402, N'Station Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (467, 402, N'Tilak Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (468, 402, N'Ulkanagari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (469, 402, N'Vaijapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (470, 402, N'Vidya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (471, 402, N'Waladgaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (472, 402, N'Waluj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (473, 0, N'Bangalore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (474, 473, N'80 Ft. Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (475, 473, N'Agaram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (476, 473, N'Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (477, 473, N'Anand Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (478, 473, N'Anepalya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (479, 473, N'Ashok Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (480, 473, N'Attiguppe', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (481, 473, N'Austin Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (482, 473, N'Avenue Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (483, 473, N'Ayappa Garden', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (484, 473, N'B.P.Wadia Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (485, 473, N'Banasavadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (486, 473, N'Banashankari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (487, 473, N'Bannerghatta Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (488, 473, N'Bapuji Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (489, 473, N'Basavanagudi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (490, 473, N'Bashyam Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (491, 473, N'Bellandur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (492, 473, N'Benson Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (493, 473, N'Bidadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (494, 473, N'Brigade Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (495, 473, N'Btm Layout', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (496, 473, N'C V Raman Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (497, 473, N'Carmelaram Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (498, 473, N'Central Bengaluru', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (499, 473, N'Chamrajpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (500, 473, N'Channasandra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (501, 473, N'Chikkabanavara Lake', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (502, 473, N'Church Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (503, 473, N'City Centre', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (504, 473, N'Cooke Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (505, 473, N'Cottonpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (506, 473, N'Cox Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (507, 473, N'Crescent Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (508, 473, N'Cunningham Road, City', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (509, 473, N'Dasarahalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (510, 473, N'Devanahalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (511, 473, N'Devasandra Lake', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (512, 473, N'Diamond District', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (513, 473, N'Dickenson Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (514, 473, N'Dlf Township', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (515, 473, N'Doddaballapur Rd.', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (516, 473, N'Domlur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (517, 473, N'Electronic City', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (518, 473, N'Gandhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (519, 473, N'Ganga Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (520, 473, N'Govindapura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (521, 473, N'Guttahalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (522, 473, N'H.B.R. Layout', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (523, 473, N'H.S.R Layout', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (524, 473, N'HAL 2nd Stage', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (525, 473, N'Hanumanth Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (526, 473, N'Hebbal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (527, 473, N'Hennur Main Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (528, 473, N'Hessarghatta Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (529, 473, N'High Grounds', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (530, 473, N'Hormavu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (531, 473, N'Hoskote', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (532, 473, N'Hosur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (533, 473, N'Indiranagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (534, 473, N'Indlawadi Pura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (535, 473, N'Infantry Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (536, 473, N'J.P. Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (537, 473, N'Jalahalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (538, 473, N'Jayamahal Extn', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (539, 473, N'Jayamahal Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (540, 473, N'Jayanagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (541, 473, N'Jogapalya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (542, 473, N'K R Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (543, 473, N'K. G. Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (544, 473, N'Kalkere', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (545, 473, N'Kalyan Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (546, 473, N'Kammanahalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (547, 473, N'Kanakapura Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (548, 473, N'Kempapur Agrahara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (549, 473, N'Kempe Gowda Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (550, 473, N'Koramangala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (551, 473, N'Kudlu Gate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (552, 473, N'Lakkasandra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (553, 473, N'Lalbagh Rd.', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (554, 473, N'Langford Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (555, 473, N'Lavelle Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (556, 473, N'LB Shastri Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (557, 473, N'Lottegollahalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (558, 473, N'M. G. Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (559, 473, N'Madivala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (560, 473, N'Magrath Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (561, 473, N'Mahadevpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (562, 473, N'Mahalakshmipuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (563, 473, N'Mahatma Gandhi Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (564, 473, N'Majestic', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (565, 473, N'Malleswaram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (566, 473, N'Marathahalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (567, 473, N'Mathikere', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (568, 473, N'Milk Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (569, 473, N'Millers Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (570, 473, N'Minerva Circle', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (571, 473, N'Mysore Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (572, 473, N'Nagavara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (573, 473, N'Nagvarpalya Main Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (574, 473, N'Nandi Durg Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (575, 473, N'Old Airport Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (576, 473, N'Outer Ring Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (577, 473, N'Padmanabhanagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (578, 473, N'Palace Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (579, 473, N'Peenya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (580, 473, N'R.T. Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (581, 473, N'Race Course Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (582, 473, N'Raj Bhavan Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (583, 473, N'Raja Rajeshwari Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (584, 473, N'RajajiNagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (585, 473, N'Ram Murthy Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (586, 473, N'Ramamurthy Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (587, 473, N'Richmond Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (588, 473, N'RMV Extension', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (589, 473, N'S.R. Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (590, 473, N'Sadahalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (591, 473, N'Sadashiv Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (592, 473, N'Sahakara Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (593, 473, N'Sampangirama Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (594, 473, N'Sanjay Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (595, 473, N'Sankey Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (596, 473, N'Sarakki Main Road.', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (597, 473, N'Sarjapur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (598, 473, N'Seshadri Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (599, 473, N'Seshadripuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (600, 473, N'Shampura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (601, 473, N'Siddapura Rd.', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (602, 473, N'Silk Board Junction', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (603, 473, N'Sivan Chetty Gardens', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (604, 473, N'Sompura Gate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (605, 473, N'Sri Ram Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (606, 473, N'St. Mark''s Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (607, 473, N'Thaverekere Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (608, 473, N'Tumkur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (609, 473, N'Ulsoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (610, 473, N'Uttarahalli Main Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (611, 473, N'Vasanth Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (612, 473, N'Vidyaranyapura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (613, 473, N'Vijayanagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (614, 473, N'Vittal Mallya Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (615, 473, N'Vivek Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (616, 473, N'Whitefield', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (617, 473, N'Wilson Garden', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (618, 473, N'Yelahanaka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (619, 0, N'Bareilly', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (620, 619, N'Alam Giri Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (621, 619, N'Aonla', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (622, 619, N'Badaun Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (623, 619, N'Baheri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (624, 619, N'Bhoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (625, 619, N'Bisalpur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (626, 619, N'Bisharatganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (627, 619, N'Civil Lines', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (628, 619, N'Dashmeshnagar Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (629, 619, N'Deen Dayal Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (630, 619, N'Delapeer', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (631, 619, N'Deoranian', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (632, 619, N'Dhaura Tanda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (633, 619, N'Ekta Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (634, 619, N'Faridpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (635, 619, N'Fatehganj Pashchimi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (636, 619, N'Gandhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (637, 619, N'Izatnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (638, 619, N'Janakpuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (639, 619, N'Jawahar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (640, 619, N'Kargaina', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (641, 619, N'Koharapeer', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (642, 619, N'Kurmanchal Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (643, 619, N'Marwari Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (644, 619, N'Mirganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (645, 619, N'Model Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (646, 619, N'Nawabganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (647, 619, N'Pilibhit Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (648, 619, N'Prem Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (649, 619, N'Priyadarshini Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (650, 619, N'Rajendra Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (651, 619, N'Rampur Garden', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (652, 619, N'Rampur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (653, 619, N'Rithora', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (654, 619, N'Sadar Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (655, 619, N'Shahi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (656, 619, N'Sharma Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (657, 619, N'Shergarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (658, 619, N'Shishgarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (659, 619, N'Shyam Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (660, 619, N'Sirauli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (661, 619, N'Subhash Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (662, 0, N'Belgaum', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (663, 662, N'Ambedkar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (664, 662, N'Angol', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (665, 662, N'Anjaney Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (666, 662, N'Athni', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (667, 662, N'Autonagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (668, 662, N'Ayodhya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (669, 662, N'Bail Hongal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (670, 662, N'Bapat Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (671, 662, N'Basava Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (672, 662, N'Belgaum Camp', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (673, 662, N'Bhagya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (674, 662, N'Bharat Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (675, 662, N'Chavat Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (676, 662, N'Chikodi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (677, 662, N'College Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (678, 662, N'Deshpande Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (679, 662, N'Dharwad Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (680, 662, N'Fort Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (681, 662, N'Fulbag Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (682, 662, N'Ganapath Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (683, 662, N'Gandhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (684, 662, N'Gokak', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (685, 662, N'Hanuman Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (686, 662, N'Hindalga', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (687, 662, N'Hindawadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (688, 662, N'Honaga', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (689, 662, N'Huns Talkies Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (690, 662, N'Kadolkar Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (691, 662, N'Kakati', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (692, 662, N'Kali Ambrai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (693, 662, N'Kalmath Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (694, 662, N'Kelkarbagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (695, 662, N'Khadebazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (696, 662, N'Khanapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (697, 662, N'Khasbag', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (698, 662, N'Kirloskar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (699, 662, N'Konnur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (700, 662, N'Kudchi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (701, 662, N'Londa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (702, 662, N'Machhe', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (703, 662, N'Mahadwar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (704, 662, N'Mahantesh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (705, 662, N'Mali Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (706, 662, N'Mandoli Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (707, 662, N'Market Yard', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (708, 662, N'Maruthi Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (709, 662, N'Mudalgi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (710, 662, N'Narvekar Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (711, 662, N'Nehru Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (712, 662, N'Nipani', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (713, 662, N'Old Pb Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (714, 662, N'Pangul Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (715, 662, N'Patil Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (716, 662, N'Ramdev Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (717, 662, N'Ramdurg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (718, 662, N'Ramlingh Khind Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (719, 662, N'Ranichannamma Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (720, 662, N'Raviwar Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (721, 662, N'Raybag', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (722, 662, N'Rc Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (723, 662, N'Risaldar Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (724, 662, N'Sadalgi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (725, 662, N'Sadashiv Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (726, 662, N'Samadevi Lane', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (727, 662, N'Sankeshwar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (728, 662, N'Shahapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (729, 662, N'Shaniwar Khoot', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (730, 662, N'Shety Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (731, 662, N'Shivabasava Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (732, 662, N'Shivaji Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (733, 662, N'Station Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (734, 662, N'Subash Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (735, 662, N'Tilakwadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (736, 662, N'Udyambag', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (737, 0, N'Bharuch', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (738, 737, N'Andada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (739, 737, N'Ankleshwar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (740, 737, N'Bharuch Ina', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (741, 737, N'Dahej', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (742, 737, N'Dahej Bypass Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (743, 737, N'Jambusar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (744, 737, N'Link Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (745, 737, N'Maktampur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (746, 737, N'Narayan Vidya Vihar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (747, 737, N'Narmada Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (748, 737, N'Palej', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (749, 737, N'Zadeshwar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (750, 0, N'Bhopal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (751, 750, N'Akashwani Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (752, 750, N'Akbarpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (753, 750, N'Ali Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (754, 750, N'Ambedkar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (755, 750, N'Anandnagar Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (756, 750, N'Anna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (757, 750, N'Ansal Pradhan Enclave', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (758, 750, N'Apex Bank Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (759, 750, N'Aradhana Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (760, 750, N'Arera Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (761, 750, N'Arera Hills', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (762, 750, N'Arif Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (763, 750, N'Arjun nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (764, 750, N'Ashok Housing Society', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (765, 750, N'Ashok Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (766, 750, N'Ashoka Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (767, 750, N'Avadhpuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (768, 750, N'Ayodhya Bypass Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (769, 750, N'Ayodhya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (770, 750, N'Azad Market', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (771, 750, N'Badabagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (772, 750, N'Bairagarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (773, 750, N'Banjari Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (774, 750, N'Barkheri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (775, 750, N'BDA Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (776, 750, N'Berkheda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (777, 750, N'Bhanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (778, 750, N'Bharat Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (779, 750, N'Bhopal Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (780, 750, N'Bhopal Sultania Infantry', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (781, 750, N'Char Imli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (782, 750, N'Chitragupt Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (783, 750, N'Ekant Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (784, 750, N'Gautam Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (785, 750, N'Govind pura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (786, 750, N'Gurunanak Pura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (787, 750, N'Habib Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (788, 750, N'Ibrahimpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (789, 750, N'Idgah Hills', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (790, 750, N'Indrapuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (791, 750, N'Jahangirabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (792, 750, N'Kalpana Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (793, 750, N'Koh E fiza', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (794, 750, N'Lakherapura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (795, 750, N'Loha Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (796, 750, N'Maharana Pratap Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (797, 750, N'Malviyanagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (798, 750, N'Maulana Azad National Institute of Technology', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (799, 750, N'MP Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (800, 750, N'Nehru Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (801, 750, N'North TT Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (802, 750, N'Old Subhash Nagar Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (803, 750, N'P And T Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (804, 750, N'ParthSarthy Enclave', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (805, 750, N'Piplani', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (806, 750, N'Sagar Estates', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (807, 750, N'Saket Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (808, 750, N'Shah Pura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (809, 750, N'Shahjahanabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (810, 750, N'Shakti Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (811, 750, N'Shamla Hills', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (812, 750, N'Shashtri Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (813, 750, N'Shivaji Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (814, 750, N'Sonagiri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (815, 750, N'South TT Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (816, 750, N'TT Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (817, 750, N'Union Carbide Factory', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (818, 750, N'Vaishali Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (819, 0, N'Bhubaneswar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (820, 819, N'Acharya Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (821, 819, N'Ag Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (822, 819, N'Arugul', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (823, 819, N'Balianta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (824, 819, N'Baragarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (825, 819, N'Baramunda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (826, 819, N'Bhoi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (827, 819, N'Bhouma Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (828, 819, N'Bjb Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (829, 819, N'Bomikhal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (830, 819, N'Budheswari Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (831, 819, N'Chandrasekharpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (832, 819, N'Cifa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (833, 819, N'Cuttack Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (834, 819, N'Damana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (835, 819, N'Delta Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (836, 819, N'Delta Square', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (837, 819, N'Dumuduma', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (838, 819, N'Forest Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (839, 819, N'Gajpati Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (840, 819, N'Ganesh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (841, 819, N'Ganga Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (842, 819, N'Gautam Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (843, 819, N'Ghatikia', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (844, 819, N'Gopabandhu Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (845, 819, N'Industrial Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (846, 819, N'Jagamara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (847, 819, N'Jagmohan Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (848, 819, N'Jatni Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (849, 819, N'Jaydev Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (850, 819, N'Jharpada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (851, 819, N'Kalinga', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (852, 819, N'Kalinga Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (853, 819, N'Kapileshwar Prasad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (854, 819, N'Khandagiri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (855, 819, N'Kharavela Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (856, 819, N'Khurda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (857, 819, N'Lakshmi Sagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (858, 819, N'Lewis Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (859, 819, N'Madhusudan Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (860, 819, N'Mahatab Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (861, 819, N'Mancheswar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (862, 819, N'Nayapalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (863, 819, N'Palasuni', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (864, 819, N'Patia', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (865, 819, N'Patrapada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (866, 819, N'Pokhariput', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (867, 819, N'Raghunathpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (868, 819, N'Rasulgarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (869, 819, N'Sahid Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (870, 819, N'Sailashree Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (871, 819, N'Samadhi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (872, 819, N'Samantarapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (873, 819, N'Sastri Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (874, 819, N'Satya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (875, 819, N'Shree Ram Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (876, 819, N'Sum Hospital', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (877, 819, N'Sundarpada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (878, 819, N'Surya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (879, 819, N'Tamando', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (880, 819, N'Tankapani Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (881, 819, N'Unit 9', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (882, 819, N'Vani Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (883, 0, N'Bikaner', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (884, 883, N'Bada Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (885, 883, N'Deshnoke', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (886, 883, N'Gajner', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (887, 883, N'Ganganagar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (888, 883, N'Gangashahar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (889, 883, N'Kem Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (890, 883, N'Kotegate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (891, 883, N'Nokha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (892, 883, N'Pawanpuri South Extn', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (893, 883, N'Phar Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (894, 883, N'Rani Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (895, 883, N'Sadul Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (896, 883, N'Station Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (897, 0, N'Bilaspur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (898, 897, N'Khamtarai Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (899, 897, N'Mungeli Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (900, 897, N'Nehru Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (901, 897, N'Pragathi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (902, 897, N'Seepat Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (903, 0, N'Chandigarah', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (904, 903, N'Chandigarh Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (905, 903, N'Dadu Majra Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (906, 903, N'Mani Majra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (907, 903, N'Phase IIIB', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (908, 903, N'Phase IV', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (909, 903, N'Phase V', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (910, 903, N'SAS Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (911, 903, N'Sector 1', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (912, 903, N'Sector 10', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (913, 903, N'Sector 11', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (914, 903, N'Sector 12', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (915, 903, N'Sector 14', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (916, 903, N'Sector 15', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (917, 903, N'Sector 16', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (918, 903, N'Sector 17', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (919, 903, N'Sector 18', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (920, 903, N'Sector 19', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (921, 903, N'Sector 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (922, 903, N'Sector 20', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (923, 903, N'Sector 21', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (924, 903, N'Sector 22', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (925, 903, N'Sector 23', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (926, 903, N'Sector 24', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (927, 903, N'Sector 25', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (928, 903, N'Sector 26', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (929, 903, N'Sector 26 East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (930, 903, N'Sector 27', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (931, 903, N'Sector 28', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (932, 903, N'Sector 29', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (933, 903, N'Sector 3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (934, 903, N'Sector 30', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (935, 903, N'Sector 31', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (936, 903, N'Sector 32', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (937, 903, N'Sector 33', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (938, 903, N'Sector 34', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (939, 903, N'Sector 35', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (940, 903, N'Sector 36', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (941, 903, N'Sector 37', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (942, 903, N'Sector 38', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (943, 903, N'Sector 39', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (944, 903, N'Sector 4', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (945, 903, N'Sector 40', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (946, 903, N'Sector 41', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (947, 903, N'Sector 42', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (948, 903, N'Sector 43', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (949, 903, N'Sector 44', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (950, 903, N'Sector 45', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (951, 903, N'Sector 46', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (952, 903, N'Sector 47', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (953, 903, N'Sector 48', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (954, 903, N'Sector 49', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (955, 903, N'Sector 5', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (956, 903, N'Sector 50', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (957, 903, N'Sector 51', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (958, 903, N'Sector 52', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (959, 903, N'Sector 53', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (960, 903, N'Sector 54', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (961, 903, N'Sector 55', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (962, 903, N'Sector 56', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (963, 903, N'Sector 57', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (964, 903, N'Sector 58', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (965, 903, N'Sector 59', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (966, 903, N'Sector 6', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (967, 903, N'Sector 60', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (968, 903, N'Sector 61', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (969, 903, N'Sector 62', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (970, 903, N'Sector 63', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (971, 903, N'Sector 64', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (972, 903, N'Sector 65', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (973, 903, N'Sector 68', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (974, 903, N'Sector 69', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (975, 903, N'Sector 7', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (976, 903, N'Sector 70', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (977, 903, N'Sector 71', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (978, 903, N'Sector 8', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (979, 903, N'Sector 9', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (980, 0, N'Chennai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (981, 980, N'2Nd Main Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (982, 980, N'Abhiramapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (983, 980, N'Adambakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (984, 980, N'Adyar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (985, 980, N'Alandur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (986, 980, N'Alwarpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (987, 980, N'Ambattur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (988, 980, N'Aminjikarai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (989, 980, N'Anna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (990, 980, N'Anna Salai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (991, 980, N'Arumbakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (992, 980, N'Ashok Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (993, 980, N'Ayanavaram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (994, 980, N'Besant Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (995, 980, N'Broadway', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (996, 980, N'Cathedral Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (997, 980, N'Chepauk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (998, 980, N'Chetpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (999, 980, N'Chintadripet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1000, 980, N'Chrompet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1001, 980, N'CP Ramaswami Rd', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1002, 980, N'Dr.Radhakrishnan Salai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1003, 980, N'East Coast Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1004, 980, N'Egmore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1005, 980, N'Ekkatuthangal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1006, 980, N'Erukkancheri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1007, 980, N'Fort St.George', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1008, 980, N'Gandhi Irwin Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1009, 980, N'Gandhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1010, 980, N'George Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1011, 980, N'Gopalapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1012, 980, N'Greams Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1013, 980, N'Guindy', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1014, 980, N'Indira Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1015, 980, N'Injambakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1016, 980, N'Jawahar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1017, 980, N'Kasturba Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1018, 980, N'Kilpauk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1019, 980, N'Kodambakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1020, 980, N'Korukkupet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1021, 980, N'Kovilambakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1022, 980, N'Koyambedu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1023, 980, N'Madhavaram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1024, 980, N'Madipakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1025, 980, N'Mahalingapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1026, 980, N'Mambalam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1027, 980, N'Manapakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1028, 980, N'Mandaveli Rd.', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1029, 980, N'Medavakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1030, 980, N'Meenambakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1031, 980, N'MMDA Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1032, 980, N'Moolakadai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1033, 980, N'Mylapore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1034, 980, N'Nanganallur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1035, 980, N'New Washermenpe', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1036, 980, N'Nungambakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1037, 980, N'Nungambakkam High Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1038, 980, N'Okkiyam Thuraipakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1039, 980, N'Old Mahabalipuram Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1040, 980, N'Padi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1041, 980, N'Palavakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1042, 980, N'Pallikaranai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1043, 980, N'Park Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1044, 980, N'Perambur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1045, 980, N'Poonamallee', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1046, 980, N'Porur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1047, 980, N'Purasawakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1048, 980, N'Royapettah', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1049, 980, N'Royapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1050, 980, N'Rukmani Lakshmipathi Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1051, 980, N'Saidapet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1052, 980, N'Santhome', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1053, 980, N'Shastri Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1054, 980, N'Shenoy Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1055, 980, N'St. Thomas Mount', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1056, 980, N'Tambaram Sanatorium', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1057, 980, N'Teynampet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1058, 980, N'Thiruninravur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1059, 980, N'Thiruvanmiyur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1060, 980, N'Thousand Lights', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1061, 980, N'Thyagaraya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1062, 980, N'Tiruvottiyur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1063, 980, N'Tondiarpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1064, 980, N'Triplicane', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1065, 980, N'Vadapalani', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1066, 980, N'Velachery', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1067, 980, N'Vepery', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1068, 980, N'Villivakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1069, 980, N'Virugambakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1070, 980, N'Vysarpadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1071, 980, N'West Mambalam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1072, 980, N'hannels Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1073, 0, N'Coimbatore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1074, 1073, N'Anna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1075, 1073, N'Anupperpalayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1076, 1073, N'Avinashi Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1077, 1073, N'Balaji Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1078, 1073, N'Balasundaram Layout', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1079, 1073, N'Barathiar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1080, 1073, N'Bharathi Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1081, 1073, N'Cheran Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1082, 1073, N'Coimbatore Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1083, 1073, N'DJ Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1084, 1073, N'G.N Mills', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1085, 1073, N'Ganapathy', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1086, 1073, N'Gandhipuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1087, 1073, N'Geetha Hall Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1088, 1073, N'Gopala Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1089, 1073, N'GV Residency', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1090, 1073, N'Indira Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1091, 1073, N'Irugur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1092, 1073, N'Kallimadai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1093, 1073, N'Karamadai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1094, 1073, N'Karumbu Kadai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1095, 1073, N'Karunanidhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1096, 1073, N'KK Pudur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1097, 1073, N'KMCH City Center', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1098, 1073, N'Kovai Pudur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1099, 1073, N'KRG Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1100, 1073, N'Kuniyamuthur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1101, 1073, N'Kurichi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1102, 1073, N'Lakshmipuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1103, 1073, N'Masakali Palayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1104, 1073, N'Mettupalayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1105, 1073, N'Nallampalayam Rd.', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1106, 1073, N'Nanjundapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1107, 1073, N'Near Nehru Stadium', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1108, 1073, N'Neelikonam Palayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1109, 1073, N'Ondi Pudur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1110, 1073, N'Peelamedu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1111, 1073, N'Perur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1112, 1073, N'Podanur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1113, 1073, N'Ponnaiya Rajapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1114, 1073, N'Poosari Palayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1115, 1073, N'Press Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1116, 1073, N'Priya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1117, 1073, N'Pudur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1118, 1073, N'Puliakulam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1119, 1073, N'R.S Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1120, 1073, N'Ram Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1121, 1073, N'Ramanathapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1122, 1073, N'Ranganatha Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1123, 1073, N'Rangsamy Naidu Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1124, 1073, N'Red Fields', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1125, 1073, N'RS Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1126, 1073, N'Saibaba Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1127, 1073, N'Sakthi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1128, 1073, N'Sanganoor Rd.', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1129, 1073, N'Selvapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1130, 1073, N'Sidco', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1131, 1073, N'Siddhapudur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1132, 1073, N'Singanallur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1133, 1073, N'Sivanandhapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1134, 1073, N'Sivasamy Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1135, 1073, N'Sowri Palayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1136, 1073, N'State Bank Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1137, 1073, N'Sukrawar Pettai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1138, 1073, N'Sundarapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1139, 1073, N'Tatabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1140, 1073, N'Telungupalayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1141, 1073, N'Thudialur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1142, 1073, N'Town Hall', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1143, 1073, N'TVS Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1144, 1073, N'Udamalpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1145, 1073, N'Udayampalayam Rd.', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1146, 1073, N'Ukkadam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1147, 1073, N'Uppilipalayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1148, 1073, N'Vadavalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1149, 1073, N'VCS Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1150, 1073, N'Veerakeralam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1151, 1073, N'VelandiPalayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1152, 1073, N'Venkitapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1153, 1073, N'Vilankurichi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1154, 1073, N'Weavers Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1155, 0, N'Cuttack', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1156, 1155, N'Athagad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1157, 1155, N'Banki', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1158, 1155, N'Belagachhia', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1159, 1155, N'Charibatia', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1160, 1155, N'Choudwar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1161, 1155, N'Dadhapatna', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1162, 1155, N'Kaji Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1163, 1155, N'Nuapatna', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1164, 0, N'Dehradun', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1165, 1164, N'Ajabpur Kalan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1166, 1164, N'Alknanda Enclave', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1167, 1164, N'Anarwala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1168, 1164, N'Ashirwad Enclave', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1169, 1164, N'Bahmanwala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1170, 1164, N'Ballupura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1171, 1164, N'Banjarawala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1172, 1164, N'Birpur Cantonment', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1173, 1164, N'Chakrata', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1174, 1164, N'Chandpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1175, 1164, N'Chukkuwala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1176, 1164, N'Clement Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1177, 1164, N'Dakpathar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1178, 1164, N'Dalanwala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1179, 1164, N'Dehradun Cantt', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1180, 1164, N'Dhakrani', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1181, 1164, N'Dharampur Nehru Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1182, 1164, N'Diversion Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1183, 1164, N'Dobhalwala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1184, 1164, N'Doiwala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1185, 1164, N'Donga', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1186, 1164, N'Dronpuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1187, 1164, N'East Canal Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1188, 1164, N'Fri And College Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1189, 1164, N'Ghanghora', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1190, 1164, N'Ghangora Cantonment', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1191, 1164, N'Gms Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1192, 1164, N'Govind Garh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1193, 1164, N'Govind Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1194, 1164, N'Haridwar Bypass', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1195, 1164, N'Haridwar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1196, 1164, N'Hathibarkala Estate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1197, 1164, N'Herbertpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1198, 1164, N'Indira Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1199, 1164, N'Jolly Grant', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1200, 1164, N'Kalsi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1201, 1164, N'Kanwali Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1202, 1164, N'Karanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1203, 1164, N'Kaulagarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1204, 1164, N'Khurbura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1205, 1164, N'Koti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1206, 1164, N'Lakshman Chauk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1207, 1164, N'Landour', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1208, 1164, N'Majra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1209, 1164, N'Megh Enclave', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1210, 1164, N'Mohini Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1211, 1164, N'Mohit Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1212, 1164, N'Mussoorie', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1213, 1164, N'Nehrugram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1214, 1164, N'New Forest', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1215, 1164, N'Omkar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1216, 1164, N'Pashulok', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1217, 1164, N'Prem Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1218, 1164, N'Premnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1219, 1164, N'Race Course Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1220, 1164, N'Raipur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1221, 1164, N'Rajendra Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1222, 1164, N'Rajpur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1223, 1164, N'Ram Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1224, 1164, N'Rishikesh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1225, 1164, N'Sahaspur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1226, 1164, N'Sahastradhara Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1227, 1164, N'Sahiya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1228, 1164, N'Selakui', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1229, 1164, N'Shahpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1230, 1164, N'Shimla Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1231, 1164, N'Shivalik Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1232, 1164, N'Smith Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1233, 1164, N'Subhash Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1234, 1164, N'Subhash Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1235, 1164, N'Sunderwala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1236, 1164, N'Teg Bahadur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1237, 1164, N'Telpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1238, 1164, N'Thdc Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1239, 1164, N'Transport Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1240, 1164, N'Turner Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1241, 1164, N'Tyagi Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1242, 1164, N'Uddiwala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1243, 1164, N'Vasant Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1244, 1164, N'Veerbhadra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1245, 1164, N'Vidya Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1246, 1164, N'Vijay Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1247, 1164, N'Vijay Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1248, 1164, N'Vikas Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1249, 1164, N'Vivek Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1250, 1164, N'Yamuna Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1251, 0, N'Dhanbad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1252, 1251, N'Bank More', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1253, 1251, N'Hirapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1254, 1251, N'Jharudih', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1255, 1251, N'Sindri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1257, 1251, N'Katras', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1258, 0, N'Faridabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1259, 1258, N'Ajit Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1260, 1258, N'Ajronda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1261, 1258, N'Alipur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1262, 1258, N'Anangpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1263, 1258, N'Ankhir', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1264, 1258, N'Ashoka Enclave', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1265, 1258, N'Atali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1266, 1258, N'Badarpur Border', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1267, 1258, N'Badkal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1268, 1258, N'Ballabhgarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1269, 1258, N'Ballabhgarh Sector 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1270, 1258, N'Ballabhgarh Sector 60', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1271, 1258, N'Ballabhgarh Sector 62', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1272, 1258, N'Ballabhgarh Sector 64', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1273, 1258, N'Ballabhgarh Sector 65', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1274, 1258, N'Basantpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1275, 1258, N'Bhopani Village', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1276, 1258, N'Bptp', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1277, 1258, N'Chandpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1278, 1258, N'Charmwood Village', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1279, 1258, N'Chawla Colony Ballabgarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1280, 1258, N'Dayal Bagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1281, 1258, N'Dayal Bagh Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1282, 1258, N'Dayal Basti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1283, 1258, N'Dayalpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1284, 1258, N'Dhatir', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1285, 1258, N'Dhauj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1286, 1258, N'Escorts Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1287, 1258, N'Factory Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1288, 1258, N'Faridabad Sector', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1289, 1258, N'Faridpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1290, 1258, N'Feroz Gandhi Nagar Faridabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1291, 1258, N'Friends Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1292, 1258, N'Frontier Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1293, 1258, N'Fruit Garden', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1294, 1258, N'Gandhi Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1295, 1258, N'Gopi Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1296, 1258, N'Grain Market Palwal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1297, 1258, N'Green Fields Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1298, 1258, N'Green Valley', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1299, 1258, N'Gt Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1300, 1258, N'Gurukul Basti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1301, 1258, N'Gurukul Indraprashtha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1302, 1258, N'Gurukul Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1303, 1258, N'Hardware Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1304, 1258, N'Hassanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1305, 1258, N'Hathin', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1306, 1258, N'Hodal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1307, 1258, N'Indraprastha Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1308, 1258, N'Industrial Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1309, 1258, N'Industrial Area Phase 1', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1310, 1258, N'Industrial Area Phase 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1311, 1258, N'Bank MoreIndustrial Area Phase 3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1312, 1258, N'Janauli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1313, 1258, N'Jawahar Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1314, 1258, N'Jawahar Nagar Palwal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1315, 1258, N'Jiwan Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1316, 1258, N'Kant Enclave', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1317, 1258, N'Kapra Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1318, 1258, N'Katan Pahari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1319, 1258, N'Khedi Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1320, 1258, N'Kot', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1321, 1258, N'Kurali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1322, 1258, N'Lakarpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1323, 1258, N'Manjhawali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1324, 1258, N'Manpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1325, 1258, N'Mathura Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1326, 1258, N'Mewala Maharajpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1327, 1258, N'Mohna', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1328, 1258, N'Molarband Extension', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1329, 1258, N'Mujesar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1330, 1258, N'Neelam Chowk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1331, 1258, N'Neharpar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1332, 1258, N'Nehru Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1333, 1258, N'New Bhoor Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1334, 1258, N'New Faridabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1335, 1258, N'New Industrial Township', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1336, 1258, N'New Industrial Township 1', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1337, 1258, N'New Industrial Township 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1338, 1258, N'New Industrial Township 3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1339, 1258, N'New Industrial Township 3a', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1340, 1258, N'New Industrial Township 4', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1341, 1258, N'New Industrial Township 5', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1342, 1258, N'Nhpc Colony Faridabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1343, 1258, N'Old Faridabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1344, 1258, N'Palwal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1345, 1258, N'Panhera Khurd', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1346, 1258, N'Parvatiya Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1347, 1258, N'Press Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1348, 1258, N'Prithla', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1349, 1258, N'Rose Garden', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1350, 1258, N'Sainik Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1351, 1258, N'Saran', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1352, 1258, N'Sector 10', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1353, 1258, N'Sector 11', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1354, 1258, N'Sector 11', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1355, 1258, N'Sector 12', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1356, 1258, N'Sector 13', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1357, 1258, N'Sector 14', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1358, 1258, N'Sector 15', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1359, 1258, N'Sector 15a', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1360, 1258, N'Sector 16', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1361, 1258, N'Sector 16a', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1362, 1258, N'Sector 17', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1363, 1258, N'Sector 18a', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1364, 1258, N'Sector 19', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1365, 1258, N'Sector 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1366, 1258, N'Sector 20', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1367, 1258, N'Sector 20a', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1368, 1258, N'Sector 20b', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1369, 1258, N'Sector 21a', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1370, 1258, N'Sector 21b', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1371, 1258, N'Sector 21c', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1372, 1258, N'Sector 21d', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1373, 1258, N'Sector 22', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1374, 1258, N'Sector 23', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1375, 1258, N'Sector 24', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1376, 1258, N'Sector 25', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1377, 1258, N'Sector 27', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1378, 1258, N'Sector 27a', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1379, 1258, N'Sector 27b', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1380, 1258, N'Sector 27c', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1381, 1258, N'Sector 27d', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1382, 1258, N'Sector 29', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1383, 1258, N'Sector 3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1384, 1258, N'Sector 30', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1385, 1258, N'Sector 31', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1386, 1258, N'Sector 33', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1387, 1258, N'Sector 34', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1388, 1258, N'Sector 35', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1389, 1258, N'Sector 36', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1390, 1258, N'Sector 37', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1391, 1258, N'Sector 39', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1392, 1258, N'Sector 4', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1393, 1258, N'Sector 41', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1394, 1258, N'Sector 43', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1395, 1258, N'Sector 46', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1396, 1258, N'Sector 48', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1397, 1258, N'Sector 49', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1398, 1258, N'Sector 5', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1399, 1258, N'Sector 55', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1400, 1258, N'Sector 56a', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1401, 1258, N'Sector 57', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1402, 1258, N'Sector 58', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1403, 1258, N'Sector 59', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1404, 1258, N'Sector 6', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1405, 1258, N'Sector 62', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1406, 1258, N'Sector 64', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1407, 1258, N'Sector 65', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1408, 1258, N'Sector 7', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1409, 1258, N'Sector 75', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1410, 1258, N'Sector 76', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1411, 1258, N'Sector 78', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1412, 1258, N'Sector 79', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1413, 1258, N'Sector 8', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1414, 1258, N'Sector 80', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1415, 1258, N'Sector 81', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1416, 1258, N'Sector 82', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1417, 1258, N'Sector 85', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1418, 1258, N'Sector 86', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1419, 1258, N'Sector 87', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1420, 1258, N'Sector 88', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1421, 1258, N'Sector 9', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1422, 1258, N'Sector 91', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1423, 1258, N'Shastri Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1424, 1258, N'Shiv Durga Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1425, 1258, N'Sihol', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1426, 1258, N'Suraj Kund', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1427, 1258, N'Surya Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1428, 1258, N'Tigaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1429, 1258, N'Tilpat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1430, 1258, N'Uttawar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1431, 1258, N'Yadav Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1432, 0, N'Gandhinagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1433, 1432, N'Adalaj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1434, 1432, N'Airport Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1435, 1432, N'Anand Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1436, 1432, N'Bhat Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1437, 1432, N'Ch Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1438, 1432, N'Chandkheda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1439, 1432, N'Chiloda Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1440, 1432, N'Dahegam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1441, 1432, N'Infocity', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1442, 1432, N'Ioc Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1443, 1432, N'Janta Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1444, 1432, N'Kalol', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1445, 1432, N'Karnavati Society', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1446, 1432, N'Khatraj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1447, 1432, N'Kolavada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1448, 1432, N'Kudasan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1449, 1432, N'Mahudi Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1450, 1432, N'Mansa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1451, 1432, N'Mehsana Highway', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1452, 1432, N'Motera', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1453, 1432, N'Panchdev Temple Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1454, 1432, N'Ratanpar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1455, 1432, N'Rayasan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1456, 1432, N'Rupal Village', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1457, 1432, N'Sargasan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1458, 1432, N'Sarkhej Gandhinagar Highway', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1459, 1432, N'Sector 11', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1460, 1432, N'Sector 16', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1461, 1432, N'Sector 17', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1462, 1432, N'Sector 19', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1463, 1432, N'Sector 20', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1464, 1432, N'Sector 21', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1465, 1432, N'Sector 22', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1466, 1432, N'Sector 23', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1467, 1432, N'Sector 28', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1468, 1432, N'Sector 29', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1469, 1432, N'Sector 30', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1470, 1432, N'Sector 6', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1471, 1432, N'Sector 7', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1472, 1432, N'Sector 9', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1473, 0, N'Ghaziabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1474, 1473, N'Ahinsa Khand 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1475, 1473, N'Ajnara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1476, 1473, N'Alipur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1477, 1473, N'Amarpali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1478, 1473, N'Ambedkar Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1479, 1473, N'Ambedkar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1480, 1473, N'Amrit Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1481, 1473, N'Anand Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1482, 1473, N'Ankur Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1483, 1473, N'Arthala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1484, 1473, N'Arya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1485, 1473, N'Ashok Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1486, 1473, N'Ashok Vatika', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1487, 1473, N'Athsaini', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1488, 1473, N'Atrauli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1489, 1473, N'Avaidyakhand', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1490, 1473, N'Baba Bhim Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1491, 1473, N'Babugarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1492, 1473, N'Bagh Bhathyari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1493, 1473, N'Bagpat Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1494, 1473, N'Bahadurgarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1495, 1473, N'Bamheta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1496, 1473, N'Bank Enclave', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1497, 1473, N'Bankhanda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1498, 1473, N'Behta Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1499, 1473, N'Behta Hajipur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1500, 1473, N'Bel Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1501, 1473, N'Berhampur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1502, 1473, N'Bharat Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1503, 1473, N'Bhatiyana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1504, 1473, N'Bhopura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1505, 1473, N'Bhuapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1506, 1473, N'Bhur Bharat Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1507, 1473, N'Bihari Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1508, 1473, N'Biharipur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1509, 1473, N'Bihuni', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1510, 1473, N'Bisokhar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1511, 1473, N'Brij Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1512, 1473, N'Brindavan Garden Extension', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1513, 1473, N'Bulandshahar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1514, 1473, N'Bulandshahr Road Industrial Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1515, 1473, N'Chamri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1516, 1473, N'Chander Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1517, 1473, N'Chhajjupur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1518, 1473, N'Chikambarpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1519, 1473, N'Chipiyana Buzurg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1520, 1473, N'Chiranjeev Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1521, 1473, N'Christian Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1522, 1473, N'Crossings Republik', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1523, 1473, N'Dadri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1524, 1473, N'Dahana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1525, 1473, N'Dasna', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1526, 1473, N'Dasna Gate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1527, 1473, N'Daulatpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1528, 1473, N'Dayanand Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1529, 1473, N'Delhi Ghaziabad Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1530, 1473, N'Delhi Meerut Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1531, 1473, N'Dhanaura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1532, 1473, N'Dhara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1533, 1473, N'Dilshad Plaza', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1534, 1473, N'Doohri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1535, 1473, N'Dotai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1536, 1473, N'Dr. Ambedkar Marg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1537, 1473, N'Dujana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1538, 1473, N'Dundahera', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1539, 1473, N'Duryai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1540, 1473, N'Faridnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1541, 1473, N'Gagan Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1542, 1473, N'Ganeshpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1543, 1473, N'Garhi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1544, 1473, N'Garhmukteshwar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1545, 1473, N'Ghantaghar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1546, 1473, N'Ghukna', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1547, 1473, N'Gohrs Alamgirpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1548, 1473, N'Govindpuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1549, 1473, N'Govindpuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1550, 1473, N'Gt Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1551, 1473, N'Gulab Vatika', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1552, 1473, N'Gyan Khand', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1553, 1473, N'Gyan Khand 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1554, 1473, N'Haidarpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1555, 1473, N'Hapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1556, 1473, N'Hapur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1557, 1473, N'Harbans Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1558, 1473, N'Harsaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1559, 1473, N'Hasanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1560, 1473, N'Hi Tech City', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1561, 1473, N'Hindon Air Force', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1562, 1473, N'Hindon Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1563, 1473, N'Hydle Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1564, 1473, N'Indirapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1565, 1473, N'Indraprastha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1566, 1473, N'Industrial Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1567, 1473, N'Industrial Area Phase 3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1568, 1473, N'Islam Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1569, 1473, N'Jalalabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1570, 1473, N'Jassipura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1571, 1473, N'Jhandapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1572, 1473, N'Johri Enclave', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1573, 1473, N'Kailash Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1574, 1473, N'Kakra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1575, 1473, N'Kalka Garhi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1576, 1473, N'Kallupura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1577, 1473, N'Kamla Nehru Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1578, 1473, N'Kanya Kalyanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1579, 1473, N'Karhera', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1580, 1473, N'Karkar Mandan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1581, 1473, N'Kaushambi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1582, 1473, N'Kavi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1583, 1473, N'Kavi Nagar Industrial Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1584, 1473, N'Kharkhari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1585, 1473, N'Khera', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1586, 1473, N'Kishan Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1587, 1473, N'Kotgaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1588, 1473, N'Krishna Apra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1589, 1473, N'Krishna Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1590, 1473, N'Lal Kuan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1591, 1473, N'Lohia Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1592, 1473, N'Loni', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1593, 1473, N'Maharajpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1594, 1473, N'Mahavir Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1595, 1473, N'Mahendrapuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1596, 1473, N'Mahmoodpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1597, 1473, N'Mahurali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1598, 1473, N'Makanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1599, 1473, N'Maliwara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1600, 1473, N'Mandola', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1601, 1473, N'Marium Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1602, 1473, N'Master Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1603, 1473, N'Mata Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1604, 1473, N'Mathurawali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1605, 1473, N'Mawai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1606, 1473, N'Meerut Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1607, 1473, N'Meerut Road Industrial Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1608, 1473, N'Mg Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1609, 1473, N'Mirzapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1610, 1473, N'Model Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1611, 1473, N'Modinagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1612, 1473, N'Mohan Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1613, 1473, N'Moheman Sarai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1614, 1473, N'Morta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1615, 1473, N'Mukund Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1616, 1473, N'Murad Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1617, 1473, N'Muradpur Janupura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1618, 1473, N'Nagla Akhu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1619, 1473, N'Nagola', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1620, 1473, N'Nai Basti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1621, 1473, N'Nandgram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1622, 1473, N'Nanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1623, 1473, N'Nasbandi Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1624, 1473, N'Nasirpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1625, 1473, N'Nava Jeevan Leprosy Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1626, 1473, N'Naya Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1627, 1473, N'Nehru Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1628, 1473, N'Nehru Nagar Ii', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1629, 1473, N'Nehru Nagar Iii', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1630, 1473, N'New Vijay Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1631, 1473, N'Nh 24', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1632, 1473, N'Nh 42', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1633, 1473, N'Nh 58', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1634, 1473, N'Niti Khand', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1635, 1473, N'Niti Khand 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1636, 1473, N'Niti Khand 3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1637, 1473, N'Niwari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1638, 1473, N'Noor Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1639, 1473, N'Noorpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1640, 1473, N'Nova Block', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1641, 1473, N'Old Ghaziabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1642, 1473, N'Old Raj Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1643, 1473, N'Opera', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1644, 1473, N'Painga', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1645, 1473, N'Panchsheel Enclave', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1646, 1473, N'Pandav Nagar Industrial Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1647, 1473, N'Pasonda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1648, 1473, N'Patel Marg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1649, 1473, N'Patel Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1650, 1473, N'Patla', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1651, 1473, N'Pilkhuwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1652, 1473, N'Pratap Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1653, 1473, N'Prem Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1654, 1473, N'Radha Kunj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1655, 1473, N'Raghunathpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1656, 1473, N'Rahul Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1657, 1473, N'Railway Road Hapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1658, 1473, N'Railway Station Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1659, 1473, N'Raispur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1660, 1473, N'Raj Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1661, 1473, N'Raj Nagar Extension', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1662, 1473, N'Rajapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1663, 1473, N'Rajendra Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1664, 1473, N'Rajiv Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1665, 1473, N'Rajiv Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1666, 1473, N'Rajnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1667, 1473, N'Ram Prastha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1668, 1473, N'Ramprastha Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1669, 1473, N'Rampuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1670, 1473, N'Ramteram Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1671, 1473, N'Rasulpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1672, 1473, N'Rati Ram Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1673, 1473, N'Ritu Ram Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1674, 1473, N'Sadarpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1675, 1473, N'Sadiqpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1676, 1473, N'Sahibabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1677, 1473, N'Sahibabad Industrial Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1678, 1473, N'Saidpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1679, 1473, N'Salarpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1680, 1473, N'Samaipur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1681, 1473, N'Sanjay Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1682, 1473, N'Sanjay Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1683, 1473, N'Sapnawat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1684, 1473, N'Sara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1685, 1473, N'Sarai Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1686, 1473, N'Sarvodaya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1687, 1473, N'Sector 11', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1688, 1473, N'Sector 12', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1689, 1473, N'Sector 12', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1690, 1473, N'Sector 13', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1691, 1473, N'Sector 15', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1692, 1473, N'Sector 16', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1693, 1473, N'Sector 17', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1694, 1473, N'Sector 18', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1695, 1473, N'Sector 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1696, 1473, N'Sector 23', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1697, 1473, N'Sector 27', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1698, 1473, N'Sector 3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1699, 1473, N'Sector 3a', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1700, 1473, N'Sector 4', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1701, 1473, N'Sector 5', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1702, 1473, N'Sector 6', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1703, 1473, N'Sector 62', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1704, 1473, N'Sector 7', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1705, 1473, N'Sector 9', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1706, 1473, N'Sehani Khurd', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1707, 1473, N'Sewa Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1708, 1473, N'Shahjahanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1709, 1473, N'Shahpur Bamheta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1710, 1473, N'Shakti Khand', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1711, 1473, N'Shakti Khand 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1712, 1473, N'Shakti Khand 3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1713, 1473, N'Shalimar Garden', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1714, 1473, N'Shalimar Garden Extension 1', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1715, 1473, N'Shalimar Garden Extension 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1716, 1473, N'Shanti Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1717, 1473, N'Sharpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1718, 1473, N'Shastri Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1719, 1473, N'Shayam Enclave', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1720, 1473, N'Shibban Pura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1721, 1473, N'Shipra Sun City', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1722, 1473, N'Shivpuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1723, 1473, N'Shyam Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1724, 1473, N'Shyam Park Extension', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1725, 1473, N'Sikandarpur Kakori', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1726, 1473, N'Sikri Kalan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1727, 1473, N'Site 2 Loni Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1728, 1473, N'Site 4 Sahibabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1729, 1473, N'Surya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1730, 1473, N'Tibra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1731, 1473, N'Tronica City', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1732, 1473, N'Turab Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1733, 1473, N'Tyori', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1734, 1473, N'Vaishali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1735, 1473, N'Vaishali Sector 1', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1736, 1473, N'Vaishali Sector 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1737, 1473, N'Vaishali Sector 4', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1738, 1473, N'Vaishali Sector 5', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1739, 1473, N'Vaishali Sector 6', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1740, 1473, N'Vaishali Sector 9', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1741, 1473, N'Vasundhara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1742, 1473, N'Vijay Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1743, 1473, N'Vivekanand Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1744, 0, N'Goa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1745, 1744, N'Agassaim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1746, 1744, N'Aldona', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1747, 1744, N'Anjuna', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1748, 1744, N'Arossim Beach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1749, 1744, N'Assagao', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1750, 1744, N'Assonora', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1751, 1744, N'Baga Beach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1752, 1744, N'Baina Beach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1753, 1744, N'Bardez', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1754, 1744, N'Bastora', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1755, 1744, N'Benaliom', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1756, 1744, N'Betalbatim Beach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1757, 1744, N'Bicholim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1758, 1744, N'Borda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1759, 1744, N'Britona', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1760, 1744, N'Calangute', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1761, 1744, N'Calvim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1762, 1744, N'Canacona', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1763, 1744, N'Candolim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1764, 1744, N'Cansaulim Beach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1765, 1744, N'Carmona', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1766, 1744, N'Carona', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1767, 1744, N'Cavelossim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1768, 1744, N'Chandor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1769, 1744, N'Chapora Beach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1770, 1744, N'Chicalim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1771, 1744, N'Chinchinim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1772, 1744, N'Codal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1773, 1744, N'Colva Beach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1774, 1744, N'Corjuem', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1775, 1744, N'Cortalim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1776, 1744, N'Cunchelim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1777, 1744, N'Cuncolim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1778, 1744, N'Curchorem', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1779, 1744, N'Curti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1780, 1744, N'Curtorim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1781, 1744, N'Damal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1782, 1744, N'Dhargal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1783, 1744, N'Dodamarg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1784, 1744, N'Goa Velha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1785, 1744, N'Hansa Beach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1786, 1744, N'Jayceenagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1787, 1744, N'Kegdovelim Beach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1788, 1744, N'Kesarvale', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1789, 1744, N'Khadpabandh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1790, 1744, N'Macasana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1791, 1744, N'Madgaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1792, 1744, N'Madkai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1793, 1744, N'Majorda Beach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1794, 1744, N'Mapusa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1795, 1744, N'Mardol', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1796, 1744, N'Mashen', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1797, 1744, N'Moira Village', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1798, 1744, N'Mollem National Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1799, 1744, N'Mormugao', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1800, 1744, N'Nagoa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1801, 1744, N'Nagorcem', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1802, 1744, N'Navelim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1803, 1744, N'Nessai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1804, 1744, N'Ozran Beach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1805, 1744, N'Panaji', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1806, 1744, N'Parra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1807, 1744, N'Penha-De-Franca', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1808, 1744, N'Poinguinim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1809, 1744, N'Ponda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1810, 1744, N'Porvorim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1811, 1744, N'Pundalik Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1812, 1744, N'Quepem', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1813, 1744, N'Raia', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1814, 1744, N'Saligao', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1815, 1744, N'Sancoale', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1816, 1744, N'Sanguem', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1817, 1744, N'Shantinagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1818, 1744, N'Siolim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1819, 1744, N'Sunset Beach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1820, 1744, N'Talaulim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1821, 1744, N'Tisk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1822, 1744, N'Tiswadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1823, 1744, N'Tivim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1824, 1744, N'Utorda beach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1825, 1744, N'Vagator', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1826, 1744, N'Varca', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1827, 1744, N'Vasco', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1828, 1744, N'Zambaulim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1829, 0, N'Gurgaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1830, 1829, N'Alawardi Sarai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1831, 1829, N'Ashok Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1832, 1829, N'Basai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1833, 1829, N'Daulatabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1834, 1829, N'DLF Phase 1', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1835, 1829, N'DLF Phase 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1836, 1829, N'DLF Phase 3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1837, 1829, N'DLF Phase 4', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1838, 1829, N'DLF Phase 5', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1839, 1829, N'DLF Qutub Enclave', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1840, 1829, N'IFFCO Chowk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1841, 1829, N'Maruti Udyog', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1842, 1829, N'New Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1843, 1829, N'Om Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1844, 1829, N'Palam Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1845, 1829, N'Richmond Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1846, 1829, N'Sector 1', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1847, 1829, N'Sector 10', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1848, 1829, N'Sector 12', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1849, 1829, N'Sector 13', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1850, 1829, N'Sector 14', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1851, 1829, N'Sector 15', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1852, 1829, N'Sector 16', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1853, 1829, N'Sector 17', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1854, 1829, N'Sector 18', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1855, 1829, N'Sector 19', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1856, 1829, N'Sector 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1857, 1829, N'Sector 20', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1858, 1829, N'Sector 21', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1859, 1829, N'Sector 22', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1860, 1829, N'Sector 23', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1861, 1829, N'Sector 23A', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1862, 1829, N'Sector 27', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1863, 1829, N'Sector 28', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1864, 1829, N'Sector 28', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1865, 1829, N'Sector 29', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1866, 1829, N'Sector 3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1867, 1829, N'Sector 31', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1868, 1829, N'Sector 32', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1869, 1829, N'Sector 33', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1870, 1829, N'Sector 34', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1871, 1829, N'Sector 35', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1872, 1829, N'Sector 37', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1873, 1829, N'Sector 38', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1874, 1829, N'Sector 39', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1875, 1829, N'Sector 4', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1876, 1829, N'Sector 40', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1877, 1829, N'Sector 42', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1878, 1829, N'Sector 43', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1879, 1829, N'Sector 45', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1880, 1829, N'Sector 46', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1881, 1829, N'Sector 47', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1882, 1829, N'Sector 49', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1883, 1829, N'Sector 5', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1884, 1829, N'Sector 52', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1885, 1829, N'Sector 53', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1886, 1829, N'Sector 6', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1887, 1829, N'Sector 7', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1888, 1829, N'Sector 8', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1889, 1829, N'Sector 9', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1890, 1829, N'Shakuntala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1891, 1829, N'Sikandarpur Ghosi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1892, 1829, N'Sohna Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1893, 1829, N'Sushant Lok', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1894, 1829, N'Town House', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1895, 1829, N'Udyog Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1896, 1829, N'Wazirabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1897, 0, N'Guwahati', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1898, 1897, N'4 Lane Expressway', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1899, 1897, N'6th Mile', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1900, 1897, N'Ambari Fatasil', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1901, 1897, N'Amingaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1902, 1897, N'Ananda Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1903, 1897, N'Azara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1904, 1897, N'Baghorbori', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1905, 1897, N'Basistha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1906, 1897, N'Beltola', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1907, 1897, N'Bhangagarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1908, 1897, N'Bharalumukh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1909, 1897, N'Bhetapara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1910, 1897, N'Borbari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1911, 1897, N'Ck Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1912, 1897, N'Dharandha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1913, 1897, N'Dispur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1914, 1897, N'Ganesh Mandir Path', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1915, 1897, N'Gopinath Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1916, 1897, N'Gotanagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1917, 1897, N'Gs Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1918, 1897, N'Guwahati Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1919, 1897, N'Guwahati University', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1920, 1897, N'Guwahati-shillong Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1921, 1897, N'Hatigaon Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1922, 1897, N'Jatia', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1923, 1897, N'Jayanagar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1924, 1897, N'Kahilipara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1925, 1897, N'Kamakshya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1926, 1897, N'Khanapara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1927, 1897, N'Kharghuli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1928, 1897, N'Kharugli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1929, 1897, N'Narangi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1930, 1897, N'Nn Barua Path', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1931, 1897, N'Noonmati', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1932, 1897, N'North Guwahati', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1933, 1897, N'Pandu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1934, 1897, N'Panjabari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1935, 1897, N'Rehabari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1936, 1897, N'Rg Baruah Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1937, 1897, N'Rukmininagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1938, 1897, N'Satgaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1939, 1897, N'Sewali Path', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1940, 1897, N'Silpukhuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1941, 1897, N'Ulubari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1942, 1897, N'Uzanbazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1943, 1897, N'Vip Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1944, 1897, N'West Jalukbari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1945, 0, N'Gwalior', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1946, 1945, N'Aditya Purum', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1947, 1945, N'Alkapuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1948, 1945, N'Amkhoh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1949, 1945, N'Army Bazariya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1950, 1945, N'Balajidham', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1951, 1945, N'Birla Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1952, 1945, N'Chana Kothar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1953, 1945, N'City Centre', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1954, 1945, N'Deedwana Oli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1955, 1945, N'Gadaipura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1956, 1945, N'Ghasmandi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1957, 1945, N'Ghauspura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1958, 1945, N'Gol Pahariya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1959, 1945, N'Jivaji Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1960, 1945, N'Kala Saiyad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1961, 1945, N'Kendriya Vidyalaya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1962, 1945, N'Laltipara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1963, 1945, N'Lashkar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1964, 1945, N'Laxmi Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1965, 1945, N'Loha Mandi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1966, 1945, N'Mahalgaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1967, 1945, N'Maharajpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1968, 1945, N'Maheshpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1969, 1945, N'Motijheel', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1970, 1945, N'Nimbaji Ki Khoh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1971, 1945, N'Ramji Ka Pura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1972, 1945, N'Ranipura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1973, 1945, N'River View Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1974, 1945, N'Rs Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1975, 1945, N'Sadar Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1976, 1945, N'Shekh Ki Bagiya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1977, 1945, N'Shinde Ki Chhaoni', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1978, 1945, N'Shivaji Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1979, 1945, N'Sirol Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1980, 1945, N'Tansen Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1981, 1945, N'Tekanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1982, 1945, N'Thatipur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1983, 1945, N'Tighra Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1984, 1945, N'Vijay Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1985, 0, N'Hisar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1986, 1985, N'Barwala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1987, 1985, N'Hansi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1988, 0, N'Hubli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1989, 1988, N'Akshay Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1990, 1988, N'Arvind Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1991, 1988, N'Ayodhya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1992, 1988, N'Basavanna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1993, 1988, N'Bidnal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1994, 1988, N'Chalukya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1995, 1988, N'Chanbasweshwar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1996, 1988, N'Chhanapet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1997, 1988, N'Gandhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1998, 1988, N'Heggeri Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (1999, 1988, N'Herepet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2000, 1988, N'Hubli Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2001, 1988, N'Indra Prastha Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2002, 1988, N'J P Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2003, 1988, N'Kalidas Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2004, 1988, N'Kamaripeth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2005, 1988, N'Keshavpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2006, 1988, N'Khalur Layout', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2007, 1988, N'Kolekar Plot', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2008, 1988, N'Kori', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2009, 1988, N'Kumara Vyasa Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2010, 1988, N'Lingarajnagar North', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2011, 1988, N'Lingarajnagar south', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2012, 1988, N'M.T.S. Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2013, 1988, N'Manjunath Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2014, 1988, N'Mayuri Estate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2015, 1988, N'Munneshwar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2016, 1988, N'Navayoudha Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2017, 1988, N'Nehru Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2018, 1988, N'Nekar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2019, 1988, N'New Hubli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2020, 1988, N'Old Hubli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2021, 1988, N'Omsai Purshottam Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2022, 1988, N'Padmaraj Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2023, 1988, N'Prabhat Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2024, 1988, N'Prashant Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2025, 1988, N'Priyadarshini Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2026, 1988, N'Rajendra Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2027, 1988, N'Renuka Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2028, 1988, N'Sadashiv Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2029, 1988, N'Sahadev Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2030, 1988, N'Santosh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2031, 1988, N'Shettar Layout', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2032, 1988, N'Shimla Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2033, 1988, N'Shivshankar Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2034, 1988, N'Subhash Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2035, 1988, N'UKT Hills', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2036, 1988, N'Unkal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2037, 1988, N'Venkteshwar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2038, 1988, N'Vidya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2039, 1988, N'Vijay Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2040, 1988, N'Vikas Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2041, 0, N'Hyderabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2042, 2041, N'Abids', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2043, 2041, N'Adarsh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2044, 2041, N'Afzalgunj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2045, 2041, N'Amberpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2046, 2041, N'Ameerpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2047, 2041, N'Ashok Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2048, 2041, N'Attapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2049, 2041, N'Azamabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2050, 2041, N'Baghlingampally', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2051, 2041, N'Bahadurpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2052, 2041, N'Bala Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2053, 2041, N'Balkampet Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2054, 2041, N'Banjara Hills', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2055, 2041, N'Bank Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2056, 2041, N'Bansilalpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2057, 2041, N'Begumbazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2058, 2041, N'Begumpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2059, 2041, N'Bharath Nagar Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2060, 2041, N'Boggulkunta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2061, 2041, N'Bolarum', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2062, 2041, N'Bowenpally', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2063, 2041, N'Chaitanya Puri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2064, 2041, N'Chanchal guda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2065, 2041, N'Chanda Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2066, 2041, N'Charminar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2067, 2041, N'Cherlapalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2068, 2041, N'Chikkadpally', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2069, 2041, N'Chirag Ali Lane', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2070, 2041, N'Dammaiguda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2071, 2041, N'Dhoolpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2072, 2041, N'Dilsukh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2073, 2041, N'Erragadda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2074, 2041, N'Erramanzil', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2075, 2041, N'Gachibowli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2076, 2041, N'Gaddi annaram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2077, 2041, N'General Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2078, 2041, N'Gun Foundry', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2079, 2041, N'Habshiguda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2080, 2041, N'Hafeezpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2081, 2041, N'Hakeempet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2082, 2041, N'Hayat Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2083, 2041, N'Hi Tech City', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2084, 2041, N'Hill Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2085, 2041, N'Himayat Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2086, 2041, N'Hyderguda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2087, 2041, N'IDA Kattedan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2088, 2041, N'Jubilee Hills', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2089, 2041, N'Kachiguda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2090, 2041, N'Kanchanbagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2091, 2041, N'Khairatabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2092, 2041, N'King Koti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2093, 2041, N'Kompalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2094, 2041, N'Kothaguda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2095, 2041, N'Koti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2096, 2041, N'Kukatpally', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2097, 2041, N'Kushaiguda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2098, 2041, N'Lakdi ka pul', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2099, 2041, N'Lalbahadur Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2100, 2041, N'Lallaguda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2101, 2041, N'M G Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2102, 2041, N'Madhapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2103, 2041, N'Maharaj Gunj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2104, 2041, N'Mahendra Hills', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2105, 2041, N'Malkajgiri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2106, 2041, N'Marredpally', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2107, 2041, N'Masab Tank', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2108, 2041, N'Medchal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2109, 2041, N'Mehdipatnam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2110, 2041, N'Miyapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2111, 2041, N'Moosapet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2112, 2041, N'Moula Ali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2113, 2041, N'Mushirabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2114, 2041, N'Nacharam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2115, 2041, N'Nallagandla', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2116, 2041, N'Nampalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2117, 2041, N'Neredment', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2118, 2041, N'New Nallakunta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2119, 2041, N'Nizampet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2120, 2041, N'Old Malakpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2121, 2041, N'Padmarao Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2122, 2041, N'Panjagutta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2123, 2041, N'Park Lane', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2124, 2041, N'Patancheru', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2125, 2041, N'R.C Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2126, 2041, N'Rajendra Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2127, 2041, N'Ramanthapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2128, 2041, N'Ramkoti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2129, 2041, N'Ramoji Film City', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2130, 2041, N'Red Hills', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2131, 2041, N'RTC Cross Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2132, 2041, N'Safilguda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2133, 2041, N'Saifabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2134, 2041, N'Sainikpuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2135, 2041, N'Sanath Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2136, 2041, N'Sanjeeva Reddy Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2137, 2041, N'Santosh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2138, 2041, N'Saroornagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2139, 2041, N'Serilingampally', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2140, 2041, N'Sindhi Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2141, 2041, N'Somajiguda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2142, 2041, N'Srinagar Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2143, 2041, N'Tank Bund Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2144, 2041, N'Tarnaka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2145, 2041, N'Tilak Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2146, 2041, N'Tolichowki', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2147, 2041, N'Trimulgherry', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2148, 2041, N'Uppal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2149, 2041, N'Upparpalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2150, 2041, N'Vanastali Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2151, 2041, N'Vengal Rao Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2152, 2041, N'Vidyanagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2153, 2041, N'Vikrampuri Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2154, 2041, N'West Marredpally', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2155, 2041, N'Yellareddiguda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2156, 2041, N'Yousufguda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2157, 0, N'Indore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2158, 2157, N'A.B. Road.', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2159, 2157, N'Anoop Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2160, 2157, N'Azad Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2161, 2157, N'Bartan Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2162, 2157, N'Bhagirathpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2163, 2157, N'Bijalpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2164, 2157, N'Chattribagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2165, 2157, N'Chhitawad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2166, 2157, N'Dhanvantri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2167, 2157, N'Dwarkapuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2168, 2157, N'Goyal Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2169, 2157, N'Gwaltoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2170, 2157, N'Harsidhi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2171, 2157, N'Indore Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2172, 2157, N'Industrial Estate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2173, 2157, N'Jairampur Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2174, 2157, N'Janki Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2175, 2157, N'Jawahar Marg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2176, 2157, N'Juni Indore Railway Cross Rd', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2177, 2157, N'Kabir Khedi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2178, 2157, N'Kalani Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2179, 2157, N'Khajrana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2180, 2157, N'Lakshmibai Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2181, 2157, N'Lal Bagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2182, 2157, N'Lokmanya Nagar Indore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2183, 2157, N'Mahesh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2184, 2157, N'Malhar Ashram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2185, 2157, N'Malwa Mills', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2186, 2157, N'Manorama Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2187, 2157, N'Marimata Square', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2188, 2157, N'MG Road Police Station', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2189, 2157, N'MIG Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2190, 2157, N'Murai Mohalla', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2191, 2157, N'Nai Duniya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2192, 2157, N'Nanda Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2193, 2157, N'Navlakha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2194, 2157, N'Nehru Stadium', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2195, 2157, N'New Palasia', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2196, 2157, N'Palasia Square', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2197, 2157, N'Palda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2198, 2157, N'Patel Bridge', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2199, 2157, N'Patel Statue Circle', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2200, 2157, N'Pradeshi Pura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2201, 2157, N'R.N.T. Marg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2202, 2157, N'Radio Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2203, 2157, N'Raj Mohalla', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2204, 2157, N'Ramkrishna Bagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2205, 2157, N'Ratlam Kothi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2206, 2157, N'Regal Square', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2207, 2157, N'Ring Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2208, 2157, N'Sadar Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2209, 2157, N'Scheme No. 51', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2210, 2157, N'Shivaji Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2211, 2157, N'Shri Nath Mandir', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2212, 2157, N'Siyaganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2213, 2157, N'Sneh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2214, 2157, N'South Tukoganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2215, 2157, N'Sri Agrasen Vidyalaya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2216, 2157, N'Sudama Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2217, 2157, N'Tilak Nagar Main Rd', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2218, 2157, N'Vallabh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2219, 2157, N'Vijay Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2220, 2157, N'Vishnu puri Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2221, 2157, N'Vishram Bagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2222, 2157, N'Yeshwant Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2223, 0, N'Jabalpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2224, 2223, N'Barela', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2225, 2223, N'Bhedaghat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2226, 2223, N'Bilpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2227, 2223, N'Gorakhpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2228, 2223, N'Jabalpur Cantt', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2229, 2223, N'Katangi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2230, 2223, N'Khamaria', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2231, 2223, N'Majholi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2232, 2223, N'Mandla Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2233, 2223, N'Panagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2234, 2223, N'Patan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2235, 2223, N'Rampur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2236, 2223, N'Shahpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2237, 2223, N'Sihora', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2238, 2223, N'Tilhari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2239, 2223, N'Wright Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2240, 0, N'Jaipur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2241, 2240, N'Adarsh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2242, 2240, N'Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2243, 2240, N'Amba Bari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2244, 2240, N'Amber Fort Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2245, 2240, N'Ashok Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2246, 2240, N'AWHO Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2247, 2240, N'Bani Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2248, 2240, N'Bhawani Singh Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2249, 2240, N'Chandpol Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2250, 2240, N'Civil Lines', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2251, 2240, N'Dadu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2252, 2240, N'Dev nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2253, 2240, N'Ganpati Plaza', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2254, 2240, N'Gopinath Marg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2255, 2240, N'Hathroi Fort', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2256, 2240, N'Janpath', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2257, 2240, N'Jawahar nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2258, 2240, N'Jhotwara Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2259, 2240, N'Jirampura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2260, 2240, N'Johari Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2261, 2240, N'Kanakpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2262, 2240, N'M.I. Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2263, 2240, N'Mansarovar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2264, 2240, N'Mayor Vatika', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2265, 2240, N'Model Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2266, 2240, N'Moti Doongri Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2267, 2240, N'Muralipura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2268, 2240, N'New Sanganer Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2269, 2240, N'Nirwan Marg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2270, 2240, N'NRI Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2271, 2240, N'Panch Batti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2272, 2240, N'Pink City', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2273, 2240, N'Prem pura Village', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2274, 2240, N'Prithvi Raj Rd.', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2275, 2240, N'Railway Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2276, 2240, N'Raja Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2277, 2240, N'Ram Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2278, 2240, N'Sanganer', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2279, 2240, N'Sansar Chandra Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2280, 2240, N'Sardar Patel Marg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2281, 2240, N'Sawai Ram Singh Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2282, 2240, N'Shankar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2283, 2240, N'Shastri Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2284, 2240, N'Sikar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2285, 2240, N'Sindhi Camp', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2286, 2240, N'SL Marg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2287, 2240, N'Sodala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2288, 2240, N'Station Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2289, 2240, N'Subhash Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2290, 2240, N'Tilak Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2291, 2240, N'Tonk Phatak', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2292, 2240, N'Tonk Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2293, 2240, N'Topkhana Hazuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2294, 2240, N'Vaishalinagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2295, 2240, N'Vanasthali Marg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2296, 2240, N'Vishwakarma Industrial Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2297, 0, N'Jalandhar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2298, 2297, N'Adarsh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2299, 2297, N'Arjun Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2300, 2297, N'Avtar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2301, 2297, N'Bashirpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2302, 2297, N'Basti Bawa Khel', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2303, 2297, N'Basti Guzan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2304, 2297, N'Bhagat Singh Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2305, 2297, N'Bootan Mandi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2306, 2297, N'Burlton Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2307, 2297, N'Central Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2308, 2297, N'Choti Baradari I', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2309, 2297, N'Choti Baradari II', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2310, 2297, N'Dada Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2311, 2297, N'Dashmesh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2312, 2297, N'Defence Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2313, 2297, N'Dilbagh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2314, 2297, N'Focal Point', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2315, 2297, N'Garha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2316, 2297, N'Gobind Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2317, 2297, N'Green Model Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2318, 2297, N'Gujral Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2319, 2297, N'Gurbachan Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2320, 2297, N'Guru Gobind Singh Avenue', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2321, 2297, N'Guru Nanak Pura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2322, 2297, N'Harbans Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2323, 2297, N'Hardev Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2324, 2297, N'Hardyal Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2325, 2297, N'Industrial Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2326, 2297, N'Islam Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2327, 2297, N'J. P. Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2328, 2297, N'Jalandhar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2329, 2297, N'Jalandhar Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2330, 2297, N'Jalandhar Cantonment', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2331, 2297, N'Joginder Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2332, 2297, N'Kabir Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2333, 2297, N'Kaki Pind', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2334, 2297, N'Kalia Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2335, 2297, N'Kishanpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2336, 2297, N'Krishna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2337, 2297, N'Lajpat Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2338, 2297, N'Master Tara Singh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2339, 2297, N'Model House', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2340, 2297, N'Model Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2341, 2297, N'Moti Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2342, 2297, N'Neela Mahal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2343, 2297, N'New Jawahar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2344, 2297, N'Panch Nagar Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2345, 2297, N'Preet Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2346, 2297, N'Punjab Avenue', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2347, 2297, N'Qaji Mandi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2348, 2297, N'Railway Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2349, 2297, N'Rainak Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2350, 2297, N'Raj Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2351, 2297, N'Ram Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2352, 2297, N'Rama Mandi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2353, 2297, N'Santokh Pura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2354, 2297, N'Shahid Udham Singh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2355, 2297, N'Shakti Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2356, 2297, N'Shanti Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2357, 2297, N'Shiv Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2358, 2297, N'Sodal Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2359, 2297, N'Subhash Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2360, 2297, N'Suchi Pind', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2361, 2297, N'Urban Estate Phase I', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2362, 2297, N'Urban Estate Phase II', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2363, 2297, N'Vijay Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2364, 2297, N'Vikas Puri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2365, 0, N'Kalyan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2366, 2365, N'Adharwadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2367, 2365, N'Anandwadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2368, 2365, N'Beturkar Pada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2369, 2365, N'Chikan Ghar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2370, 2365, N'Gandhar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2371, 2365, N'Gopal Krishna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2372, 2365, N'Gouripada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2373, 2365, N'Hanuman Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2374, 2365, N'JijaMata Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2375, 2365, N'Joshibaug', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2376, 2365, N'Khadakpada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2377, 2365, N'Maharashtra State Transport Bus Depot', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2378, 2365, N'Manisha Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2379, 2365, N'Radha Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2380, 2365, N'Rambaug', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2381, 2365, N'Santosh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2382, 2365, N'Shivaji Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2383, 2365, N'Shivaji Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2384, 2365, N'Swanand Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2385, 2365, N'Tilak Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2386, 2365, N'Vijay Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2387, 2365, N'Vishnu Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2388, 0, N'Kanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2389, 2388, N'Ajith Ganj Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2390, 2388, N'Allenganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2391, 2388, N'Arya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2392, 2388, N'Ashok Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2393, 2388, N'Babu Purwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2394, 2388, N'Babu Purwa Labour Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2395, 2388, N'Barra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2396, 2388, N'Begam Purwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2397, 2388, N'Bhajja Purwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2398, 2388, N'Binayakpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2399, 2388, N'Brahm Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2400, 2388, N'Cantonment', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2401, 2388, N'Central Excise Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2402, 2388, N'Central Ordinance Depot', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2403, 2388, N'Chamanganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2404, 2388, N'Chandmari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2405, 2388, N'Civil Aerodrome', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2406, 2388, N'Civil Lines', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2407, 2388, N'Collectorganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2408, 2388, N'Colonelganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2409, 2388, N'Cooperganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2410, 2388, N'Dabauli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2411, 2388, N'Daheli Sujanpur KDA Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2412, 2388, N'Damodar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2413, 2388, N'Darshan Purva', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2414, 2388, N'Dhakna Purwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2415, 2388, N'Dhana Khori', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2416, 2388, N'Elgin Mills', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2417, 2388, N'Faithfulganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2418, 2388, N'Fazalganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2419, 2388, N'Gadarian Purwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2420, 2388, N'Gandhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2421, 2388, N'Geeta Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2422, 2388, N'General Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2423, 2388, N'Ghasiyari Mandi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2424, 2388, N'Govind Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2425, 2388, N'Green VillaTilak Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2426, 2388, N'Gujaini', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2427, 2388, N'Halwakhanda Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2428, 2388, N'Hans Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2429, 2388, N'Harsh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2430, 2388, N'Hatia', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2431, 2388, N'Idgah Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2432, 2388, N'Indian Institute of Technology, Kanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2433, 2388, N'Jarauli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2434, 2388, N'Jawahar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2435, 2388, N'JK Puri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2436, 2388, N'Kakadev', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2437, 2388, N'Kalyanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2438, 2388, N'Kanjar Purwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2439, 2388, N'Karrhi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2440, 2388, N'Kasimganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2441, 2388, N'Kesapur Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2442, 2388, N'Khalasi Lines', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2443, 2388, N'Khapra Mohal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2444, 2388, N'Khyora', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2445, 2388, N'Kidwai Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2446, 2388, N'Krishna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2447, 2388, N'Kursawan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2448, 2388, N'Lajpat Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2449, 2388, N'Lakhanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2450, 2388, N'Lakshmanbagh Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2451, 2388, N'Machhuwanagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2452, 2388, N'Maswanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2453, 2388, N'Mirpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2454, 2388, N'Munshi Purwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2455, 2388, N'N-4 Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2456, 2388, N'Nankari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2457, 2388, N'Naubasta West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2458, 2388, N'Naughara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2459, 2388, N'Nawabganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2460, 2388, N'Niralanagar Juhi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2461, 2388, N'Old Kanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2462, 2388, N'Panki', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2463, 2388, N'Parade', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2464, 2388, N'Param Purwa Juhi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2465, 2388, N'Permat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2466, 2388, N'Pratapganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2467, 2388, N'Rai Purwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2468, 2388, N'Ratan Lal Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2469, 2388, N'Ravidas Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2470, 2388, N'Rawatpur Government Officers Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2471, 2388, N'RBI Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2472, 2388, N'Sadr Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2473, 2388, N'Saina Purwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2474, 2388, N'Saraimita', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2475, 2388, N'Sarojini Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2476, 2388, N'Sarvodaya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2477, 2388, N'Shanti Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2478, 2388, N'Shastri Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2479, 2388, N'Shivaji Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2480, 2388, N'Shivpuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2481, 2388, N'Shyam Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2482, 2388, N'Suther Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2483, 2388, N'Swaraj Nagar Panki', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2484, 2388, N'Swaroop Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2485, 2388, N'Talaq Mahal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2486, 2388, N'Transport Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2487, 2388, N'Tulsi Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2488, 2388, N'Usmanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2489, 2388, N'Vishnu Puri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2490, 2388, N'Vivekanand Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2491, 2388, N'ashoda Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2492, 0, N'Kharagpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2493, 2492, N'Debra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2494, 2492, N'Inda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2495, 2492, N'Malancha Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2496, 2492, N'Midnapore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2497, 2492, N'Rabindra Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2498, 0, N'Kochi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2499, 2498, N'Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2500, 2498, N'Amaravathy', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2501, 2498, N'Cannon Shed Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2502, 2498, N'Chellanam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2503, 2498, N'Cherai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2504, 2498, N'Cheranallur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2505, 2498, N'Cherlai Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2506, 2498, N'Chittoor Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2507, 2498, N'Chullickal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2508, 2498, N'Club Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2509, 2498, N'Edakochi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2510, 2498, N'Edapally', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2511, 2498, N'Elamakkara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2512, 2498, N'Elamkunnapuzha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2513, 2498, N'Ernakulam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2514, 2498, N'Fort Cochin', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2515, 2498, N'Gandhi Square', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2516, 2498, N'Jos Junction', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2517, 2498, N'Kadamakudi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2518, 2498, N'Kadavanthra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2519, 2498, N'Kalamassery', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2520, 2498, N'Kaloor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2521, 2498, N'Kappalandimukku', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2522, 2498, N'Karuvelipady', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2523, 2498, N'Kochi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2524, 2498, N'Kochi Naval Base', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2525, 2498, N'Kothad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2526, 2498, N'Kunnumupuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2527, 2498, N'M.G. Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2528, 2498, N'Maradu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2529, 2498, N'Mulamthuruthy', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2530, 2498, N'Mulavucadu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2531, 2498, N'Mundamveli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2532, 2498, N'Nettoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2533, 2498, N'Palarivattom', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2534, 2498, N'Pallimukka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2535, 2498, N'Palluruthy', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2536, 2498, N'Pandikudy', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2537, 2498, N'Paravoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2538, 2498, N'Perumanoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2539, 2498, N'Perumbadappu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2540, 2498, N'Rose Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2541, 2498, N'Shanmugam Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2542, 2498, N'Station Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2543, 2498, N'Thammanam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2544, 2498, N'Thevara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2545, 2498, N'Thoppumpady', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2546, 2498, N'Tripunithura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2547, 2498, N'Vathuruthy', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2548, 2498, N'Veli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2549, 2498, N'Vennala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2550, 2498, N'Vyttila', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2551, 2498, N'Wellington Island', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2552, 0, N'Kohima', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2553, 2552, N'Agri Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2554, 2552, N'Bazaar Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2555, 2552, N'Forest Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2556, 2552, N'Hospital Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2557, 2552, N'Imphal Main Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2558, 2552, N'Jail Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2559, 2552, N'Jakhama', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2560, 2552, N'Kitsubozou', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2561, 2552, N'Lerie Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2562, 2552, N'Naga Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2563, 2552, N'Nagaland Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2564, 2552, N'Officers Hill Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2565, 2552, N'Phool Bari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2566, 2552, N'Science College', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2567, 2552, N'Upper Chandmari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2568, 0, N'Kolhapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2569, 2568, N'Ajara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2570, 2568, N'Ambewadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2571, 2568, N'Apte Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2572, 2568, N'Baba Jarag Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2573, 2568, N'Bhavani Mandap', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2574, 2568, N'Budhwar Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2575, 2568, N'Chalkaranji', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2576, 2568, N'Chandgad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2577, 2568, N'Chikhali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2578, 2568, N'Chinchwad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2579, 2568, N'Dasara Chowk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2580, 2568, N'Devkar Panand', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2581, 2568, N'Gadhinglaj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2582, 2568, N'Gadmudshingi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2583, 2568, N'Gajargaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2584, 2568, N'Gandhinagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2585, 2568, N'Ganeshwadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2586, 2568, N'Gangavesh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2587, 2568, N'Gokul Shirgaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2588, 2568, N'Gujari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2589, 2568, N'Guruwar Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2590, 2568, N'Hamidwada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2591, 2568, N'Hanmantwadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2592, 2568, N'Hanuman Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2593, 2568, N'Hanuman Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2594, 2568, N'Hupari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2595, 2568, N'Inchnal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2596, 2568, N'Jawaharnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2597, 2568, N'Jaysingpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2598, 2568, N'Kabnur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2599, 2568, N'Kagal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2600, 2568, N'Kalamba', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2601, 2568, N'Kalambe Turf Thane', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2602, 2568, N'Karve', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2603, 2568, N'Kasaba', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2604, 2568, N'Koparde', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2605, 2568, N'Korochi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2606, 2568, N'Kuditre', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2607, 2568, N'Kurundvad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2608, 2568, N'Lanja', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2609, 2568, N'Laxmipuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2610, 2568, N'Mahadev Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2611, 2568, N'Mahadwar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2612, 2568, N'Malkapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2613, 2568, N'Malwadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2614, 2568, N'Midc Gokul Shirgaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2615, 2568, N'Mirajkar Tikti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2616, 2568, N'Murgud', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2617, 2568, N'Nagaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2618, 2568, N'Narewadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2619, 2568, N'Nerli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2620, 2568, N'New Mahadwar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2621, 2568, N'New Shahupuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2622, 2568, N'Panhala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2623, 2568, N'Parite', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2624, 2568, N'Phulewadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2625, 2568, N'Pratibhanagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2626, 2568, N'Radhanagari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2627, 2568, N'Rajaram Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2628, 2568, N'Rajarampuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2629, 2568, N'Rajendra Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2630, 2568, N'Ramanand Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2631, 2568, N'Rankala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2632, 2568, N'Ruikar Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2633, 2568, N'Samrat Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2634, 2568, N'Sangavade', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2635, 2568, N'Shahupuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2636, 2568, N'Shiroli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2637, 2568, N'Shivaji Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2638, 2568, N'Sykes Extension', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2639, 2568, N'Takala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2640, 2568, N'Tapowan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2641, 2568, N'Tarabai Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2642, 2568, N'Tarabai Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2643, 2568, N'Tembe Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2644, 2568, N'Uchgaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2645, 2568, N'Ujalaiwadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2646, 2568, N'Vadgaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2647, 2568, N'Vadgaon Kasba', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2648, 2568, N'Vasagade', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2649, 2568, N'Vidyanagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2650, 2568, N'Vikram Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2651, 2568, N'Yadhav Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2652, 0, N'Kozhikode', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2653, 2652, N'Ashokapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2654, 2652, N'Balussery', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2655, 2652, N'Beach Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2656, 2652, N'Beypore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2657, 2652, N'Calicut Medical College', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2658, 2652, N'Chalappuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2659, 2652, N'Cherootty Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2660, 2652, N'Cheruvannur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2661, 2652, N'Chevayur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2662, 2652, N'Chulliyodu Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2663, 2652, N'Civil Station', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2664, 2652, N'East Hill Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2665, 2652, N'Elathur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2666, 2652, N'Eranhipalam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2667, 2652, N'Feroke', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2668, 2652, N'Govindapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2669, 2652, N'Indira Gandhi Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2670, 2652, N'Kalpetta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2671, 2652, N'Kannur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2672, 2652, N'Karuvanthuruthy', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2673, 2652, N'Kottaram Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2674, 2652, N'Kottooli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2675, 2652, N'Kottooly Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2676, 2652, N'Kovoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2677, 2652, N'Kunnamangalam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2678, 2652, N'Mankavu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2679, 2652, N'Mavoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2680, 2652, N'Meenchanda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2681, 2652, N'Mokeri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2682, 2652, N'Mukkom', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2683, 2652, N'Nadakkavu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2684, 2652, N'Olavanna', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2685, 2652, N'Palayad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2686, 2652, N'Palazhi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2687, 2652, N'Panicker Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2688, 2652, N'Panniyankara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2689, 2652, N'Pantheerankavu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2690, 2652, N'Parayancheri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2691, 2652, N'Pavamani', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2692, 2652, N'Perintalmanna', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2693, 2652, N'Poovattuparamba', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2694, 2652, N'Pottammal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2695, 2652, N'Pt Usha Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2696, 2652, N'Puthiyara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2697, 2652, N'Quilandy', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2698, 2652, N'Ram Mohan Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2699, 2652, N'Ramanattukara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2700, 2652, N'Red Cross Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2701, 2652, N'Thiruvannur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2702, 2652, N'Thondayad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2703, 2652, N'Thruvambady', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2704, 2652, N'Vadakara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2705, 2652, N'Vandipetta Jn', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2706, 2652, N'Vellayil', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2707, 2652, N'Vellimadukunnu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2708, 2652, N'Villiappally', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2709, 2652, N'West Hill', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2710, 2652, N'Ymca Cross Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2711, 0, N'Lucknow', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2712, 2711, N'A P Sabha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2713, 2711, N'Aishbagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2714, 2711, N'Alambagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2715, 2711, N'Alambagh Gurdwara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2716, 2711, N'Alamnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2717, 2711, N'Aliganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2718, 2711, N'Amausi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2719, 2711, N'Aminabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2720, 2711, N'Aminabad Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2721, 2711, N'Amrai gaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2722, 2711, N'Anand Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2723, 2711, N'Bakhshi Ka Talab', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2724, 2711, N'Bakhshi Ka Talab Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2725, 2711, N'Balmikinagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2726, 2711, N'Banthra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2727, 2711, N'Bhadrukh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2728, 2711, N'Blunt Square', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2729, 2711, N'Cantonment Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2730, 2711, N'Charbagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2731, 2711, N'Chauk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2732, 2711, N'Chinhat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2733, 2711, N'CIMAP', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2734, 2711, N'City Mall', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2735, 2711, N'Daliganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2736, 2711, N'East End Mall', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2737, 2711, N'Faizabad Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2738, 2711, N'Fun Republic Mall', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2739, 2711, N'Ganesh Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2740, 2711, N'Ghanta Ghar Talab', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2741, 2711, N'Ghasyari Mandi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2742, 2711, N'Gomati Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2743, 2711, N'Gosainganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2744, 2711, N'Guru Teg Bahadur Gurudwara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2745, 2711, N'H C Bench', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2746, 2711, N'HAL', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2747, 2711, N'Harauni', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2748, 2711, N'Hazratganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2749, 2711, N'Hindola Naka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2750, 2711, N'Hussainganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2751, 2711, N'Indira Nagar Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2752, 2711, N'Kaisarbagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2753, 2711, N'Lalbagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2754, 2711, N'Locomotive', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2755, 2711, N'Lucknow Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2756, 2711, N'Lucknow City', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2757, 2711, N'Mahanagar Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2758, 2711, N'Mahatma Ghandhi Marg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2759, 2711, N'Malihabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2760, 2711, N'Mall Avenue', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2761, 2711, N'Maulviganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2762, 2711, N'Mohibulapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2763, 2711, N'Nabipanah', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2764, 2711, N'Nadwa Mosque', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2765, 2711, N'New Lodge', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2766, 2711, N'Nigohan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2767, 2711, N'Niralanagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2768, 2711, N'Nishatganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2769, 2711, N'Pac Ground', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2770, 2711, N'Rae Bareli Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2771, 2711, N'Rajaji Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2772, 2711, N'Saadatganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2773, 2711, N'Saharaganj Mall', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2774, 2711, N'Sapru Marg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2775, 2711, N'Shia P G College', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2776, 2711, N'Shivaji Marg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2777, 2711, N'Sultanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2778, 2711, N'Sunderbagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2779, 2711, N'Telibagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2780, 2711, N'Thakurganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2781, 2711, N'Topsham Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2782, 2711, N'Uday Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2783, 2711, N'Utrahtia', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2784, 2711, N'Victoria Ganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2785, 2711, N'Viram Khand', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2786, 2711, N'Vivekanandapuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2787, 2711, N'Water Works', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2788, 2711, N'Wazirganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2789, 0, N'Ludhiana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2790, 2789, N'Aggar Nagar A Block', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2791, 2789, N'Aggar Nagar B Block', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2792, 2789, N'Amrit Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2793, 2789, N'Atam Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2794, 2789, N'Bajra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2795, 2789, N'Bal Singh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2796, 2789, N'Bhai Randhir Singh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2797, 2789, N'Deep Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2798, 2789, N'Dhandari Kalan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2799, 2789, N'Dholewal Chowk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2800, 2789, N'Dugri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2801, 2789, N'E Block SBS Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2802, 2789, N'Field Gunj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2803, 2789, N'Gagandeep Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2804, 2789, N'Ganesh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2805, 2789, N'Gurdev Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2806, 2789, N'Guru Arjan Dev Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2807, 2789, N'Guru Nanak Dev Engineering College', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2808, 2789, N'Haibowal Kalan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2809, 2789, N'Harbans Pura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2810, 2789, N'Harcharan Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2811, 2789, N'Hargobind Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2812, 2789, N'Industrial Area - A', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2813, 2789, N'Industrial Area - B', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2814, 2789, N'Jamalpur Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2815, 2789, N'Janak Puri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2816, 2789, N'Jawahar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2817, 2789, N'Kakowal Village', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2818, 2789, N'Karnail Singh Nagar Phase II', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2819, 2789, N'Lajpat Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2820, 2789, N'Ludhiana Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2821, 2789, N'Madhopuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2822, 2789, N'Maya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2823, 2789, N'Miller Gan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2824, 2789, N'Model Gram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2825, 2789, N'New Janta Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2826, 2789, N'New Kartar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2827, 2789, N'New Shiv Puri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2828, 2789, N'New Tagore Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2829, 2789, N'Noorwala Village', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2830, 2789, N'Police Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2831, 2789, N'Punjab Agricultural University', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2832, 2789, N'Rajguru Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2833, 2789, N'Ranjit Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2834, 2789, N'Sahibjada Ajit Singh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2835, 2789, N'Salem Tabri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2836, 2789, N'Sarabha Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2837, 2789, N'Sector 38', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2838, 2789, N'Sector 39', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2839, 2789, N'Sevak Pura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2840, 2789, N'aheed Bhagat Singh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2841, 2789, N'Shimla Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2842, 2789, N'Shimlapuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2843, 2789, N'St. Fateh Singh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2844, 2789, N'Subhash Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2845, 2789, N'Transport Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2846, 2789, N'Upkar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2847, 2789, N'Urban Estate Dugri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2848, 2789, N'Urban Estate Phase 1', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2849, 2789, N'Urban Estate Phese II', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2850, 2789, N'Vardhman Mills', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2851, 0, N'Madurai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2852, 2851, N'Alagappan Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2853, 2851, N'Alwarpuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2854, 2851, N'Andalpuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2855, 2851, N'Anna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2856, 2851, N'Anuppanadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2857, 2851, N'Ashok Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2858, 2851, N'Balarangapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2859, 2851, N'Chandragandhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2860, 2851, N'Chinna Chockikulam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2861, 2851, N'Chockikulam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2862, 2851, N'Doak Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2863, 2851, N'Ellis Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2864, 2851, N'Gandhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2865, 2851, N'Gnanavolivupuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2866, 2851, N'Gomathipuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2867, 2851, N'Goripalayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2868, 2851, N'Harvey Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2869, 2851, N'Jaihindpuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2870, 2851, N'K K Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2871, 2851, N'Kamarajapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2872, 2851, N'Kochadai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2873, 2851, N'Krishnapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2874, 2851, N'Madakkulam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2875, 2851, N'Madurai Main', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2876, 2851, N'Madurai Reserve Police Line', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2877, 2851, N'Mahapupalayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2878, 2851, N'Managiri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2879, 2851, N'Muthuramalingapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2880, 2851, N'Nagu Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2881, 2851, N'Narimedu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2882, 2851, N'Nataraja Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2883, 2851, N'Navalar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2884, 2851, N'Navarathinapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2885, 2851, N'Nehru Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2886, 2851, N'Palangantham', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2887, 2851, N'Pasumalai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2888, 2851, N'Ponmeni', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2889, 2851, N'Ponnagaram Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2890, 2851, N'Poondhotam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2891, 2851, N'Pykara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2892, 2851, N'Race Course Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2893, 2851, N'Ramnad Reserve Line', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2894, 2851, N'S S Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2895, 2851, N'Sathya Sai Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2896, 2851, N'Sellur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2897, 2851, N'Shenoy Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2898, 2851, N'Solai Alagupuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2899, 2851, N'Somasundaram Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2900, 2851, N'Southern Railway Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2901, 2851, N'State Bank Supervisor Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2902, 2851, N'Tallakulam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2903, 2851, N'TNHB Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2904, 2851, N'TVS Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2905, 2851, N'Vandiyur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2906, 2851, N'Villapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2907, 2851, N'West Ponnagaram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2908, 2851, N'Yohiyar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2909, 0, N'Mangalore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2910, 2909, N'Alake', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2911, 2909, N'Ashok Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2912, 2909, N'Ashraya Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2913, 2909, N'Azad Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2914, 2909, N'Baikampady Industrial Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2915, 2909, N'Bajal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2916, 2909, N'Balmatta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2917, 2909, N'Bejai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2918, 2909, N'Bendoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2919, 2909, N'Bengre', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2920, 2909, N'Bondel', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2921, 2909, N'Citi Center', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2922, 2909, N'Derebail', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2923, 2909, N'Falnir', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2924, 2909, N'Farangipete', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2925, 2909, N'Gandhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2926, 2909, N'GSI Quarters', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2927, 2909, N'Gurunagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2928, 2909, N'Hampankatta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2929, 2909, N'Hejamadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2930, 2909, N'Jeppinamogaru', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2931, 2909, N'Kadri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2932, 2909, N'Kankanady', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2933, 2909, N'Karangalpady', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2934, 2909, N'Kavoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2935, 2909, N'Kodiabail', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2936, 2909, N'Kodikal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2937, 2909, N'Konaje', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2938, 2909, N'Konchady', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2939, 2909, N'Kottara Chowk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2940, 2909, N'Kudroli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2941, 2909, N'Kulai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2942, 2909, N'Ladyhill', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2943, 2909, N'Lalbagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2944, 2909, N'Mallikatte', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2945, 2909, N'Mangala Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2946, 2909, N'Mangalore Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2947, 2909, N'Mangalore Old Port', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2948, 2909, N'Mangalore Port', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2949, 2909, N'Mangalore Refinery and Petrochemicals Limited', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2950, 2909, N'Manrose Manor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2951, 2909, N'Marnamikatte', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2952, 2909, N'Maroli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2953, 2909, N'Mulki', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2954, 2909, N'Nandigudda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2955, 2909, N'Padil', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2956, 2909, N'Pilicula Biological Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2957, 2909, N'SBI Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2958, 2909, N'Shanthi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2959, 2909, N'Shiva Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2960, 2909, N'Surathkal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2961, 2909, N'Urva', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2962, 2909, N'Vasanth Vihar Compound', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2963, 0, N'Mathura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2964, 2963, N'Agra Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2965, 2963, N'Bahadur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2966, 2963, N'Baldeo', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2967, 2963, N'Barsana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2968, 2963, N'Behari Pura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2969, 2963, N'Bharatpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2970, 2963, N'Bhuteshwar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2971, 2963, N'Chaumuhan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2972, 2963, N'Civil Lines', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2973, 2963, N'Deeg Gate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2974, 2963, N'Dholi Pyau Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2975, 2963, N'Gokul', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2976, 2963, N'Govardhan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2977, 2963, N'Hathras', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2978, 2963, N'Holi Gate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2979, 2963, N'Jaisingh Pura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2980, 2963, N'Jait', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2981, 2963, N'Junction Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2982, 2963, N'Kotwali Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2983, 2963, N'Krishna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2984, 2963, N'Laxmi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2985, 2963, N'Mahaban', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2986, 2963, N'Mahamaya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2987, 2963, N'Maholi Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2988, 2963, N'Mant', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2989, 2963, N'Motikunj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2990, 2963, N'Pragati Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2991, 2963, N'Radhakund', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2992, 2963, N'Raya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2993, 2963, N'Refinery Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2994, 2963, N'Sadar Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2995, 2963, N'Shriradhapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2996, 2963, N'Sonai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2997, 2963, N'Station Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2998, 2963, N'Tilak Dwar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (2999, 2963, N'Vishram Ghat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3000, 2963, N'Vrindavan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3001, 0, N'Meerut', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3002, 3001, N'Alipur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3003, 3001, N'Aminagar Urf Bhurbaral', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3004, 3001, N'Ap Badhla', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3005, 3001, N'Baghpat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3006, 3001, N'Bahsuma', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3007, 3001, N'Baleni', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3008, 3001, N'Behsuma', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3009, 3001, N'Bhatipura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3010, 3001, N'Bhola', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3011, 3001, N'Bhooni', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3012, 3001, N'Chandsara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3013, 3001, N'Dahar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3014, 3001, N'Daurala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3015, 3001, N'Delhi Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3016, 3001, N'Dhaulri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3017, 3001, N'Digamber Jain Mandir', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3018, 3001, N'Gandhi Ashram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3019, 3001, N'Ganeshpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3020, 3001, N'Ganga Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3021, 3001, N'Garh Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3022, 3001, N'Ghosipur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3023, 3001, N'Gotka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3024, 3001, N'Hapur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3025, 3001, N'Harra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3026, 3001, N'Hastinapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3027, 3001, N'Jagriti Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3028, 3001, N'Jani', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3029, 3001, N'Kabari Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3030, 3001, N'Kaland', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3031, 3001, N'Kalanjari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3032, 3001, N'Karnawal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3033, 3001, N'Khera', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3034, 3001, N'Khirwa Jalalpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3035, 3001, N'Kishanpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3036, 3001, N'Kithaur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3037, 3001, N'Krishana Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3038, 3001, N'Kurali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3039, 3001, N'Lawar Np', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3040, 3001, N'Lisari Gate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3041, 3001, N'Mahalwala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3042, 3001, N'Mataur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3043, 3001, N'Mawana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3044, 3001, N'Meerpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3045, 3001, N'Meerut Cantt', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3046, 3001, N'Meerut University', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3047, 3001, N'Modipuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3048, 3001, N'Mohiuddinpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3049, 3001, N'Muzakkipur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3050, 3001, N'Narangpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3051, 3001, N'Nek', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3052, 3001, N'Pabli Khas', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3053, 3001, N'Pallavpuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3054, 3001, N'Parikshitgarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3055, 3001, N'Partapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3056, 3001, N'Phalauda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3057, 3001, N'Prempuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3058, 3001, N'Railway Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3059, 3001, N'Sadar Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3060, 3001, N'Saket', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3061, 3001, N'Sardhana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3062, 3001, N'Sardhana Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3063, 3001, N'Sarurpur Khurd', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3064, 3001, N'Shahjahanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3065, 3001, N'Shastri Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3066, 3001, N'Siwal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3067, 3001, N'Thapar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3068, 3001, N'Victoria Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3069, 3001, N'Wk Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3070, 0, N'Mohali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3071, 3070, N'Industrial Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3072, 3070, N'Kharar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3073, 3070, N'Kharar Landran Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3074, 3070, N'Kharar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3075, 3070, N'Phase 10', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3076, 3070, N'Phase 11', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3077, 3070, N'Phase 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3078, 3070, N'Phase 3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3079, 3070, N'Phase 4', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3080, 3070, N'Phase 5', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3081, 3070, N'Phase 7', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3082, 3070, N'Sas Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3083, 3070, N'Sector 100', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3084, 3070, N'Sector 104', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3085, 3070, N'Sector 105', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3086, 3070, N'Sector 107', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3087, 3070, N'Sector 108', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3088, 3070, N'Sector 109', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3089, 3070, N'Sector 110', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3090, 3070, N'Sector 112', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3091, 3070, N'Sector 113', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3092, 3070, N'Sector 114', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3093, 3070, N'Sector 115', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3094, 3070, N'Sector 65', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3095, 3070, N'Sector 66', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3096, 3070, N'Sector 67', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3097, 3070, N'Sector 68', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3098, 3070, N'Sector 69', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3099, 3070, N'Sector 70', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3100, 3070, N'Sector 74', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3101, 3070, N'Sector 78', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3102, 3070, N'Sector 79', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3103, 3070, N'Sector 80', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3104, 3070, N'Sector 82', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3105, 3070, N'Sector 85', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3106, 3070, N'Sector 86', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3107, 3070, N'Sector 90', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3108, 3070, N'Sector 91', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3109, 3070, N'Sector 97', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3110, 3070, N'Sector 99', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3111, 3070, N'Sectror 111', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3112, 3070, N'Sunny Enclave', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3113, 0, N'Moradabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3114, 3113, N'Bahjoi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3115, 3113, N'Bilari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3116, 3113, N'Chandausi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3117, 3113, N'Kanth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3118, 3113, N'Kundarki', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3119, 3113, N'Narauli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3120, 3113, N'Sambhal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3121, 3113, N'Sirsi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3122, 3113, N'Thakurdwara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3123, 3113, N'Umri Kalan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3124, 0, N'Mumbai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3125, 3124, N'Aarey Milk Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3126, 3124, N'Agripada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3127, 3124, N'Andheri East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3128, 3124, N'Andheri West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3129, 3124, N'Antop Hill', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3130, 3124, N'Anushakti Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3131, 3124, N'Ballard Estate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3132, 3124, N'Bandra East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3133, 3124, N'Bandra West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3134, 3124, N'Bangur Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3135, 3124, N'Barve Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3136, 3124, N'Bhandup East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3137, 3124, N'Bhandup West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3138, 3124, N'Bhayandar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3139, 3124, N'Bhayander East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3140, 3124, N'Borivali East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3141, 3124, N'Borivali West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3142, 3124, N'Breach Candy', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3143, 3124, N'Byculla', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3144, 3124, N'Chakala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3145, 3124, N'Chandivali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3146, 3124, N'Charkop', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3147, 3124, N'Charni Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3148, 3124, N'Chembur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3149, 3124, N'Chembur Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3150, 3124, N'Chinch Bunder', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3151, 3124, N'Chinchpokli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3152, 3124, N'Chunnabhatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3153, 3124, N'Churchgate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3154, 3124, N'Colaba', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3155, 3124, N'Cotton Green', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3156, 3124, N'Crawford Market', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3157, 3124, N'Cuffe Parade', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3158, 3124, N'Cumbala Hill', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3159, 3124, N'Curry Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3160, 3124, N'Dadar East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3161, 3124, N'Dadar West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3162, 3124, N'Dahisar East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3163, 3124, N'Dahisar West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3164, 3124, N'Deonar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3165, 3124, N'Dharavi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3166, 3124, N'Dockyard Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3167, 3124, N'Elphinston', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3168, 3124, N'Fort', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3169, 3124, N'Ghatkopar East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3170, 3124, N'Ghatkopar West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3171, 3124, N'Girgaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3172, 3124, N'Gorai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3173, 3124, N'Goregaon East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3174, 3124, N'Goregaon West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3175, 3124, N'Govandi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3176, 3124, N'Grant Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3177, 3124, N'GTB Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3178, 3124, N'Hajiali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3179, 3124, N'IIT Powai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3180, 3124, N'Jacob Circle', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3181, 3124, N'Jogeshwari East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3182, 3124, N'Jogeshwari West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3183, 3124, N'Juhu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3184, 3124, N'Kalbadevi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3185, 3124, N'Kalina', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3186, 3124, N'Kandivali East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3187, 3124, N'Kandivali West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3188, 3124, N'Kanjur Marg East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3189, 3124, N'Kemps Corner', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3190, 3124, N'Khar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3191, 3124, N'Kharodi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3192, 3124, N'King Circle', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3193, 3124, N'Kurla East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3194, 3124, N'Kurla West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3195, 3124, N'Lalbaug', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3196, 3124, N'Lamington Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3197, 3124, N'Lokhandwala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3198, 3124, N'Lower Parel', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3199, 3124, N'Madh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3200, 3124, N'Mahalaxmi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3201, 3124, N'Mahim', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3202, 3124, N'Mahul', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3203, 3124, N'Malabar Hill', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3204, 3124, N'Malad East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3205, 3124, N'Malad West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3206, 3124, N'Mandvi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3207, 3124, N'Mankhurd', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3208, 3124, N'Mantralaya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3209, 3124, N'Marine Lines', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3210, 3124, N'Marol', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3211, 3124, N'Masjid Bunder', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3212, 3124, N'Matunga West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3213, 3124, N'Mazgaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3214, 3124, N'Mira Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3215, 3124, N'Mulund Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3216, 3124, N'Mulund East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3217, 3124, N'Mulund West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3218, 3124, N'Mumbai Central', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3219, 3124, N'Nagdevi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3220, 3124, N'Nahur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3221, 3124, N'Nariman Point', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3222, 3124, N'Navagaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3223, 3124, N'Old Navy Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3224, 3124, N'Opera House', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3225, 3124, N'Oshiwara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3226, 3124, N'Parel', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3227, 3124, N'Peddar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3228, 3124, N'Prabhadevi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3229, 3124, N'Pydhonie', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3230, 3124, N'Reay Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3231, 3124, N'Sahar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3232, 3124, N'Saki Naka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3233, 3124, N'Santacruz East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3234, 3124, N'Santacruz West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3235, 3124, N'SEEPZ', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3236, 3124, N'Sewree', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3237, 3124, N'Shivaji Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3238, 3124, N'Sion', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3239, 3124, N'Tardeo', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3240, 3124, N'Tilak Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3241, 3124, N'Trombay', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3242, 3124, N'Tulsiwadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3243, 3124, N'Vakola', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3244, 3124, N'Versova', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3245, 3124, N'Vidya Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3246, 3124, N'Vikhroli East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3247, 3124, N'Vikhroli West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3248, 3124, N'Vile Parle East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3249, 3124, N'Vile Parle West', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3250, 3124, N'Wadala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3251, 3124, N'Walkeshwar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3252, 3124, N'Worli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3253, 0, N'Mysore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3254, 3253, N'Agrahara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3255, 3253, N'Allanahalli Layout', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3256, 3253, N'Arlikumari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3257, 3253, N'Ashoka Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3258, 3253, N'Asokapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3259, 3253, N'Bank Employees Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3260, 3253, N'Banni Mantap Grounds', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3261, 3253, N'Bannur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3262, 3253, N'CFTRI Layout', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3263, 3253, N'Chamundi Hills', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3264, 3253, N'Chandragupta Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3265, 3253, N'Devaraj Urs Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3266, 3253, N'Gandhi Square', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3267, 3253, N'Gokulam Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3268, 3253, N'Gururaja Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3269, 3253, N'Harsha Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3270, 3253, N'Ittige Gudu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3271, 3253, N'Jockey Quatrus', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3272, 3253, N'Kuvempnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3273, 3253, N'Lalit Mahal Quatras', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3274, 3253, N'Lashkar Mohalla', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3275, 3253, N'MG Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3276, 3253, N'Mysore University', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3277, 3253, N'Nazarbad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3278, 3253, N'Niveditha Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3279, 3253, N'Raj Kumar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3280, 3253, N'Sayyaji Rao Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3281, 3253, N'Siddartha Layout', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3282, 3253, N'Sri Harsha Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3283, 3253, N'Vivekananda Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3284, 3253, N'Yadavagiri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3285, 0, N'Nagpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3286, 3285, N'Amravati Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3287, 3285, N'Bagadganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3288, 3285, N'Bapu Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3289, 3285, N'Bezonbagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3290, 3285, N'Bhandewadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3291, 3285, N'Bupeshnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3292, 3285, N'Central Avenue', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3293, 3285, N'Civil Lines', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3294, 3285, N'Clark Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3295, 3285, N'Dattawadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3296, 3285, N'Dhantoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3297, 3285, N'Expres City', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3298, 3285, N'Gandhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3299, 3285, N'Ganeshpeth Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3300, 3285, N'Ghat Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3301, 3285, N'Gittikhadan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3302, 3285, N'Godhani', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3303, 3285, N'Gokulpeth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3304, 3285, N'Indora Square', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3305, 3285, N'Jaitala Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3306, 3285, N'Jaripatka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3307, 3285, N'Kachimet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3308, 3285, N'Kamthi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3309, 3285, N'Katol', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3310, 3285, N'Khapri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3311, 3285, N'Manewada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3312, 3285, N'Mangalwadi Garden', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3313, 3285, N'Morbhavan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3314, 3285, N'Nagpur Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3315, 3285, N'Nagpur Station', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3316, 3285, N'Nandanvan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3317, 3285, N'Pardi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3318, 3285, N'Prem Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3319, 3285, N'Rajendra Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3320, 3285, N'Ram Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3321, 3285, N'Ramdaspeth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3322, 3285, N'Shankar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3323, 3285, N'Shivaji Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3324, 3285, N'Sitabuildi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3325, 3285, N'Sitabuldi Fort', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3326, 3285, N'Wardha Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3327, 0, N'Nashik', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3328, 3327, N'Abhang Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3329, 3327, N'Abhiyanta Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3330, 3327, N'Amenity Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3331, 3327, N'Anandvalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3332, 3327, N'Ashtvinayak Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3333, 3327, N'Ayodhya Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3334, 3327, N'Bhadrakali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3335, 3327, N'Bhagwant Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3336, 3327, N'Central Jail', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3337, 3327, N'Chandwad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3338, 3327, N'D. K. Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3339, 3327, N'Dhruv Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3340, 3327, N'Dindor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3341, 3327, N'Dr.Homi Bhabha Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3342, 3327, N'Dsouza Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3343, 3327, N'Dwarka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3344, 3327, N'Gandharva Wadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3345, 3327, N'Gole Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3346, 3327, N'Govind Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3347, 3327, N'Gr. Vaidya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3348, 3327, N'Hinglaj Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3349, 3327, N'Indira Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3350, 3327, N'Jagriti Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3351, 3327, N'Jai Bhavani Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3352, 3327, N'K.K. Wagh Society', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3353, 3327, N'Krishna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3354, 3327, N'MIDC Ambad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3355, 3327, N'Nashik Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3356, 3327, N'Parijat Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3357, 3327, N'Patel Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3358, 3327, N'Police Staff Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3359, 3327, N'Pushpanjali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3360, 3327, N'Radha Vasudev Batavia Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3361, 3327, N'Rajeev Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3362, 3327, N'Saraf Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3363, 3327, N'Satpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3364, 3327, N'Savata Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3365, 3327, N'Serene Meadows', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3366, 3327, N'Shalimar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3367, 3327, N'Shivaji Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3368, 3327, N'Shrirang Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3369, 3327, N'Upnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3370, 3327, N'Vaibhav Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3371, 3327, N'Vaidya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3372, 0, N'NaviMumbai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3373, 3372, N'Airoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3374, 3372, N'Belapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3375, 3372, N'CBD Belapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3376, 3372, N'Central Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3377, 3372, N'Ghansoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3378, 3372, N'Kalamboli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3379, 3372, N'Kamothe', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3380, 3372, N'Karave', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3381, 3372, N'Karjat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3382, 3372, N'Kharghar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3383, 3372, N'Kopar Khairane', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3384, 3372, N'Koripada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3385, 3372, N'Mahape', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3386, 3372, N'MIDC Industrial Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3387, 3372, N'Nerul', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3388, 3372, N'NRI Complex', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3389, 3372, N'Panvel', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3390, 3372, N'Parsik Hill', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3391, 3372, N'Rabale', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3392, 3372, N'Sanpada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3393, 3372, N'Sector 1', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3394, 3372, N'Sector 10', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3395, 3372, N'Sector 10A', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3396, 3372, N'Sector 11', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3397, 3372, N'Sector 12', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3398, 3372, N'Sector 13', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3399, 3372, N'Sector 14', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3400, 3372, N'Sector 15', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3401, 3372, N'Sector 16', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3402, 3372, N'Sector 16A', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3403, 3372, N'Sector 17', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3404, 3372, N'Sector 18', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3405, 3372, N'Sector 19', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3406, 3372, N'Sector 19A', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3407, 3372, N'Sector 19B', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3408, 3372, N'Sector 19C', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3409, 3372, N'Sector 19D', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3410, 3372, N'Sector 19E', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3411, 3372, N'Sector 19F', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3412, 3372, N'Sector 1A', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3413, 3372, N'Sector 20', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3414, 3372, N'Sector 21', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3415, 3372, N'Sector 22', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3416, 3372, N'Sector 23', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3417, 3372, N'Sector 24', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3418, 3372, N'Sector 25', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3419, 3372, N'Sector 26', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3420, 3372, N'Sector 28', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3421, 3372, N'Sector 29', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3422, 3372, N'Sector 3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3423, 3372, N'Sector 30', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3424, 3372, N'Sector 32', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3425, 3372, N'Sector 38', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3426, 3372, N'Sector 40', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3427, 3372, N'Sector 42', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3428, 3372, N'Sector 42A', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3429, 3372, N'Sector 44', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3430, 3372, N'Sector 44A', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3431, 3372, N'Sector 46', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3432, 3372, N'Sector 48', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3433, 3372, N'Sector 50', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3434, 3372, N'Sector 54', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3435, 3372, N'Sector 56', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3436, 3372, N'Sector 58', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3437, 3372, N'Sector 7', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3438, 3372, N'Sector 8', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3439, 3372, N'Sector 9', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3440, 3372, N'Shahabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3441, 3372, N'State Bank Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3442, 3372, N'Taloja', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3443, 3372, N'Taloja MIDC', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3444, 3372, N'Taloje Panchnad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3445, 3372, N'Turbhe', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3446, 3372, N'Ulwe', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3447, 3372, N'Vashi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3448, 0, N'Nellore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3449, 3448, N'Ak Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3450, 3448, N'Balajinagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3451, 3448, N'Bugiginellore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3452, 3448, N'Chinna Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3453, 3448, N'Gandhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3454, 3448, N'Gudur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3455, 3448, N'Kapu Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3456, 3448, N'Kavalbairasandra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3457, 3448, N'Kothoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3458, 3448, N'Kovurpalle', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3459, 3448, N'Krishnapatnam Port', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3460, 3448, N'Magunta Layout', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3461, 3448, N'Mandapala Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3462, 3448, N'Mulapet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3463, 3448, N'Pogathota', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3464, 3448, N'Ramalingapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3465, 3448, N'Rr Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3466, 3448, N'Santhapet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3467, 3448, N'Stonehousepet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3468, 3448, N'Trunk Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3469, 3448, N'Vedayapalem', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3470, 3448, N'Venkatagiri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3471, 0, N'Noida', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3472, 3471, N'Aghapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3473, 3471, N'Hoshiyarpur Village', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3474, 3471, N'Jhundpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3475, 3471, N'Sector 10', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3476, 3471, N'Sector 11', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3477, 3471, N'Sector 12', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3478, 3471, N'Sector 14', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3479, 3471, N'Sector 15', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3480, 3471, N'Sector 16', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3481, 3471, N'Sector 16A', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3482, 3471, N'Sector 17A', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3483, 3471, N'Sector 18', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3484, 3471, N'Sector 19', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3485, 3471, N'Sector 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3486, 3471, N'Sector 20', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3487, 3471, N'Sector 21', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3488, 3471, N'Sector 21A', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3489, 3471, N'Sector 22', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3490, 3471, N'Sector 23', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3491, 3471, N'Sector 24', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3492, 3471, N'Sector 25', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3493, 3471, N'Sector 25A', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3494, 3471, N'Sector 26', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3495, 3471, N'Sector 27', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3496, 3471, N'Sector 28', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3497, 3471, N'Sector 29', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3498, 3471, N'Sector 3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3499, 3471, N'Sector 30', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3500, 3471, N'Sector 31', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3501, 3471, N'Sector 32', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3502, 3471, N'Sector 33', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3503, 3471, N'Sector 34', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3504, 3471, N'Sector 35', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3505, 3471, N'Sector 36', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3506, 3471, N'Sector 37', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3507, 3471, N'Sector 39', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3508, 3471, N'Sector 39A', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3509, 3471, N'Sector 4', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3510, 3471, N'Sector 40', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3511, 3471, N'Sector 41', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3512, 3471, N'Sector 42', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3513, 3471, N'Sector 44', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3514, 3471, N'Sector 47', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3515, 3471, N'Sector 49', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3516, 3471, N'Sector 5', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3517, 3471, N'Sector 50', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3518, 3471, N'Sector 51', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3519, 3471, N'Sector 52', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3520, 3471, N'Sector 53', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3521, 3471, N'Sector 54', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3522, 3471, N'Sector 55', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3523, 3471, N'Sector 56', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3524, 3471, N'Sector 57', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3525, 3471, N'Sector 58', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3526, 3471, N'Sector 59', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3527, 3471, N'Sector 60', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3528, 3471, N'Sector 61', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3529, 3471, N'Sector 62', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3530, 3471, N'Sector 9', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3531, 0, N'Panchkula', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3532, 3531, N'Kalka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3533, 3531, N'Old Ambala Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3534, 3531, N'Panchkula Industrial Area Phase I', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3535, 3531, N'Panchkula Urban Estate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3536, 3531, N'Pinjore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3537, 3531, N'Raipur Rani', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3538, 3531, N'Sector 16', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3539, 3531, N'Sector 19', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3540, 3531, N'Sector 20', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3541, 3531, N'Sector 24', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3542, 3531, N'Sector 3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3543, 3531, N'Sector 4', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3544, 3531, N'Sector 6', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3545, 0, N'Patna', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3546, 3545, N'Ashiana Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3547, 3545, N'Bakarganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3548, 3545, N'Bankman Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3549, 3545, N'Begampur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3550, 3545, N'BSEB Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3551, 3545, N'Chanakya Puri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3552, 3545, N'Chitkohra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3553, 3545, N'Chitragupta Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3554, 3545, N'Dadar Mandi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3555, 3545, N'Danapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3556, 3545, N'Daud Bigha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3557, 3545, N'Dhaulpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3558, 3545, N'Gandhi Maidan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3559, 3545, N'Gardanibagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3560, 3545, N'Gulzar Bagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3561, 3545, N'Hanuman Nagar Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3562, 3545, N'IAS Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3563, 3545, N'Jakkanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3564, 3545, N'Kadam Kuan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3565, 3545, N'Kankarbagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3566, 3545, N'Katra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3567, 3545, N'Khagaul', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3568, 3545, N'Khojpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3569, 3545, N'Kidwaipur Postal Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3570, 3545, N'Kumhrar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3571, 3545, N'Kurji', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3572, 3545, N'Lodipur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3573, 3545, N'Lohia Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3574, 3545, N'Lok Nayak Jayprakash Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3575, 3545, N'Mahavir Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3576, 3545, N'Mithapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3577, 3545, N'Muradpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3578, 3545, N'New Jakkanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3579, 3545, N'Patliputra Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3580, 3545, N'Patna Golf Club', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3581, 3545, N'Patrakar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3582, 3545, N'Phulwari Sharif', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3583, 3545, N'Punaichak', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3584, 3545, N'Raja Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3585, 3545, N'Rajbanshi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3586, 3545, N'Rajendra Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3587, 3545, N'Rajiv Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3588, 3545, N'Ramkrishan Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3589, 3545, N'Ranipur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3590, 3545, N'Sabzibagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3591, 3545, N'Sadhnapuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3592, 3545, N'Sadikpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3593, 3545, N'Shivpuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3594, 3545, N'Sipara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3595, 3545, N'Sri Krishnapuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3596, 3545, N'Yarpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3597, 0, N'Pondicherry', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3598, 3597, N'Anna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3599, 3597, N'Ariyankuppam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3600, 3597, N'Bahoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3601, 3597, N'Dhanvantri Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3602, 3597, N'Jhansi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3603, 3597, N'Karaikal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3604, 3597, N'Kottucherry', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3605, 3597, N'Krishna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3606, 3597, N'Lawspet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3607, 3597, N'Moolakulam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3608, 3597, N'Mudaliarpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3609, 3597, N'Murungampakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3610, 3597, N'Muthialpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3611, 3597, N'Nellithope', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3612, 3597, N'Nethaji Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3613, 3597, N'Nettapakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3614, 3597, N'Oulgaret', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3615, 3597, N'Ozhukarai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3616, 3597, N'Rainbow Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3617, 3597, N'Ramalingam Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3618, 3597, N'Reddiarpalayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3619, 3597, N'Saram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3621, 3597, N'Thalatheru', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3622, 3597, N'Tirunallar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3623, 3597, N'Vasan Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3624, 3597, N'Venkata Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3625, 3597, N'Villianur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3626, 3597, N'Villyanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3627, 3597, N'Voc Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3628, 0, N'Pune', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3629, 3628, N'Ambegaon Bk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3630, 3628, N'Aundh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3631, 3628, N'B S Dhole Patil Path', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3632, 3628, N'Balewadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3633, 3628, N'Baner', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3634, 3628, N'Bhandarkar Rd', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3635, 3628, N'Bhawani Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3636, 3628, N'Bopadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3637, 3628, N'Bund Garden Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3638, 3628, N'Cavthan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3639, 3628, N'Chakan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3640, 3628, N'Dange Chawk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3641, 3628, N'Deccan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3642, 3628, N'Dhankawadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3643, 3628, N'Dhanori', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3644, 3628, N'Erandwana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3645, 3628, N'Fatima Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3646, 3628, N'Ferguson College Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3647, 3628, N'Ganesh Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3648, 3628, N'Ghorpadi Rd', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3649, 3628, N'Ghorpuri Lines', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3650, 3628, N'Gokhale Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3651, 3628, N'Gultekdi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3652, 3628, N'Guru Nanak Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3653, 3628, N'Hadapsar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3654, 3628, N'Hinjewadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3655, 3628, N'Jangali Maharaj Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3656, 3628, N'Kalewadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3657, 3628, N'Karve Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3658, 3628, N'Kasba Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3659, 3628, N'Kondhwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3660, 3628, N'Koregaon Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3661, 3628, N'Kothrud', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3662, 3628, N'Laxmi Rd', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3663, 3628, N'M.G. Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3664, 3628, N'Modi Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3665, 3628, N'Moshi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3666, 3628, N'Mukund Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3667, 3628, N'Mumbai Pune Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3668, 3628, N'Mundhwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3669, 3628, N'Municipal Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3670, 3628, N'Nagar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3671, 3628, N'Nana Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3672, 3628, N'Narayan Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3673, 3628, N'Netaji Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3674, 3628, N'NIBM', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3675, 3628, N'Pashan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3676, 3628, N'Pimple Gurav', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3677, 3628, N'Pimple Nilakh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3678, 3628, N'Pimple Saudagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3679, 3628, N'Pimpri Chinchwad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3680, 3628, N'Prabhat Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3681, 3628, N'Pratik Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3682, 3628, N'Pune Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3683, 3628, N'Pune Cantonment', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3684, 3628, N'Pune University', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3685, 3628, N'Rahatani', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3686, 3628, N'Revenue Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3687, 3628, N'Ruby Hall Hospital', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3688, 3628, N'Sadashiv Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3689, 3628, N'Sadhu Vaswani Path', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3690, 3628, N'Sakal Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3691, 3628, N'Sangamvadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3692, 3628, N'Shaniwar Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3693, 3628, N'Shankar Shet Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3694, 3628, N'Shastri Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3695, 3628, N'Shivaji Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3696, 3628, N'Shukrawar Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3697, 3628, N'Sindhi Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3698, 3628, N'Sinhagad Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3699, 3628, N'Somwar Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3700, 3628, N'Sutarwadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3701, 3628, N'Swargate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3702, 3628, N'Tadiwala Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3703, 3628, N'Vadgaon Budruk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3704, 3628, N'Viman Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3705, 3628, N'Vishrantwadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3706, 3628, N'Wakad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3707, 3628, N'Wanowrie', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3708, 3628, N'Wilson Garden', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3709, 0, N'Rajkot', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3710, 3709, N'Aalap Avenue', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3711, 3709, N'Aji Industrial Estate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3712, 3709, N'Aji Vasahat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3713, 3709, N'Amar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3714, 3709, N'Arya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3715, 3709, N'Astron Society main Rd', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3716, 3709, N'Atika Industrial Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3717, 3709, N'Bhakti Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3718, 3709, N'Bhakti Nagar Station Plot', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3719, 3709, N'Bhaktinagar Society', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3720, 3709, N'Chandreshnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3721, 3709, N'Diwanpara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3722, 3709, N'Doordarshan Kendra Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3723, 3709, N'Gayakwadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3724, 3709, N'Geeta Nagar Society', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3725, 3709, N'Ghandhigram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3726, 3709, N'GIDC', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3727, 3709, N'Gundawadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3728, 3709, N'Jagnath Plot', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3729, 3709, N'Jangleshwar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3730, 3709, N'Jayraj Plot', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3731, 3709, N'Kotecha Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3732, 3709, N'Kothariya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3733, 3709, N'Kothi Compound', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3734, 3709, N'Lakshmiwadi Society', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3735, 3709, N'Loco Colony Railway Quarters', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3736, 3709, N'Lohana Para', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3737, 3709, N'Madhapar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3738, 3709, N'Madhav Rao Sindhiya Cricket Stadium', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3739, 3709, N'Mavadi Industrial Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3740, 3709, N'Mavdi Village', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3741, 3709, N'Morari Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3742, 3709, N'Munjka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3743, 3709, N'Navagam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3744, 3709, N'New Sarvoday Society', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3745, 3709, N'New Subhash Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3746, 3709, N'New Thorala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3747, 3709, N'Popat Para', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3748, 3709, N'Prahlad Plot', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3749, 3709, N'Race Course', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3750, 3709, N'Railnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3751, 3709, N'Raiya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3752, 3709, N'Rajkot Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3753, 3709, N'Rajkot Marketing Yard', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3754, 3709, N'Rajlakshmi Society', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3755, 3709, N'Rajputpara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3756, 3709, N'Ravi Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3757, 3709, N'Sadar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3758, 3709, N'Sadguru Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3759, 3709, N'Samrat Industrial Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3760, 3709, N'Sardar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3761, 3709, N'Saurastra University Campus', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3762, 3709, N'Shastri Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3763, 3709, N'Siddharth Santoki City', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3764, 3709, N'Tirupati Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3765, 0, N'Ranchi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3766, 3765, N'Adarsh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3767, 3765, N'Anandpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3768, 3765, N'Argora', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3769, 3765, N'Ashok Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3770, 3765, N'Bahu Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3771, 3765, N'Bara Ghagra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3772, 3765, N'Bariatu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3773, 3765, N'Bhumiartoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3774, 3765, N'Birsanagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3775, 3765, N'Bit Mesra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3776, 3765, N'Bundu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3777, 3765, N'Chariyatoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3778, 3765, N'Choybasatoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3779, 3765, N'Churi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3780, 3765, N'Circular Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3781, 3765, N'Club Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3782, 3765, N'Court Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3783, 3765, N'Dangartoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3784, 3765, N'Daudnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3785, 3765, N'Delatoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3786, 3765, N'Dhumsatoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3787, 3765, N'Dhurwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3788, 3765, N'Dibdih', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3789, 3765, N'Doranda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3790, 3765, N'Firayalal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3791, 3765, N'Gandhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3792, 3765, N'Gitilpiri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3793, 3765, N'Gosaintola', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3794, 3765, N'Harmu Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3795, 3765, N'Hatia Railway Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3796, 3765, N'Hesag', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3797, 3765, N'Hinoo', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3798, 3765, N'Indra Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3799, 3765, N'Jagarnathpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3800, 3765, N'Kadru', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3801, 3765, N'Kalyanpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3802, 3765, N'Kanka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3803, 3765, N'Kantatoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3804, 3765, N'Kathalkocha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3805, 3765, N'Kathartoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3806, 3765, N'Khelari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3807, 3765, N'Khokambatoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3808, 3765, N'Khunti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3809, 3765, N'Konka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3810, 3765, N'Kumbatoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3811, 3765, N'Kumhartoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3812, 3765, N'Kusai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3813, 3765, N'Lalpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3814, 3765, N'Lower Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3815, 3765, N'Maharatoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3816, 3765, N'Mahatma Gandhi Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3817, 3765, N'Masibari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3818, 3765, N'Mg Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3819, 3765, N'Murangtoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3820, 3765, N'Muri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3821, 3765, N'Namkum', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3822, 3765, N'Netajinagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3823, 3765, N'Pahartoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3824, 3765, N'Panchwati', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3825, 3765, N'Patel Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3826, 3765, N'Pathalkudwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3827, 3765, N'Prem Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3828, 3765, N'Pugudu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3829, 3765, N'Purulia Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3830, 3765, N'Ramgarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3831, 3765, N'Ranchi Medical College', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3832, 3765, N'Ranchi University', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3833, 3765, N'Ranchi Veternary College', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3834, 3765, N'Ratu Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3835, 3765, N'Sector 1', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3836, 3765, N'Sector 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3837, 3765, N'Sector 3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3838, 3765, N'Sector 4', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3839, 3765, N'Shamlong', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3840, 3765, N'Shantinagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3841, 3765, N'Shradhanand Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3842, 3765, N'Shyamli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3843, 3765, N'Sn Ganguly Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3844, 3765, N'Station Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3845, 3765, N'Tatisilwai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3846, 3765, N'Tiril', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3847, 3765, N'Tongritoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3848, 3765, N'Tupudana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3849, 3765, N'Upper Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3850, 0, N'Salem', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3851, 3850, N'Advaitha Ashram Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3852, 3850, N'Agraharam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3853, 3850, N'Alagapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3854, 3850, N'Ammapet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3855, 3850, N'Annadanapatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3856, 3850, N'Arasiramani', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3857, 3850, N'Arisipalayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3858, 3850, N'Attayampatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3859, 3850, N'Attur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3860, 3850, N'Bazaar Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3861, 3850, N'Belur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3862, 3850, N'Dadagapatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3863, 3850, N'Dalavaipatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3864, 3850, N'Edaganasalai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3865, 3850, N'Edappadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3866, 3850, N'Ethapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3867, 3850, N'Fairlands', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3868, 3850, N'Fort', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3869, 3850, N'Gangavalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3870, 3850, N'Gugai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3871, 3850, N'Hasthampatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3872, 3850, N'Ilampillai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3873, 3850, N'Jalakandapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3874, 3850, N'Kadayampatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3875, 3850, N'Kallanguthu Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3876, 3850, N'Kannankurichi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3877, 3850, N'Karuppur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3878, 3850, N'Keeripatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3879, 3850, N'Kitchipalayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3880, 3850, N'Kolathur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3881, 3850, N'Kondalampatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3882, 3850, N'Konganapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3883, 3850, N'Leigh Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3884, 3850, N'Mallamooppampatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3885, 3850, N'Mallur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3886, 3850, N'Maramangalathupatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3887, 3850, N'Maravaneri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3888, 3850, N'Mecheri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3889, 3850, N'Mettur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3890, 3850, N'Meyyanur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3891, 3850, N'Nangavalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3892, 3850, N'Narasingapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3893, 3850, N'Nethimedu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3894, 3850, N'Neykkarappatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3895, 3850, N'Omalur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3896, 3850, N'Pallapatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3897, 3850, N'Panaimarathupatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3898, 3850, N'Papparapatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3899, 3850, N'Peramanur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3900, 3850, N'Pethanaickenpalayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3901, 3850, N'Pn Patti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3902, 3850, N'Ponnammapet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3903, 3850, N'Poolampatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3904, 3850, N'Sankari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3905, 3850, N'Saradha College Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3906, 3850, N'Second Agraharam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3907, 3850, N'Seelanaickenpatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3908, 3850, N'Sentharapatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3909, 3850, N'Shevapet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3910, 3850, N'Suramangalam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3911, 3850, N'Swarnapuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3912, 3850, N'Thammampatti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3913, 3850, N'Tharamangalam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3914, 3850, N'Thedavur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3915, 3850, N'Thevur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3916, 3850, N'Vanavasi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3917, 3850, N'Vazhapadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3918, 3850, N'Veeraganur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3919, 3850, N'Veerakkalpudur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3920, 3850, N'Yercaud', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3921, 0, N'Satara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3922, 3921, N'Godoli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3923, 3921, N'Guruwar Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3924, 3921, N'Karad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3925, 3921, N'Karanje Turf Satara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3926, 3921, N'Kolhapur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3927, 3921, N'Koregaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3928, 3921, N'Mahabaleshwar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3929, 3921, N'Mhaswad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3930, 3921, N'Midc Satara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3931, 3921, N'Panchgani', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3932, 3921, N'Patan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3933, 3921, N'Phaltan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3934, 3921, N'Pirwadi Khed', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3935, 3921, N'Powai Naka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3936, 3921, N'Radhika Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3937, 3921, N'Rahimatpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3938, 3921, N'Rajpath', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3939, 3921, N'Sadar Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3940, 3921, N'Sahyadri Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3941, 3921, N'Shahupuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3942, 3921, N'Shirwal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3943, 3921, N'Somwar Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3944, 3921, N'Vanvadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3945, 3921, N'Wai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3946, 0, N'Shillong', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3947, 3946, N'Assam Rifles', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3948, 3946, N'Bara Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3949, 3946, N'Happay Valley', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3950, 3946, N'Laban', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3951, 3946, N'Laitkor Peak', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3952, 3946, N'Laitumkhrah', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3953, 3946, N'Mawlai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3954, 3946, N'Mawpat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3955, 3946, N'Nongthymmai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3956, 3946, N'Shillong Cantt', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3957, 3946, N'Upper Shillong', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3958, 0, N'Shimla', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3959, 3958, N'Chaura Maidan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3960, 3958, N'Dhalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3961, 3958, N'Himachal Pradesh Secretariat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3962, 3958, N'Jubbal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3963, 3958, N'Jutogh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3964, 3958, N'Kamyana Bharari Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3965, 3958, N'Kandaghat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3966, 3958, N'Kasumpti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3967, 3958, N'Kufri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3968, 3958, N'Lakkar Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3969, 3958, N'Lower Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3970, 3958, N'Mall Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3971, 3958, N'Mashobra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3972, 3958, N'Mehli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3973, 3958, N'Sanjauli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3974, 3958, N'Sankat Mochan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3975, 3958, N'Sector 118', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3976, 3958, N'Summer Hill', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3977, 3958, N'Tara Devi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3978, 3958, N'Totu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3979, 0, N'Sirsa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3980, 3979, N'Adarsh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3981, 3979, N'Barnala Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3982, 3979, N'Circular Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3983, 3979, N'Ellenabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3984, 3979, N'Ghanta Ghar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3985, 3979, N'Gt Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3986, 3979, N'Hanji Khera', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3987, 3979, N'Hisar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3988, 3979, N'Kalan Wali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3989, 3979, N'Mandi Dabwali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3990, 3979, N'New Anaj Mandi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3991, 3979, N'Patti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3992, 3979, N'Ram Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3993, 3979, N'Rania', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3994, 3979, N'Sairpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3995, 3979, N'Sector 20', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3996, 3979, N'Sirsa Main Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3997, 3979, N'Subhash Chowk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3998, 0, N'Solapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (3999, 3998, N'Akkalkot', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4000, 3998, N'Akkalkot Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4001, 3998, N'Akluj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4002, 3998, N'Ashok Chowk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4003, 3998, N'Barshi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4004, 3998, N'Bhavani Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4005, 3998, N'Bijapur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4006, 3998, N'Budhwar Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4007, 3998, N'Datta Chowk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4008, 3998, N'Kurduvadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4009, 3998, N'Madha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4010, 3998, N'Malsiras', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4011, 3998, N'Midc Solapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4012, 3998, N'Mohol', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4013, 3998, N'Murarji Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4014, 3998, N'Nh 13', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4015, 3998, N'Pandharpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4016, 3998, N'Sadar Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4017, 3998, N'Sakhar Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4018, 3998, N'Sangola', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4019, 3998, N'Sidheswar Peth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4020, 3998, N'South Kasba', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4021, 3998, N'South Sadar Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4022, 0, N'Srinagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4023, 4022, N'Badami Bagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4024, 4022, N'Batwara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4025, 4022, N'Dangarpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4026, 4022, N'Ganderbal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4027, 4022, N'Hyderpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4028, 4022, N'Karan Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4029, 4022, N'Naseem Bagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4030, 4022, N'Natipura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4031, 4022, N'Pandach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4032, 4022, N'Rainawari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4033, 4022, N'Sanat Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4034, 4022, N'Srinagar Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4035, 4022, N'Zainakot', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4036, 0, N'Surat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4037, 4036, N'Adarsh Society', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4038, 4036, N'Adjan Gam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4039, 4036, N'Ahura Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4040, 4036, N'Amroli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4041, 4036, N'Anjada Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4042, 4036, N'Begumpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4043, 4036, N'Ghod Dhod Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4044, 4036, N'Iscon Mall', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4045, 4036, N'Jahangirabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4046, 4036, N'Kalidas Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4047, 4036, N'Kapodra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4048, 4036, N'Khand Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4049, 4036, N'Mahabir Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4050, 4036, N'Narayan Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4051, 4036, N'Navsari Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4052, 4036, N'New Pushpakunj Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4053, 4036, N'Piplod', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4054, 4036, N'Rander', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4055, 4036, N'Ring Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4056, 4036, N'Sagrampura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4057, 4036, N'Station Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4058, 4036, N'Subash Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4059, 4036, N'Sumal Dairy Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4060, 4036, N'Surat Railway Station', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4061, 4036, N'Textile Market', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4062, 4036, N'Timaliawad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4063, 4036, N'Udhana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4064, 4036, N'Umarwada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4065, 4036, N'Umra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4066, 0, N'Thane', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4067, 4066, N'Ambarnath', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4068, 4066, N'Anandi Bai Garden', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4069, 4066, N'B Cabin', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4070, 4066, N'Bhakti Mandir', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4071, 4066, N'Charai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4072, 4066, N'Chirak Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4073, 4066, N'Dable Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4074, 4066, N'Dhobighat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4075, 4066, N'Dnyaneshwar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4076, 4066, N'Dombivli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4077, 4066, N'Ghantali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4078, 4066, N'Ghodbunder Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4079, 4066, N'Glaxo Quarters', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4080, 4066, N'Glaxo Smith Kline Limited', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4081, 4066, N'Green Wood Complex', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4082, 4066, N'Hiranandani Meadows', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4083, 4066, N'JK Gram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4084, 4066, N'Kailash Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4085, 4066, N'Kapur Bawdi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4086, 4066, N'Karvalo Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4087, 4066, N'Khopat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4088, 4066, N'Kokanipada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4089, 4066, N'Kolshet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4090, 4066, N'Kopri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4091, 4066, N'Lokmanya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4092, 4066, N'Louis Wadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4093, 4066, N'Mahatma Phule Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4094, 4066, N'Majiwada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4095, 4066, N'Manpada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4096, 4066, N'Nalasopara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4097, 4066, N'Natu Paranjpe Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4098, 4066, N'Naupada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4099, 4066, N'Padwal Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4100, 4066, N'Palghar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4101, 4066, N'Panchsheel Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4102, 4066, N'Patil Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4103, 4066, N'Phule Market', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4104, 4066, N'Raymonds Factory', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4105, 4066, N'Samatha Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4106, 4066, N'Savarkar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4107, 4066, N'Siddhachal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4108, 4066, N'Sivai Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4109, 4066, N'Talao Pali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4110, 4066, N'Tata Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4111, 4066, N'Thane Central Jail', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4112, 4066, N'Ulhasnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4113, 4066, N'Upvan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4114, 4066, N'Vartak Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4115, 4066, N'Vasai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4116, 4066, N'Vasant Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4117, 4066, N'Vikas Complex', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4118, 4066, N'Virar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4119, 4066, N'Vishnu Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4120, 4066, N'Yashaswi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4121, 0, N'Thrissur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4122, 4121, N'Akathiyoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4123, 4121, N'Amala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4124, 4121, N'Annamanada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4125, 4121, N'Aranttukara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4126, 4121, N'Athani', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4127, 4121, N'Athirampally', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4128, 4121, N'Avenue Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4129, 4121, N'Avinissery', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4130, 4121, N'Ayyanthole', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4131, 4121, N'Azheekod', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4132, 4121, N'Brahmakulam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4133, 4121, N'Chalakudy', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4134, 4121, N'Chavakkad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4135, 4121, N'Chelakkara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4136, 4121, N'Chelakottukara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4137, 4121, N'Cheroor Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4138, 4121, N'Cheruthuruthi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4139, 4121, N'Chettupuzha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4140, 4121, N'Chevoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4141, 4121, N'Cr Iyyunni Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4142, 4121, N'Dr. Ar Menon Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4143, 4121, N'East Fort', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4144, 4121, N'Eriyad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4145, 4121, N'Gosaikunnu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4146, 4121, N'Guruvayoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4147, 4121, N'High Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4148, 4121, N'Ikkanda Warrier Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4149, 4121, N'Irinjalakuda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4150, 4121, N'Kaiparambu Jn', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4151, 4121, N'Kalathode', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4152, 4121, N'Kanimangalam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4153, 4121, N'Kannankulangara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4154, 4121, N'Kariyattukara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4155, 4121, N'Karunakaran Nambiar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4156, 4121, N'Kechery', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4157, 4121, N'Kodungallur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4158, 4121, N'Kolazhy', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4159, 4121, N'Koorkenchery', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4160, 4121, N'Koratty', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4161, 4121, N'Kottapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4162, 4121, N'Kovilakathupadam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4163, 4121, N'Kunnamkulam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4164, 4121, N'Kuriachira', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4165, 4121, N'Kuttanellur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4166, 4121, N'Kuttumuku', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4167, 4121, N'Kuttur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4168, 4121, N'Maapranam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4169, 4121, N'Machingal Lane', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4170, 4121, N'Mala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4171, 4121, N'Mannuthy', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4172, 4121, N'Marar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4173, 4121, N'Marathakkara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4174, 4121, N'Methala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4175, 4121, N'Mg Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4176, 4121, N'Mission Quarters', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4177, 4121, N'Mundoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4178, 4121, N'Muthuvara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4179, 4121, N'Nadathara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4180, 4121, N'Nenmenikkara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4181, 4121, N'Ollur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4182, 4121, N'Palace Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4183, 4121, N'Palakkad Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4184, 4121, N'Palakkat Lane', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4185, 4121, N'Palissery', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4186, 4121, N'Paliyam Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4187, 4121, N'Paluvai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4188, 4121, N'Parappur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4189, 4121, N'Paravattani', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4190, 4121, N'Pattambi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4191, 4121, N'Patturaickal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4192, 4121, N'Pavaratty', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4193, 4121, N'Peechi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4194, 4121, N'Perakam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4195, 4121, N'Peringavu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4196, 4121, N'Poothol', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4197, 4121, N'Pottore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4198, 4121, N'Pullazhy', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4199, 4121, N'Punkunnam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4200, 4121, N'Puranattukara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4201, 4121, N'Puthukkad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4202, 4121, N'Sankarakulangara Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4203, 4121, N'Sastha Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4204, 4121, N'Shornur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4205, 4121, N'St Thomas College Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4206, 4121, N'Swaraj Round East', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4207, 4121, N'Tb Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4208, 4121, N'Thaikkad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4209, 4121, N'Thiruvambady', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4210, 4121, N'Thrissur Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4211, 4121, N'Triprayar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4212, 4121, N'Vallachira', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4213, 4121, N'Veliyannur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4214, 4121, N'Viyyur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4215, 4121, N'Wadakkanchery', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4216, 4121, N'West Fort', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4217, 4121, N'Zanana Mission Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4218, 0, N'Trichy', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4219, 4218, N'Amman Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4220, 4218, N'Ammayappa Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4221, 4218, N'Anna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4222, 4218, N'Ayyappa Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4223, 4218, N'Balaji Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4224, 4218, N'Bells Railway Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4225, 4218, N'Bharathi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4226, 4218, N'Bharathiyar Salai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4227, 4218, N'Bhima Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4228, 4218, N'Devathanam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4229, 4218, N'Dheeran Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4230, 4218, N'Dr. Ambedkar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4231, 4218, N'Edamalaipatti Pudur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4232, 4218, N'Fathima Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4233, 4218, N'Gandhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4234, 4218, N'Geetha Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4235, 4218, N'JK Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4236, 4218, N'Kailash Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4237, 4218, N'Kajanagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4238, 4218, N'Kallangadu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4239, 4218, N'Karumandapam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4240, 4218, N'Kattur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4241, 4218, N'Kilapudur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4242, 4218, N'KK Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4243, 4218, N'Krishna Moorthy Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4244, 4218, N'Kumaran Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4245, 4218, N'Lourdh Swamy Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4246, 4218, N'Melapudur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4247, 4218, N'NMK Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4248, 4218, N'Ponnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4249, 4218, N'Puthur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4250, 4218, N'R. S. Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4251, 4218, N'Railway Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4252, 4218, N'Rajappa Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4253, 4218, N'Ramakrishna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4254, 4218, N'Ramalinga Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4255, 4218, N'RSK Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4256, 4218, N'Sangillyandapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4257, 4218, N'Sanjeevi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4258, 4218, N'Sarkarpalayam Village', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4259, 4218, N'Sengulum Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4260, 4218, N'Senthaneerpuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4261, 4218, N'Shanmuga Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4262, 4218, N'Singarathope', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4263, 4218, N'Srinivasa Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4264, 4218, N'Subramania Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4265, 4218, N'Sundar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4266, 4218, N'Tharanallur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4267, 4218, N'Thillai Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4268, 4218, N'Thiruverumbur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4269, 4218, N'Trichy Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4270, 4218, N'Trichy Central Jail', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4271, 4218, N'Vignesh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4272, 4218, N'Woraiyur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4273, 0, N'Trivandrum', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4274, 4273, N'Ambalamukku', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4275, 4273, N'Ambalathara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4276, 4273, N'Anayara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4277, 4273, N'Arappuramukku', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4278, 4273, N'Attukulangara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4279, 4273, N'Beemapalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4280, 4273, N'Chacka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4281, 4273, N'Chalai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4282, 4273, N'Chempazhanthy', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4283, 4273, N'Chenthitta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4284, 4273, N'Choozhampala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4285, 4273, N'Elangom Gardens', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4286, 4273, N'Enckakkal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4287, 4273, N'Idapazhanji', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4288, 4273, N'Idapazhanji', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4289, 4273, N'Kamaleshwaram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4290, 4273, N'Kamaleswaram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4291, 4273, N'Kaniyapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4292, 4273, N'Kanjirampara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4293, 4273, N'Kannammoola', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4294, 4273, N'Kannanthura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4295, 4273, N'Karakulam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4296, 4273, N'Karamana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4297, 4273, N'Karimankulam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4298, 4273, N'Karyavattom', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4299, 4273, N'Kattaikonam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4300, 4273, N'Kazhakkoottam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4301, 4273, N'kazhakkottam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4302, 4273, N'Kerala Public Service Commission', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4303, 4273, N'Kesavadasapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4304, 4273, N'Kochuveli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4305, 4273, N'Kowdiar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4306, 4273, N'Kudappanakunnu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4307, 4273, N'Kumarapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4308, 4273, N'Kuravankonam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4309, 4273, N'Manacaud', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4310, 4273, N'Mannammula', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4311, 4273, N'Mannanthala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4312, 4273, N'Manvila Industrial Estate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4313, 4273, N'Mukkolakkal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4314, 4273, N'Muttada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4315, 4273, N'Muttattara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4316, 4273, N'Nalanchira', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4317, 4273, N'Oolanpara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4318, 4273, N'Palkulangara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4319, 4273, N'Pallithura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4320, 4273, N'Panavila', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4321, 4273, N'Pangodu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4322, 4273, N'Pappanamcode', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4323, 4273, N'Parottukonam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4324, 4273, N'Paruthikunnu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4325, 4273, N'Pattom', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4326, 4273, N'Pazhavangadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4327, 4273, N'Peroorkada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4328, 4273, N'Poojapura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4329, 4273, N'Poonthura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4330, 4273, N'Pothencode Junction', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4331, 4273, N'Pottakuzhai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4332, 4273, N'Poundukadavu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4333, 4273, N'Sasthamangalam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4334, 4273, N'Sastrinagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4335, 4273, N'Silver Hills', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4336, 4273, N'Technopark', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4337, 4273, N'Thirumala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4338, 4273, N'Thiruvallam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4339, 4273, N'Thiruvananthapuram Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4340, 4273, N'Thumba', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4341, 4273, N'Thycaud', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4342, 4273, N'Ulloor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4343, 4273, N'Valiathope', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4344, 4273, N'Valiathura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4345, 4273, N'Vallakkadavu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4346, 4273, N'Vanchiyoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4347, 4273, N'Vazhottukonam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4348, 4273, N'Vazhuthacaud', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4349, 4273, N'Veli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4350, 4273, N'Vettucaud', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4351, 0, N'Udaipur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4352, 4351, N'Amal Ka Kanta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4353, 4351, N'Ambamata', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4354, 4351, N'Ashok Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4355, 4351, N'Ashwini Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4356, 4351, N'Badgaon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4357, 4351, N'Bapu Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4358, 4351, N'Bedla Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4359, 4351, N'Bhalariya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4360, 4351, N'Bhinder', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4361, 4351, N'Bhopalpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4362, 4351, N'Bhuwana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4363, 4351, N'Brahmpuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4364, 4351, N'Chetak Circle', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4365, 4351, N'Delhi Gate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4366, 4351, N'Dhariawad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4367, 4351, N'Fateh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4368, 4351, N'Fatehpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4369, 4351, N'Hathipole', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4370, 4351, N'Hiran Magari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4371, 4351, N'Lake Palace Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4372, 4351, N'Link Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4373, 4351, N'Madhuban', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4374, 4351, N'Madri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4375, 4351, N'Maldas Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4376, 4351, N'Nehru Baazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4377, 4351, N'Newa Talai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4378, 4351, N'Panchwati', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4379, 4351, N'Pratap Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4380, 4351, N'Prem Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4381, 4351, N'Saheli Marg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4382, 4351, N'Saheliyon Ki Bari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4383, 4351, N'Salumber', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4384, 4351, N'Shakti Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4385, 4351, N'Shastri Circle', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4386, 4351, N'Sukher', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4387, 4351, N'Surajpole', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4388, 0, N'Vadodara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4389, 4388, N'Akota', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4390, 4388, N'Alkapuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4391, 4388, N'Anandpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4392, 4388, N'Atladara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4393, 4388, N'Babajipura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4394, 4388, N'Bajva', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4395, 4388, N'Bajwada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4396, 4388, N'Bakrawadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4397, 4388, N'Bapunagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4398, 4388, N'Chhani', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4399, 4388, N'Chhani Jakat Naka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4400, 4388, N'Chikuwadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4401, 4388, N'Dakbunglar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4402, 4388, N'Dandia Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4403, 4388, N'Dasarath Village', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4404, 4388, N'Diwalipura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4405, 4388, N'Ellora Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4406, 4388, N'Fatehganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4407, 4388, N'Fatehgunj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4408, 4388, N'Fatehpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4409, 4388, N'Ghanshyamnagar Soc - 2', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4410, 4388, N'Gorwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4411, 4388, N'Gotri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4412, 4388, N'Harinagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4413, 4388, N'Haripura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4414, 4388, N'ICICI Priority Circle', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4415, 4388, N'Jambubet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4416, 4388, N'Jetaipura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4417, 4388, N'Juthanpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4418, 4388, N'Karadiya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4419, 4388, N'Karelibaug', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4420, 4388, N'Kendranagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4421, 4388, N'L. G. Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4422, 4388, N'Madhavpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4423, 4388, N'Makarpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4424, 4388, N'Mandvi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4425, 4388, N'Maneja', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4426, 4388, N'Manjalpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4427, 4388, N'Manjalpur Village', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4428, 4388, N'Mujmahuda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4429, 4388, N'Nagarwada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4430, 4388, N'Nani Bapod', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4431, 4388, N'Navapura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4432, 4388, N'Nizampura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4433, 4388, N'Old Lakkad Pitha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4434, 4388, N'Pratap Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4435, 4388, N'Pratapgunj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4436, 4388, N'Pratham Upvan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4437, 4388, N'Ramwadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4438, 4388, N'Raopura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4439, 4388, N'Ravaliya Mahudevegon', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4440, 4388, N'Salatwada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4441, 4388, N'Sama', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4442, 4388, N'Samta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4443, 4388, N'Shaishav Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4444, 4388, N'Shiyabaug', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4445, 4388, N'Subhanpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4446, 4388, N'Sursi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4447, 4388, N'Suryanagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4448, 4388, N'Tandalja', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4449, 4388, N'Tarsali', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4450, 4388, N'TP 13', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4451, 4388, N'Vadodara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4452, 4388, N'Vadodara Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4453, 4388, N'Vasna Saiyad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4454, 4388, N'Vishwas Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4455, 4388, N'Wadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4456, 4388, N'Warasiya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4457, 4388, N'Yakuapura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4458, 0, N'Varanasi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4459, 4458, N'Ashapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4460, 4458, N'Assi Ghat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4461, 4458, N'Banaras Hindu University', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4462, 4458, N'Bhelupura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4463, 4458, N'Bulanala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4464, 4458, N'Cantt Station Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4465, 4458, N'Central Jail Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4466, 4458, N'Chaukaghat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4467, 4458, N'Chetganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4468, 4458, N'Chowk Thana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4469, 4458, N'Dasaswamedh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4470, 4458, N'Durgakund', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4471, 4458, N'Gandhinagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4472, 4458, N'Gangapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4473, 4458, N'Gauriganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4474, 4458, N'Godowlia', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4475, 4458, N'Gt Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4476, 4458, N'Gurubagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4477, 4458, N'Gyanvapi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4478, 4458, N'Hanuman Ghat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4479, 4458, N'Harishchandra Ghat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4480, 4458, N'Ishwargangi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4481, 4458, N'Jagatganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4482, 4458, N'Jaitpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4483, 4458, N'Jangambari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4484, 4458, N'Jawahar Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4485, 4458, N'Kabir Chaura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4486, 4458, N'Kabir Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4487, 4458, N'Kakarmatta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4488, 4458, N'Kamachha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4489, 4458, N'Khajuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4490, 4458, N'Lahartara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4491, 4458, N'Lahurabir', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4492, 4458, N'Lanka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4493, 4458, N'Lohta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4494, 4458, N'Luxa Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4495, 4458, N'Madhopur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4496, 4458, N'Mahmoorganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4497, 4458, N'Maldahiya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4498, 4458, N'Nadesar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4499, 4458, N'Nagwa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4500, 4458, N'Paharia', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4501, 4458, N'Pandeypur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4502, 4458, N'Pishach Mochan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4503, 4458, N'Ramnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4504, 4458, N'Rathyatra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4505, 4458, N'Samne Ghat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4506, 4458, N'Sarnath', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4507, 4458, N'Shivpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4508, 4458, N'Sigra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4509, 4458, N'Sonarpura', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4510, 4458, N'Sunderpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4511, 4458, N'Udhopur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4512, 4458, N'Varanasi Chowk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4513, 4458, N'Vishwanath Galli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4514, 0, N'Vellore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4515, 4514, N'Alangayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4516, 4514, N'Allapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4517, 4514, N'Ambur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4518, 4514, N'Ammoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4519, 4514, N'Anna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4520, 4514, N'Arakkonam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4521, 4514, N'Arcot', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4522, 4514, N'Ariyur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4523, 4514, N'Arni Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4524, 4514, N'Bagayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4525, 4514, N'Bangalore Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4526, 4514, N'Bazaar Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4527, 4514, N'Brahmapuram<', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4528, 4514, N'Bss Koil Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4529, 4514, N'Chennai Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4530, 4514, N'Chetty Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4531, 4514, N'Chunnambukara Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4532, 4514, N'Cl Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4533, 4514, N'Dharapadavedu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4534, 4514, N'Dharmapakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4535, 4514, N'Erattaipillaiyar Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4536, 4514, N'Filterbed Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4537, 4514, N'Gandhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4538, 4514, N'Ganesapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4539, 4514, N'Government Hospital Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4540, 4514, N'Gudiyatham', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4541, 4514, N'Infantry Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4542, 4514, N'Jaffrabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4543, 4514, N'Jolarpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4544, 4514, N'Jolarpettai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4545, 4514, N'Kalinjur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4546, 4514, N'Kangeyanallur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4547, 4514, N'Kaniyambadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4548, 4514, N'Karugampattur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4549, 4514, N'Kasba', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4550, 4514, N'Katpadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4551, 4514, N'Kaveripakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4552, 4514, N'Konavattam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4553, 4514, N'Krishna Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4554, 4514, N'Long Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4555, 4514, N'Main Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4556, 4514, N'Makkan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4557, 4514, N'Melvisharam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4558, 4514, N'Minnal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4559, 4514, N'Mundy Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4560, 4514, N'Narasingapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4561, 4514, N'Natrampalli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4562, 4514, N'Nayakkar Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4563, 4514, N'Nemili', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4564, 4514, N'New Sankaran Palayam Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4565, 4514, N'Ocheri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4566, 4514, N'Officers Line', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4567, 4514, N'Old Bypass Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4568, 4514, N'Old Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4569, 4514, N'Otteri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4570, 4514, N'Palanipet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4571, 4514, N'Palavansathu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4572, 4514, N'Pallikonda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4573, 4514, N'Panapakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4574, 4514, N'Patchur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4575, 4514, N'Pernambut', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4576, 4514, N'Pernampattu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4577, 4514, N'Perumuchi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4578, 4514, N'Pudupet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4579, 4514, N'Ram Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4580, 4514, N'Ramanayanikuppam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4581, 4514, N'Rangapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4582, 4514, N'Ranipet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4583, 4514, N'Saidapet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4584, 4514, N'Salavanpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4585, 4514, N'Sankaranpalayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4586, 4514, N'Sathuvachari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4587, 4514, N'Seevur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4588, 4514, N'Senur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4589, 4514, N'Shenbakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4590, 4514, N'Sholinghur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4591, 4514, N'South Mada Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4592, 4514, N'Thakkolam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4593, 4514, N'Thiru Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4594, 4514, N'Thirupattur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4595, 4514, N'Thiruvalam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4596, 4514, N'Thorapadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4597, 4514, N'Thottapalayam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4598, 4514, N'Thuthipattu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4599, 4514, N'Timiri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4600, 4514, N'Uthayendram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4601, 4514, N'Vaniyambadi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4602, 4514, N'Vasanthapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4603, 4514, N'Vilapakkam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4604, 4514, N'Virupakshipuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4605, 4514, N'Walajapet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4606, 0, N'Vijayawada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4607, 4606, N'Ajit Singh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4608, 4606, N'Arundelpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4609, 4606, N'Ashok Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4610, 4606, N'Ayodhyanagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4611, 4606, N'Bavajipet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4612, 4606, N'Benz Circle', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4613, 4606, N'Bharathi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4614, 4606, N'Bhavanipuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4615, 4606, N'Chandramouli Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4616, 4606, N'Cheruvu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4617, 4606, N'Chittinagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4618, 4606, N'Christurajupuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4619, 4606, N'Chuttu Gunta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4620, 4606, N'Durga Agraharam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4621, 4606, N'Durgapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4622, 4606, N'Elaprolu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4623, 4606, N'Enikepadu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4624, 4606, N'Governorpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4625, 4606, N'Gunadala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4626, 4606, N'Hanumanpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4627, 4606, N'Ibrahimpatnam Circle', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4628, 4606, N'Islampet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4629, 4606, N'K P Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4630, 4606, N'Kasturibhaipet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4631, 4606, N'Krishnalanka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4632, 4606, N'Labbipet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4633, 4606, N'Lambadipet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4634, 4606, N'LIC Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4635, 4606, N'M R Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4636, 4606, N'Madhura Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4637, 4606, N'Mallikarjunapet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4638, 4606, N'Maruti Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4639, 4606, N'Mutyalammapadu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4640, 4606, N'New RTC Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4641, 4606, N'Nidamanoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4642, 4606, N'Payakkapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4643, 4606, N'Poranki', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4644, 4606, N'Punammathota', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4645, 4606, N'RTC Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4646, 4606, N'Satya Narayana Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4647, 4606, N'Seetharampuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4648, 4606, N'Siddharth Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4649, 4606, N'Sri Ramachandra Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4650, 4606, N'Srinivasanagar Bank Colony-3', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4651, 4606, N'Suryaraopeth', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4652, 4606, N'Tarapet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4653, 4606, N'Vasavya Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4654, 4606, N'Vastralatha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4655, 4606, N'Veterinary Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4656, 4606, N'Vidhyadharpuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4657, 0, N'Vizag', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4658, 4657, N'Adarsh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4659, 4657, N'Akkayyapalem', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4660, 4657, N'Ashoka Park Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4661, 4657, N'Balayya Sastri Layout', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4662, 4657, N'Chegalrao Peta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4663, 4657, N'Chinna Waltair', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4664, 4657, N'CISF Quarters', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4665, 4657, N'Durga Beach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4666, 4657, N'Dwaraka Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4667, 4657, N'Ex Service Men Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4668, 4657, N'Gnanapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4669, 4657, N'Gopalapatnam', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4670, 4657, N'H B Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4671, 4657, N'Hanumanthavaka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4672, 4657, N'Hindustan Petroleum Corporation Limited', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4673, 4657, N'Hindustan Shipyard', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4674, 4657, N'HPCL Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4675, 4657, N'Indira Gandhi Zoological Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4676, 4657, N'Isakathota', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4677, 4657, N'Jodugulla Palem', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4678, 4657, N'Kailasapuram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4679, 4657, N'Kailasgiri / Kailasa Hill', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4680, 4657, N'Kanchera Palem', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4681, 4657, N'Krantinagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4682, 4657, N'Lalitha Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4683, 4657, N'Lawsons Bay Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4684, 4657, N'Maddila Palem', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4685, 4657, N'Madhavadhara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4686, 4657, N'Mulagada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4687, 4657, N'MVP Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4688, 4657, N'Nausena Bagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4689, 4657, N'Naval Dockyard', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4690, 4657, N'Naval Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4691, 4657, N'Naval Sailors Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4692, 4657, N'Nerella Koneru', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4693, 4657, N'Pedda Waltair', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4694, 4657, N'Pithapuram Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4695, 4657, N'Port Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4696, 4657, N'Prakash Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4697, 4657, N'Railway New Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4698, 4657, N'Railway Quarters', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4699, 4657, N'Ram Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4700, 4657, N'Ramakrishna Beach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4701, 4657, N'Santhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4702, 4657, N'Seetamma Peta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4703, 4657, N'Seethammadhara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4704, 4657, N'Shri Vijaynagar Naval Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4705, 4657, N'Simhagiri Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4706, 4657, N'Soldierpet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4707, 4657, N'Sri Hari Puram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4708, 4657, N'Sriram Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4709, 4657, N'Thatichetlapalem', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4710, 4657, N'Vada Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4711, 4657, N'Visakha Container Terminal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4712, 4657, N'Vishalakshi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4713, 4657, N'Vizag Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4714, 0, N'Warangal', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4715, 4714, N'Dhayanda Nagar Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4716, 4714, N'Hanamkonda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4717, 4714, N'Jpn Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4718, 4714, N'Kazipet', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4719, 4714, N'Matwada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4720, 4714, N'Postal Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4721, 4714, N'Svn Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4722, 4714, N'Warangal Gpo', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4723, 0, N'Jammu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4724, 4723, N'Akhnoor', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4725, 4723, N'Arnia', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4726, 4723, N'Bari Brahmana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4727, 4723, N'Gandhi Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4728, 4723, N'Jammu Cantonment', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4729, 4723, N'Jammu Tawi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4730, 4723, N'Janipara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4731, 4723, N'Rehari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4732, 4723, N'Sainik Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4733, 4723, N'Talab Tiloo', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4734, 4723, N'Udrana', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4735, 4723, N'Vijay Pur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4736, 0, N'Jamnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4737, 4736, N'Central Bank Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4738, 4736, N'Chandi Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4739, 4736, N'Dared', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4740, 4736, N'Digvijay Plot', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4741, 4736, N'Dwaraka', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4742, 4736, N'Hapa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4743, 4736, N'Hawai Chowk', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4744, 4736, N'Indira Marg', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4745, 4736, N'Kashi Vishwanath Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4746, 4736, N'Khambhalia Gate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4747, 4736, N'Kv Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4748, 4736, N'Pancheshwar Tower Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4749, 4736, N'Patel Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4750, 4736, N'Ranjit Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4751, 4736, N'St Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4752, 4736, N'Sumair Club Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4753, 0, N'Jamshedpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4754, 4753, N'Adarsh Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4755, 4753, N'Agrico Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4756, 4753, N'Azad Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4757, 4753, N'Baganshahi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4758, 4753, N'Bagbera Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4759, 4753, N'Bagun Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4760, 4753, N'Bagunhatu', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4761, 4753, N'Baradwari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4762, 4753, N'Bari Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4763, 4753, N'Baridih', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4764, 4753, N'Baridih Basti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4765, 4753, N'BH Area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4766, 4753, N'Bhalubasa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4767, 4753, N'Bhatia basti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4768, 4753, N'Birsa Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4769, 4753, N'Bistupur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4770, 4753, N'Burma Mines', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4771, 4753, N'Cable Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4772, 4753, N'Circuit House area', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4773, 4753, N'Dhatkidih', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4774, 4753, N'Gayatri Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4775, 4753, N'Golmuri', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4776, 4753, N'Golpahari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4777, 4753, N'Govindpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4778, 4753, N'Hill View Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4779, 4753, N'Jamshedpur Airport', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4780, 4753, N'Jamshedpur Tata Steel', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4781, 4753, N'Jubilee Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4782, 4753, N'Jugsalai', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4783, 4753, N'Kadma', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4784, 4753, N'Kagal Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4785, 4753, N'Kasidih', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4786, 4753, N'Namda Basti', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4787, 4753, N'New Rani Kudar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4788, 4753, N'Nildih', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4789, 4753, N'Northern Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4790, 4753, N'Parsudih', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4791, 4753, N'Ram Das Bhatta', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4792, 4753, N'Ramnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4793, 4753, N'Refugee Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4794, 4753, N'Sahara City', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4795, 4753, N'Sakchi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4796, 4753, N'Salgajhari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4797, 4753, N'Shastri Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4798, 4753, N'Shyamnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4799, 4753, N'Sidhgora', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4800, 4753, N'Sonari', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4801, 4753, N'South Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4802, 4753, N'Tata Motors', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4803, 4753, N'Tata Tinplate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4804, 4753, N'Telco Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4805, 4753, N'Uliyan', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4806, 4753, N'Vaatika Green City', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4807, 4753, N'Vidyapati Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4808, 4753, N'Zakir Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4809, 0, N'Jodhpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4810, 4809, N'Banar Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4811, 4809, N'Basni', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4812, 4809, N'Bhagat Ki Kothi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4813, 4809, N'Bilara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4814, 4809, N'Chopasni Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4815, 4809, N'High Court Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4816, 4809, N'Jawala Vihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4817, 4809, N'Jhalamand Circle', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4818, 4809, N'Kamala Nehru Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4819, 4809, N'Mahamandir', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4820, 4809, N'Man Pal Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4821, 4809, N'Mandore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4822, 4809, N'Mandore Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4823, 4809, N'Masuria', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4824, 4809, N'Mgh Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4825, 4809, N'Nai Sarak', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4826, 4809, N'Nehru Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4827, 4809, N'New Power House Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4828, 4809, N'Pal Link Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4829, 4809, N'Pal Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4830, 4809, N'Pali Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4831, 4809, N'Paota', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4832, 4809, N'Phalodi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4833, 4809, N'Pipar City', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4834, 4809, N'Pratap Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4835, 4809, N'Pwd Colony', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4836, 4809, N'Rai Ka Bagh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4837, 4809, N'Ratanada', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4838, 4809, N'Residency Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4839, 4809, N'Saraswati Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4840, 4809, N'Sardarpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4841, 4809, N'Shastri Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4842, 4809, N'Shyam Nagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4843, 4809, N'Siwanchi Gate', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4844, 4809, N'Station Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4845, 4809, N'Sushant City', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4846, 140, N'A.J.C. Bose Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4847, 140, N'Agarpara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4848, 140, N'Alipore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4849, 140, N'Ananda Palit Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4850, 140, N'Ashokgarh', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4851, 140, N'B B Ganguly Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4852, 140, N'Bagbazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4853, 140, N'Bagha Jatin', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4854, 140, N'Baguiati', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4855, 140, N'Baksara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4856, 140, N'Ballygunge', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4857, 140, N'Ban Hugli', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4858, 140, N'Barabazar Market', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4859, 140, N'Barahanagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4860, 140, N'BBD Bag', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4861, 140, N'Behala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4862, 140, N'Belgachhiya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4863, 140, N'Belghariya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4864, 140, N'Belur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4865, 140, N'Beniapukur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4866, 140, N'Bhawanipur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4867, 140, N'Bosepukur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4868, 140, N'Bow Bazaar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4869, 140, N'Camac St', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4870, 140, N'Chetla', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4871, 140, N'Chitpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4872, 140, N'Church Lane', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4873, 140, N'Circus Avenue', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4874, 140, N'Dakshineshwar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4875, 140, N'Das', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4876, 140, N'Dhakuria', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4877, 140, N'Dhapa', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4878, 140, N'Dharmatala Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4879, 140, N'Dr M D Ishaque Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4880, 140, N'Dum Dum', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4881, 140, N'Elliot Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4882, 140, N'Entally', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4883, 140, N'Ganesh Chandra Avenue', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4884, 140, N'Garden Reach', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4885, 140, N'Gariahat Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4886, 140, N'Gariya', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4887, 140, N'Hazra road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4888, 140, N'Ho Chi Minh Sarani', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4889, 140, N'Hogg St', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4890, 140, N'Howrah', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4891, 140, N'India Exchange Place', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4892, 140, N'Jadabpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4893, 140, N'Jagachha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4894, 140, N'Jawaharlal Nehru Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4895, 140, N'Kalighat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4896, 140, N'Kankurgachhi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4897, 140, N'Kasba', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4898, 140, N'Kashipur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4899, 140, N'Kidderpore', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4900, 140, N'Lake Terrace', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4901, 140, N'Lake Town', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4902, 140, N'Lilua', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4903, 140, N'Lord Sinha Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4904, 140, N'Mahatma Gandhi Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4905, 140, N'Maniktala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4906, 140, N'Marquis Plaza', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4907, 140, N'Middleton Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4908, 140, N'Minto Park', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4909, 140, N'Mirza Ghalib Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4910, 140, N'Mourigram', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4911, 140, N'Mukundapur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4912, 140, N'Nager Bazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4913, 140, N'Narkeldanga', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4914, 140, N'Nayabad', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4915, 140, N'Park Circus', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4916, 140, N'Park Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4917, 140, N'Prince Golam Mohammad Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4918, 140, N'Rafi Ahmed Kidwai Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4919, 140, N'Raja Santosh Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4920, 140, N'Rajarhat', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4921, 140, N'Ramrajtala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4922, 140, N'Rowland Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4923, 140, N'Royd Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4924, 140, N'Salkia', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4925, 140, N'Salt Lake City', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4926, 140, N'Santoshpur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4927, 140, N'Santragachhi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4928, 140, N'Sarat Bose Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4929, 140, N'Satgachi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4930, 140, N'Shalimar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4931, 140, N'Shobhabazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4932, 140, N'Shyambazar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4933, 140, N'Sinthi', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4934, 140, N'Sodepur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4935, 140, N'Stuart Ln', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4936, 140, N'Subhashnagar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4937, 140, N'Sudder Street', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4938, 140, N'Tala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4939, 140, N'Taltala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4940, 140, N'Tangra', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4941, 140, N'Thakurpukur', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4942, 140, N'Tikiapara', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4943, 140, N'Tiljala', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4944, 140, N'Topsia Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4945, 140, N'Ultadanda', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4946, 140, N'V.I.P. Road', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4948, 0, N'Seikhpura', 0)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4949, 0, N'Siwan', 0)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4950, 0, N'Forbesganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4951, 0, N'Araria', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4952, 0, N'Purnea', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4953, 0, N'Katihar', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4954, 0, N'Jogbani', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4955, 0, N'Bathnaha', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4956, 0, N'Raniganj', 1)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4957, 0, N'Gangarampur', 0)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4958, 0, N'udaltest', 0)
GO
INSERT [dbo].[City_Locality] ([ID], [ParentID], [Name], [IsActive]) VALUES (4959, 0, N'Jharia', 0)
GO
SET IDENTITY_INSERT [dbo].[City_Locality] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientFeedback] ON 

GO
INSERT [dbo].[ClientFeedback] ([Id], [UserId], [FeedBack], [Date], [Status]) VALUES (1, 1, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus felis id dolor dignissim vel vulputate eros feugiat Lorem ipsum dolor sit amet, consectetur  adipiscing elit. Donec luctus felis id dolor dignissim vel vulputate eros feugiat', CAST(N'2015-09-11T12:11:20.163' AS DateTime), 1)
GO
INSERT [dbo].[ClientFeedback] ([Id], [UserId], [FeedBack], [Date], [Status]) VALUES (2, 2, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus felis id dolor dignissim vel vulputate eros feugiat Lorem ipsum dolor sit amet, consectetur  adipiscing elit. Donec luctus felis id dolor dignissim vel vulputate eros feugiat', CAST(N'2015-09-11T12:11:20.163' AS DateTime), 1)
GO
INSERT [dbo].[ClientFeedback] ([Id], [UserId], [FeedBack], [Date], [Status]) VALUES (3, 3, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus felis id dolor dignissim vel vulputate eros feugiat Lorem ipsum dolor sit amet, consectetur  adipiscing elit. Donec luctus felis id dolor dignissim vel vulputate eros feugiat', CAST(N'2015-09-11T12:11:20.163' AS DateTime), 1)
GO
INSERT [dbo].[ClientFeedback] ([Id], [UserId], [FeedBack], [Date], [Status]) VALUES (4, 4, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus felis id dolor dignissim vel vulputate eros feugiat Lorem ipsum dolor sit amet, consectetur  adipiscing elit. Donec luctus felis id dolor dignissim vel vulputate eros feugiat', CAST(N'2015-09-11T12:11:20.163' AS DateTime), 1)
GO
INSERT [dbo].[ClientFeedback] ([Id], [UserId], [FeedBack], [Date], [Status]) VALUES (5, 5, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus felis id dolor dignissim vel vulputate eros feugiat Lorem ipsum dolor sit amet, consectetur  adipiscing elit. Donec luctus felis id dolor dignissim vel vulputate eros feugiat', CAST(N'2015-09-11T12:11:20.163' AS DateTime), 1)
GO
INSERT [dbo].[ClientFeedback] ([Id], [UserId], [FeedBack], [Date], [Status]) VALUES (6, 2, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus felis id dolor dignissim vel vulputate eros feugiat Lorem ipsum dolor sit amet, consectetur  adipiscing elit. Donec luctus felis id dolor dignissim vel vulputate eros feugiat', CAST(N'2015-09-11T12:11:20.163' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[ClientFeedback] OFF
GO
SET IDENTITY_INSERT [dbo].[CMS] ON 

GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (41, N'Footer.facebook', N'<p>
	https://www.facebook.com/thekeshri</p>
', N'https://www.facebook.com/thekeshri', N'https://www.facebook.com/thekeshri', N'', 0)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (42, N'Footer.twitter', N'<p>
	https://twitter.com/udalcse</p>
', N'https://twitter.com/udalcse', N'https://twitter.com/udalcse', N'', NULL)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (43, N'Footer.google-plus', N'<p>
	https://plus.google.com/+KsoftwareCoIn/videos</p>
', N'https://plus.google.com/+KsoftwareCoIn/videos', N'https://plus.google.com/+KsoftwareCoIn/videos', N'', 0)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (113, N'Contact Us', N'<p>
	Contact Us</p>
', N'Contact Us', N'Contact Us', N'', 78)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (115, N'AboutUs', N'<p>
	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>
<p>
	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
<h2>
	TEST BY TECHNICIAN</h2>
<p>
	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.</p>
<p>
	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>
<h2>
	Nam liber tempor cum soluta nobis</h2>
<p>
	Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>
', N'AboutUs', N'AboutUs', N'', 78)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (116, N'Faq', N'<p>
	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>
<p>
	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
<h2>
	TEST BY TECHNICIAN</h2>
<p>
	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.</p>
<p>
	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>
<h2>
	Nam liber tempor cum soluta nobis</h2>
<p>
	Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>
', N'Faq', N'Faq', N'', 111)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (118, N'Quick Contact', N'<h3>Quick Contact</h3>
                            <p>
                                <span>Call us :</span> +111 222 4444<br />
                                <span>E-mail :</span> services99@gmail.com<br />
                                <span>Address : </span>
                            </p>
                            <address>
                                Lorem ipsum dolor sit
                                <br />
                                amet, consectetur
                                <br />
                                adipiscing elit.
                            </address>', N'Quick Contact', N'Quick Contact', N'', 0)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (119, N'Quick Links', N'<h3>
	Quick Links</h3>
<div class="links">
	<ul>
		<li>
			<a href="/">Home</a></li>
		<li>
			<a href="/aboutus">about us</a></li>
		<li>
			<a href="/">services</a></li>
		<li>
			<a href="/joinus">join us</a></li>
		<li>
			<a href="/faq">faq</a></li>
		<li>
			<a href="/contactus">contact us</a></li>
	</ul>
</div>
', N'Quick Links', N'Quick Links', N'', 0)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (120, N'Privacy Policy', N'<p>
                                <a href="#">Privacy Policy</a> &nbsp; &nbsp;&nbsp;&nbsp; <a href="#">
                                    <abbr>T  &amp;  C</abbr>
                                </a>
                            </p>
                            <p>© 2015 Service99. All rights reserved.</p>', N'Privacy Policy', N'Privacy Policy', N'', 0)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (121, N'Footer.youtube', N'<p>
	https://www.linkedin.com/company/the-keshri-software-solutions</p>
', N'https://www.linkedin.com/company/the-keshri-software-solutions', N'https://www.linkedin.com/company/the-keshri-software-solutions', N'', 0)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (122, N'Footer.digg', N'<p>
	https://www.facebook.com/thekeshri</p>
', N'https://www.facebook.com/thekeshri', N'https://www.facebook.com/thekeshri', N'', 0)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (123, N'Footer.yahoo', N'<p>
	https://www.facebook.com/Kebhariads</p>
', N'https://www.facebook.com/Kebhariads', N'https://www.facebook.com/Kebhariads', N'', 0)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (124, N'ContactUs.Map', N'Kolkata', N'Kolkata', N'Kolkata', N'', NULL)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (127, N'ContactUs.ContactAddress', N'<div class="col-6 otherservice">
                    <h3>our contact & address</h3>
                </div>
                <p>Service 99</p>
                <p>Salt Lake Road - Repair Appliance</p>
                <p>Gate (A1) - 4th Floor - Salt Lake Sector V</p>
                <p>P.O: 700064 - India:11662</p>
                <p><b>Office Details</b></p>
                <p>Office Phone : ++111 222 4444</p>
                <p>Office Fax : +966 11 207 8009   Ext.150</p>
                <p>Email: service99@gmail.com</p>', N'ContactUs.ContactAddress', N'ContactUs.ContactAddress', N'', 0)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (128, N'JoinUs', N'<p>
	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>
<p>
	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
<h2>
	TEST BY TECHNICIAN</h2>
<p>
	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.</p>
<p>
	Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>
<h2>
	Nam liber tempor cum soluta nobis</h2>
<p>
	Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>
', N'JoinUs', N'JoinUs', N'', 0)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (130, N'Header.MailTo', N'<p>
	<a href="mailto:info@service99.com">info@service99.com</a></p>
', N'Header.MailTo', N'Header.MailTo', N'', 0)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (131, N'Header.Telephone', N'<p>
	<a href="tel:+1112224444">+ 111 222 4444</a></p>
', N'Header.Telephone', N'Header.Telephone', N'', 0)
GO
INSERT [dbo].[CMS] ([ID], [Title], [Description], [seo_keywords], [seo_descriptions], [Image], [PageId]) VALUES (132, N'Testing', N'<p>
	Testing</p>
', N'Testing', N'Testing', N'', 0)
GO
SET IDENTITY_INSERT [dbo].[CMS] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

GO
INSERT [dbo].[Contact] ([Id], [Name], [Email], [Message], [PhoneNo], [CreatedDate]) VALUES (1, N'Amandeep', N'mantu.bcrec88@gmail.com', N'testing', N'9632015478', CAST(N'2015-09-11T11:53:51.737' AS DateTime))
GO
INSERT [dbo].[Contact] ([Id], [Name], [Email], [Message], [PhoneNo], [CreatedDate]) VALUES (10, N'Abhi', N'abhi@gmail.com', N'fdebvg', N'9632015478', CAST(N'2015-09-11T11:53:51.737' AS DateTime))
GO
INSERT [dbo].[Contact] ([Id], [Name], [Email], [Message], [PhoneNo], [CreatedDate]) VALUES (11, N'Rakesh', N'abhik.bcrec88@gmail.com', N'jghfkj', N'9632015478', CAST(N'2015-09-11T11:53:51.737' AS DateTime))
GO
INSERT [dbo].[Contact] ([Id], [Name], [Email], [Message], [PhoneNo], [CreatedDate]) VALUES (12, N'Test 090', N'satyendra.biet35@gmail.com', N'Test Message', N'7894561230', CAST(N'2015-09-22T13:40:42.253' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

GO
INSERT [dbo].[Role] ([ID], [Role]) VALUES (1, N'Admin')
GO
INSERT [dbo].[Role] ([ID], [Role]) VALUES (2, N'User')
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

GO
INSERT [dbo].[Service] ([Id], [Name], [Details], [Icon], [Price], [Status], [DetailsIcon], [DisplayOrder]) VALUES (1, N'AC', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', N'ico1.png', CAST(123.00 AS Decimal(18, 2)), 1, N'ico15.png', 5)
GO
INSERT [dbo].[Service] ([Id], [Name], [Details], [Icon], [Price], [Status], [DetailsIcon], [DisplayOrder]) VALUES (2, N'COOLER', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', N'ico2.png', CAST(123.00 AS Decimal(18, 2)), 1, N'ico16.png', 5)
GO
INSERT [dbo].[Service] ([Id], [Name], [Details], [Icon], [Price], [Status], [DetailsIcon], [DisplayOrder]) VALUES (3, N'COMPUTER', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', N'ico3.png', CAST(123.00 AS Decimal(18, 2)), 1, N'ico17.png', 5)
GO
INSERT [dbo].[Service] ([Id], [Name], [Details], [Icon], [Price], [Status], [DetailsIcon], [DisplayOrder]) VALUES (4, N'MOBILE', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', N'ico4.png', CAST(123.00 AS Decimal(18, 2)), 1, N'ico18.png', 5)
GO
INSERT [dbo].[Service] ([Id], [Name], [Details], [Icon], [Price], [Status], [DetailsIcon], [DisplayOrder]) VALUES (5, N'TELEVISION', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', N'ico5.png', CAST(123.00 AS Decimal(18, 2)), 1, N'ico19.png', 5)
GO
INSERT [dbo].[Service] ([Id], [Name], [Details], [Icon], [Price], [Status], [DetailsIcon], [DisplayOrder]) VALUES (6, N'REFRIGERATOR', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', N'ico6.png', CAST(123.00 AS Decimal(18, 2)), 1, N'ico20.png', 5)
GO
INSERT [dbo].[Service] ([Id], [Name], [Details], [Icon], [Price], [Status], [DetailsIcon], [DisplayOrder]) VALUES (7, N'MIXER', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', N'ico7.png', CAST(123.00 AS Decimal(18, 2)), 1, N'ico21.png', 5)
GO
INSERT [dbo].[Service] ([Id], [Name], [Details], [Icon], [Price], [Status], [DetailsIcon], [DisplayOrder]) VALUES (8, N'WASHING MACHINE', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', N'ico8.png', CAST(123.00 AS Decimal(18, 2)), 1, N'ico22.png', 5)
GO
INSERT [dbo].[Service] ([Id], [Name], [Details], [Icon], [Price], [Status], [DetailsIcon], [DisplayOrder]) VALUES (9, N'MUSIC SYSTEMS', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', N'ico9.png', CAST(123.00 AS Decimal(18, 2)), 1, N'ico23.png', 5)
GO
INSERT [dbo].[Service] ([Id], [Name], [Details], [Icon], [Price], [Status], [DetailsIcon], [DisplayOrder]) VALUES (10, N'STABILIZERS', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
industry''s standard dummy text ever since the 1500s', N'ico10.png', CAST(123.00 AS Decimal(18, 2)), 1, N'ico24.png', 5)
GO
INSERT [dbo].[Service] ([Id], [Name], [Details], [Icon], [Price], [Status], [DetailsIcon], [DisplayOrder]) VALUES (11, N'CLOTHES', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', N'6305_cloth.png', CAST(123.00 AS Decimal(18, 2)), 1, N'5629_ico25.png', 2)
GO
INSERT [dbo].[Service] ([Id], [Name], [Details], [Icon], [Price], [Status], [DetailsIcon], [DisplayOrder]) VALUES (14, N'Test', N'a', N'', CAST(1223.00 AS Decimal(18, 2)), 1, N'', 1)
GO
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAddress] ON 

GO
INSERT [dbo].[UserAddress] ([Id], [UserId], [Address], [FlatNo], [City], [State], [Pin]) VALUES (1, 1, N'Salt Lake1', N'AE-553', N'Kolkata', NULL, NULL)
GO
INSERT [dbo].[UserAddress] ([Id], [UserId], [Address], [FlatNo], [City], [State], [Pin]) VALUES (2, 16, NULL, NULL, N'Kolkata Zoo, Alipore, Alipore Road, Kolkata, West Bengal, India', N'West bengal', 123456)
GO
SET IDENTITY_INSERT [dbo].[UserAddress] OFF
GO
SET IDENTITY_INSERT [dbo].[UserDetails] ON 

GO
INSERT [dbo].[UserDetails] ([Id], [Name], [Email], [Mobile], [Password], [Status], [CreatedDate], [RoleId], [Image], [IsNewsLetter]) VALUES (1, N'Mr. Alok Rana1', N'satyendra.biet35@gmail.com', N'7501312563', N'QOtMqnT2los=', 1, CAST(N'2015-09-10T18:11:11.840' AS DateTime), 2, N'8753_25-thumb.jpg', 0)
GO
INSERT [dbo].[UserDetails] ([Id], [Name], [Email], [Mobile], [Password], [Status], [CreatedDate], [RoleId], [Image], [IsNewsLetter]) VALUES (2, N'Mr. Abhishek Raj', N'abhishek@gnail.com', N'908765441', N'123456', 1, CAST(N'2015-09-10T18:11:11.840' AS DateTime), 2, NULL, NULL)
GO
INSERT [dbo].[UserDetails] ([Id], [Name], [Email], [Mobile], [Password], [Status], [CreatedDate], [RoleId], [Image], [IsNewsLetter]) VALUES (3, N'Mr. Partha Ghosh', N'partha@gmail.com', NULL, N'123456', 1, CAST(N'2015-09-10T18:11:11.840' AS DateTime), 2, NULL, NULL)
GO
INSERT [dbo].[UserDetails] ([Id], [Name], [Email], [Mobile], [Password], [Status], [CreatedDate], [RoleId], [Image], [IsNewsLetter]) VALUES (4, N'Mr. Rajib Mahata', N'rajib@gmail.com', N'7894561230', N'789456123', 1, CAST(N'2015-09-10T18:11:11.840' AS DateTime), 2, NULL, NULL)
GO
INSERT [dbo].[UserDetails] ([Id], [Name], [Email], [Mobile], [Password], [Status], [CreatedDate], [RoleId], [Image], [IsNewsLetter]) VALUES (5, N'Mr. Udal Bharti', N'udalbharti@gmail.com', N'908765441', N'123456', 1, CAST(N'2015-09-10T18:11:11.840' AS DateTime), 2, NULL, NULL)
GO
INSERT [dbo].[UserDetails] ([Id], [Name], [Email], [Mobile], [Password], [Status], [CreatedDate], [RoleId], [Image], [IsNewsLetter]) VALUES (7, N'Ramesh Rajak', N'ramesh@gmail.com', N'9877857858', N'123456', 1, CAST(N'2015-09-11T14:45:19.420' AS DateTime), 2, NULL, NULL)
GO
INSERT [dbo].[UserDetails] ([Id], [Name], [Email], [Mobile], [Password], [Status], [CreatedDate], [RoleId], [Image], [IsNewsLetter]) VALUES (12, N'Aman Kumar', N'abhishek_98322@yahoo.com', N'6547568679', N'123456', 1, CAST(N'2015-09-11T18:09:09.970' AS DateTime), 2, NULL, NULL)
GO
INSERT [dbo].[UserDetails] ([Id], [Name], [Email], [Mobile], [Password], [Status], [CreatedDate], [RoleId], [Image], [IsNewsLetter]) VALUES (13, N'admin', N'admin', N'7894561230', N'123456', 1, CAST(N'2015-09-18T10:11:08.803' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[UserDetails] ([Id], [Name], [Email], [Mobile], [Password], [Status], [CreatedDate], [RoleId], [Image], [IsNewsLetter]) VALUES (16, N'Test ', N'admin@service99.com', N'9087654321', N'p7d0ACl18fo=', 1, CAST(N'2015-09-18T12:45:53.370' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[UserDetails] ([Id], [Name], [Email], [Mobile], [Password], [Status], [CreatedDate], [RoleId], [Image], [IsNewsLetter]) VALUES (28, N'Test Kr', N'testing.skr@gmail.com', N'7501312563', N'QOtMqnT2los=', 1, CAST(N'2015-11-06T12:10:59.453' AS DateTime), 2, N'', 0)
GO
SET IDENTITY_INSERT [dbo].[UserDetails] OFF
GO
ALTER TABLE [dbo].[BookTechnician] ADD  CONSTRAINT [DF_BookTechnician_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[City_Locality] ADD  CONSTRAINT [DF_City_Locality_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ClientFeedback] ADD  CONSTRAINT [DF_ClientFeedback_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[UserDetails] ADD  CONSTRAINT [DF_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_UserAddress_UserDetails] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserDetails] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserAddress] CHECK CONSTRAINT [FK_UserAddress_UserDetails]
GO
/****** Object:  StoredProcedure [dbo].[sp_BookTechnicianStatusChange]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_BookTechnicianStatusChange]
(
@Id int,
@status bit
)
As
Begin
Update dbo.BookTechnician
Set
Status = @status
Where
Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[sp_City_StatusChange]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_City_StatusChange]
(
@Id int,
@status bit
)
As
Begin
Update dbo.City_Locality
Set
IsActive = @status
Where
ID=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[sp_ClientFeedback_StatusChange]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ClientFeedback_StatusChange]
(
@Id int,
@status bit
)
As
Begin
Update dbo.ClientFeedback
Set
Status = @status
Where
Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteCMS]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_DeleteCMS]
(
@Id int
)
As
Begin
Delete From CMS 
Where
Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllCMS]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetAllCMS](@totalRows int out
)
AS
BEGIN
SELECT  *  FROM CMS	
set @totalRows=@@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllContact]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetAllContact](@totalRows int out
)
AS
BEGIN
SELECT * FROM  Contact	
set @totalRows=@@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCMSById]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetCMSById] 
@Id int = 0
AS

BEGIN
		
	SELECT   *
	FROM  CMS	
where @Id = Id
	SET ROWCOUNT 0
    -- Insert statements for procedure here
	
END

GO
/****** Object:  StoredProcedure [dbo].[sp_SaveBookTechnician]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_SaveBookTechnician]
(
@ServiceId int,
@Name nvarchar(250), 
@City nvarchar(250), 
@MobileNo nvarchar(250), 
@Email nvarchar(250), 
@DescribeProblem nvarchar(250),
@Status bit,
@HouseNo varchar(50),
@Locality varchar(250)
)
As
Begin
Declare @Id int
Set @Id = 0
Begin
Insert Into BookTechnician  
(ServiceId,Name, City, MobileNo, Email, DescribeProblem, Status,HouseNo,Locality)
Values
(
@ServiceId,@Name, @City, @MobileNo,@Email,@DescribeProblem,@Status,@HouseNo,@Locality
)
Set @ID=SCOPE_IDENTITY()
End
Select @Id As ID
End

GO
/****** Object:  StoredProcedure [dbo].[sp_SaveCMS]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_SaveCMS]
(
@Title nvarchar(155), 
@Description ntext, 
@seo_keywords nvarchar(255),
@seo_descriptions nvarchar(255),
@Image nvarchar(255),
@PageId int
)
As
Begin
Declare @Id int
Set @Id = 0
Begin
Insert Into CMS  
(
Title, 
[Description], 
seo_keywords,
seo_descriptions,
[Image],
PageId
)
Values
(
@Title, 
@Description, 
@seo_keywords,
@seo_descriptions,
@Image,
@PageId
)
Set @ID=SCOPE_IDENTITY()
--Set @StudentId=@@IDENTITY()
End
Select @Id As ID
End

GO
/****** Object:  StoredProcedure [dbo].[sp_SaveContact]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_SaveContact]
(
@Name nvarchar(255),
@Email nvarchar(255), 
@Message nvarchar(255),
@PhoneNo nvarchar(255)
)
As
Begin
Declare @Id int
Set @Id = 0
Begin
Insert Into Contact 
(
Name, Email, Message, PhoneNo
)
Values(@Name, @Email, @Message, @PhoneNo)
Set @Id=SCOPE_IDENTITY()
--Set @StudentId=@@IDENTITY()
End
Select @Id As Id
End

GO
/****** Object:  StoredProcedure [dbo].[sp_ServiceList]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ServiceList]
(@Id int,@totalRows int out)
As
begin	  
if(@Id>0)
begin
	select * from dbo.Service where Id=@Id order by ID desc
		set @totalRows=@@ROWCOUNT
end
else
begin
	select * from Service  order by Id desc
		set @totalRows=@@ROWCOUNT
end
end

GO
/****** Object:  StoredProcedure [dbo].[sp_ServiceStatusChange]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ServiceStatusChange]
(
@Id int,
@status bit
)
As
Begin
Update dbo.Service
Set
Status = @status
Where
Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateCMS]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_UpdateCMS]
(
@Id int,
@Title nvarchar(155), 
@Description ntext, 
@seo_keywords nvarchar(255),
@seo_descriptions nvarchar(255),
@Image nvarchar(255),
@PageId int
)
As
Begin
Update  CMS
Set
Title = @Title , 
[Description] = @Description ,
seo_keywords = @seo_keywords ,
seo_descriptions = @seo_descriptions ,
[Image]=@Image,
PageId=@PageId
Where
ID=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_User_Insert]
(
@Name varchar(50), 
@Email varchar(150),
@Mobile varchar(50),
@Password nvarchar(255),
@Status bit,
@RoleId int,
@Image varchar(150),
@IsNewsLetter bit
)
As
Begin
Declare @Id int
Set @Id = 0
Begin
Insert Into dbo.UserDetails
(
Name, 
Email, 
Mobile,
Password,
Status,
RoleId,
Image,
IsNewsLetter
)
Values
(
@Name, 
@Email, 
@Mobile,
@Password,
@Status,
@RoleId,
@Image,
@IsNewsLetter
)
Set @ID=SCOPE_IDENTITY()
--Set @StudentId=@@IDENTITY()
End
Select @Id As ID
End

GO
/****** Object:  StoredProcedure [dbo].[sp_User_Update]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_User_Update]
(
@Id int,
@Name varchar(50), 
@Email varchar(150),
@Mobile varchar(50),
@Password nvarchar(255),
@Status bit,
@RoleId int,
@Image varchar(150),
@IsNewsLetter bit
)
As
Begin
update dbo.UserDetails
set 

Name=@Name, 
Email=@Email, 
Mobile=@Mobile,
Password=@Password,
Status=@Status,
RoleId=@RoleId,
Image=@Image,
IsNewsLetter=@IsNewsLetter

where Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[sp_UserDetails_StatusChange]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_UserDetails_StatusChange]
(
@Id int,
@status bit
)
As
Begin
Update dbo.UserDetails
Set
Status = @status
Where
Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[sp_Userlogin]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Userlogin]
( 
  @Email VARCHAR(150),
  @Password VARCHAR(150)
) 
AS

SELECT Id, Name, Email, Mobile, Status, Password,RoleId,(select Role from Role r where r.ID=u.RoleId) as UserType
  FROM UserDetails u
WHERE Status=1 and Email = @Email AND Password = @Password

GO
/****** Object:  StoredProcedure [dbo].[usp_AppSettings_Delete]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_AppSettings_Delete]
@Id int
as
begin
delete from AppSettings where ID=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[usp_AppSettings_Fetch]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_AppSettings_Fetch]
as
Begin
select * from AppSettings
end
GO
/****** Object:  StoredProcedure [dbo].[usp_AppSettings_FetchAllForGrid]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[usp_AppSettings_FetchAllForGrid]
(@totalRows int out)
as
begin
select * from AppSettings
		set @totalRows=@@ROWCOUNT
	
end
GO
/****** Object:  StoredProcedure [dbo].[usp_AppSettings_FetchById]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_AppSettings_FetchById]
@Id int
as
Begin
select * from AppSettings where ID=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[usp_AppSettings_FetchByKey]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_AppSettings_FetchByKey]
@Key varchar(50)
as
Begin
select * from AppSettings where [Key]=@Key
end
GO
/****** Object:  StoredProcedure [dbo].[usp_AppSettings_Insert]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_AppSettings_Insert]
@Key varchar(50), 
@Value varchar(50)
as
begin
Declare @Id int
Set @Id = 0
Begin
insert into dbo.AppSettings([Key], Value) values(@Key, @Value)
Set @Id=SCOPE_IDENTITY()
end
select @Id as ID
end
GO
/****** Object:  StoredProcedure [dbo].[usp_AppSettings_Update]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_AppSettings_Update]
@Id int,
@Key varchar(50), 
@Value varchar(50)
as

Begin
update dbo.AppSettings set 
[Key]=@Key, Value=@Value
where ID=@Id

end
GO
/****** Object:  StoredProcedure [dbo].[usp_BookTechnician_Delete]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_BookTechnician_Delete]
@Id int
as
begin
delete from dbo.BookTechnician where Id=@Id
end

GO
/****** Object:  StoredProcedure [dbo].[usp_BookTechnician_FetchAll]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_BookTechnician_FetchAll]
(@Id int,@totalRows int out)
as
begin
if(@Id>0)
begin
select bt.*,(select Name from dbo.Service s where s.Id=bt.ServiceId) as ServiceName from dbo.BookTechnician bt 
where bt.Id=@Id order by bt.Id desc
		set @totalRows=@@ROWCOUNT
end
else
begin
select bt.*,(select Name from dbo.Service s where s.Id=bt.ServiceId) as ServiceName from dbo.BookTechnician bt 
order by bt.Id desc
		set @totalRows=@@ROWCOUNT
end
end

GO
/****** Object:  StoredProcedure [dbo].[usp_BookTechnician_FetchByfromdateAndTodate]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_BookTechnician_FetchByfromdateAndTodate]
(@Id int,@totalRows int out,@fromdate datetime,@todate datetime)
as
begin
if(@Id>0)
begin
select bt.*,(select Name from dbo.Service s where s.Id=bt.ServiceId) as ServiceName from dbo.BookTechnician bt 
where (bt.CreatedDate between @fromdate and @todate) and bt.Id=@Id order by bt.Id desc
		set @totalRows=@@ROWCOUNT
end
else
begin
select bt.*,(select Name from dbo.Service s where s.Id=bt.ServiceId) as ServiceName from dbo.BookTechnician bt 
where  bt.CreatedDate between @fromdate and @todate
order by bt.Id desc
		set @totalRows=@@ROWCOUNT
end
end

GO
/****** Object:  StoredProcedure [dbo].[usp_BookTechnician_fetchbyUserEmial]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_BookTechnician_fetchbyUserEmial]
@Email nvarchar(250)
as
begin
select bt.*,(select Name from dbo.Service s where s.Id=bt.ServiceId) as ServiceName,
(case bt.Status when 1 then 'Delivered' when 0 then 'Pending' end) as IsActive from dbo.BookTechnician bt join 
UserDetails u on u.Email=bt.Email
where u.Email=@Email
end
GO
/****** Object:  StoredProcedure [dbo].[usp_City_Delete]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_City_Delete]
@Id int
as
begin
delete from dbo.City_Locality where Id=@Id
end

GO
/****** Object:  StoredProcedure [dbo].[usp_City_DuplicateCityCheck]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_City_DuplicateCityCheck] 
@Name varchar(150)
AS
BEGIN
select * from dbo.City_Locality where Name = @Name
END

GO
/****** Object:  StoredProcedure [dbo].[usp_City_Fetch]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_City_Fetch]
(@Id int,@totalRows int out)
as
begin
if(@Id>0)
begin
select * from dbo.City_Locality where ParentId=0 and Id=@Id order by Id desc
		set @totalRows=@@ROWCOUNT
end
else
begin
select * from dbo.City_Locality where ParentId=0 order by Id desc
		set @totalRows=@@ROWCOUNT
		end
end

GO
/****** Object:  StoredProcedure [dbo].[usp_City_FetchAll]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_City_FetchAll]
as
begin
select * from dbo.City_Locality where ParentID=0
end

GO
/****** Object:  StoredProcedure [dbo].[usp_city_FetchAllbyParentId]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_city_FetchAllbyParentId]
as
begin
select * from dbo.City_Locality where ParentID=0
end

GO
/****** Object:  StoredProcedure [dbo].[usp_City_GetById]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_City_GetById]
@ID int
as
begin
select * from dbo.City_Locality where ID=@ID
end

GO
/****** Object:  StoredProcedure [dbo].[usp_City_Insert]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------

CREATE proc [dbo].[usp_City_Insert]
@Name varchar(max), 
@ParentID int,
@IsActive bit
as
begin
declare @ID int
set @ID=0
begin
insert into dbo.City_Locality(Name,ParentID, IsActive) values(@Name,@ParentID, @IsActive)
set @ID=Scope_Identity()
end
select @ID as ID
end

GO
/****** Object:  StoredProcedure [dbo].[usp_City_Locality_GetAllwithParentChildCombination]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_City_Locality_GetAllwithParentChildCombination]
as
begin
with CTE as
(
    select ID,  Name,ParentID, IsActive
    from dbo.City_Locality
    where ParentID = 0 
    
    union all
    
    select c.ID, CAST( c.Name+ ', '+p.Name as varchar(max)), c.ParentID, c.IsActive
    from dbo.City_Locality as c
    join CTE as p on p.ID = c.ParentID 
)
select * from CTE  where IsActive=1 
end
GO
/****** Object:  StoredProcedure [dbo].[usp_City_Update]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_City_Update]
@ID int,
@Name varchar(max),
@ParentID int, 
@IsActive bit
as
begin
update dbo.City_Locality set Name=@Name,ParentID=@ParentID, IsActive=@IsActive where ID=@ID
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ClientFeedback_Delete]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_ClientFeedback_Delete]
@Id int
as
begin
delete from dbo.ClientFeedback where Id=@Id
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ClientFeedback_Fetch]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_ClientFeedback_Fetch]
(@Id int,@totalRows int out)
as
begin
if(@Id>0)
begin
select cf.*,(select Name from dbo.UserDetails u where u.Id=cf.UserId) as UserName from dbo.ClientFeedback cf 
 where cf.Id=@Id order by cf.Id desc
		set @totalRows=@@ROWCOUNT
end
else
begin
select cf.*,(select Name from dbo.UserDetails u where u.Id=cf.UserId) as UserName from dbo.ClientFeedback cf 
order by cf.Id desc
		set @totalRows=@@ROWCOUNT
		end
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ClientFeedback_FetchAll]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_ClientFeedback_FetchAll]
as
begin
select cf.*,(select Name from dbo.UserDetails u where u.Id=cf.UserId) as UserName from dbo.ClientFeedback cf 
order by cf.Id desc
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ClientFeedback_FetchById]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[usp_ClientFeedback_FetchById]
@Id int
as
begin
select cf.*,(select Name from dbo.UserDetails u where u.Id=cf.UserId) as UserName from dbo.ClientFeedback cf where cf.Id=@Id
order by cf.Id desc
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ClientFeedback_Insert]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_ClientFeedback_Insert]
@UserId int, 
@FeedBack varchar(1000), 
@Status bit
as
begin
declare @ID int
set @ID=0
begin
insert into dbo.ClientFeedback(UserId, FeedBack, Status) values(@UserId, @FeedBack, @Status)
set @ID=Scope_Identity()
end
select @ID as ID
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ClientFeedback_Update]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_ClientFeedback_Update]
@Id int,
@UserId int, 
@FeedBack varchar(1000), 
@Status bit
as

begin
update dbo.ClientFeedback set UserId=@UserId, FeedBack=@FeedBack, Status=@Status where Id=@Id

end

GO
/****** Object:  StoredProcedure [dbo].[usp_Locality_Fetch]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Locality_Fetch]
(@Id int,@totalRows int out)
as
begin
if(@Id>0)
begin
select cl.*,(select Name from City_Locality c where c.ID=cl.ParentID) CityName from dbo.City_Locality cl where ParentID>0 and cl.ParentId=@Id order by cl.Id desc
		set @totalRows=@@ROWCOUNT
end
else
begin
select cl.*,(select Name from City_Locality c where c.ID=cl.ParentID) CityName from dbo.City_Locality cl where cl.ParentID>0 order by cl.Id desc
		set @totalRows=@@ROWCOUNT
end
end

GO
/****** Object:  StoredProcedure [dbo].[usp_Role_FetchAll]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Role_FetchAll]
as
begin
select * from dbo.Role
end

GO
/****** Object:  StoredProcedure [dbo].[usp_Service_DuplicateServiceCheck]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Service_DuplicateServiceCheck] 
@Name varchar(150)
AS
BEGIN
select * from dbo.Service where Name = @Name
END

GO
/****** Object:  StoredProcedure [dbo].[usp_User_DuplicateEmailCheck]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_User_DuplicateEmailCheck] 
	-- Add the parameters for the stored procedure here
	@Email varchar(50)
	
AS
BEGIN


    -- Insert statements for procedure here
select * from dbo.UserDetails where Email = @Email
END

GO
/****** Object:  StoredProcedure [dbo].[usp_UserAddress_FetchByUserId]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_UserAddress_FetchByUserId]
@UserId int
as
begin
select * from dbo.UserAddress where UserId=@UserId
end
GO
/****** Object:  StoredProcedure [dbo].[usp_UserAddress_Insert]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_UserAddress_Insert]
( 
@UserId int, 
@Address nvarchar(250),
@FlatNo varchar(150),
@City varchar(250),
@State varchar(50),
@Pin int
)
As
Begin
Declare @Id int
Set @Id = 0
Begin
Insert Into dbo.UserAddress
(
UserId, Address, FlatNo, City,State,Pin
)
Values
(
@UserId, 
@Address, 
@FlatNo,
@City,
@State,
@Pin
)
Set @ID=SCOPE_IDENTITY()
End
Select @Id As ID
End
GO
/****** Object:  StoredProcedure [dbo].[usp_UserAddress_Update]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_UserAddress_Update]
( 
@Id int,
@UserId int, 
@Address nvarchar(250),
@FlatNo varchar(150),
@City varchar(255),
@State varchar(50),
@Pin int
)
As
Begin
Update dbo.UserAddress
set 
UserId=@UserId, Address=@Address, FlatNo=@FlatNo, City=@City,State=@State,Pin=@Pin
where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[usp_UserDetails_Delete]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_UserDetails_Delete]
@Id int
as
begin
delete from dbo.UserDetails where Id=@Id
end

GO
/****** Object:  StoredProcedure [dbo].[usp_UserDetails_Fetch]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_UserDetails_Fetch]
as
begin
select * from UserDetails
end

GO
/****** Object:  StoredProcedure [dbo].[usp_UserDetails_FetchAll]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_UserDetails_FetchAll]
(@Id int,@totalRows int out)
as
begin
if(@Id>0)
begin
select *,(select Role from Role r where r.ID=u.RoleId) as UserType from dbo.UserDetails u where Id=@Id order by Id desc
		set @totalRows=@@ROWCOUNT
end
else
begin
select *,(select Role from Role r where r.ID=u.RoleId) as UserType from dbo.UserDetails u order by Id desc
		set @totalRows=@@ROWCOUNT
		end
end

GO
/****** Object:  StoredProcedure [dbo].[usp_UserDetails_GetById]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_UserDetails_GetById]
@ID int
as
begin
select * from UserDetails where Id=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[usp_UserDetails_UpdateUserPassword]    Script Date: 11/6/2015 PM 08:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_UserDetails_UpdateUserPassword]
@Id int,
@Password nvarchar(50)
as
begin
update dbo.UserDetails set Password=@Password where Id=@Id
end
GO
