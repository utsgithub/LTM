CREATE TABLE [dbo].[adminInfo](
	[ID] [int] NOT NULL,
	[core_id] [int] NULL,
	[state] [nvarchar](255) NULL,
	[user_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[clients]    Script Date: 2016/04/11 21:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[ID] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[descriptive] [nvarchar](max) NULL,
	[district_id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[coreInfo]    Script Date: 2016/04/11 21:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coreInfo](
	[ID] [int] NOT NULL,
	[iType_id] [int] NULL,
	[client_id] [int] NULL,
	[labour] [int] NULL,
	[cost] [int] NULL,
	[user_id] [int] NULL,
	[iDate] [datetime] NULL,
	[status] [nvarchar](255) NULL,
	[comments] [nvarchar](255) NULL,
	[reamaining] [int] NULL,
	[date_recent_visit] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[districts]    Script Date: 2016/04/11 21:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[districts](
	[ID] [int] NOT NULL,
	[Districts] [nvarchar](255) NULL
) ON [PRIMARY]

--GO
/****** Object:  Table [dbo].[eng_detail_intervention]    Script Date: 2016/04/11 21:37:45 ******/
/*SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eng_detail_intervention](
	[interventionTypes_ID] [int] NOT NULL,
	[interventionTypes_name] [nvarchar](255) NULL,
	[amount_of_labour] [nvarchar](255) NULL,
	[cost_of_materials] [nvarchar](255) NULL,
	[Districts_ID] [int] NOT NULL,
	[Districts] [nvarchar](255) NULL,
	[clients_ID] [int] NOT NULL,
	[clients_name] [nvarchar](255) NULL,
	[descriptive] [nvarchar](max) NULL,
	[clients_district_ID] [int] NULL,
	[coreInfo_ID] [int] NOT NULL,
	[iType_id] [int] NULL,
	[client_id] [int] NULL,
	[labour] [int] NULL,
	[cost] [int] NULL,
	[user_id] [int] NULL,
	[iDate] [datetime] NULL,
	[status] [nvarchar](255) NULL,
	[comments] [nvarchar](255) NULL,
	[reamaining] [int] NULL,
	[date_recent_visit] [datetime] NULL,
	[users_ID] [int] NOT NULL,
	[userName] [nvarchar](255) NULL,
	[loginName] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[users_district_ID] [int] NULL,
	[maxHours] [int] NULL,
	[maxCost] [nvarchar](255) NULL,
	[userType] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]*/
/****** Object:  Table [dbo].[eng_list_client]    Script Date: 2016/04/11 21:37:45 ******/
/*SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eng_list_client](
	[clients_ID] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[descriptive] [nvarchar](max) NULL,
	[district_id] [int] NULL,
	[Districts_ID] [int] NOT NULL,
	[Districts] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]*/

GO
/****** Object:  Table [dbo].[intervention]    Script Date: 2016/04/11 21:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[intervention](
	[clients_ID] [int] NOT NULL,
	[clients_name] [nvarchar](255) NULL,
	[descriptive] [nvarchar](max) NULL,
	[district_id] [int] NULL,
	[interventionTypes_ID] [int] NOT NULL,
	[interventionTypes_name] [nvarchar](255) NULL,
	[amount_of_labour] [nvarchar](255) NULL,
	[cost_of_materials] [nvarchar](255) NULL,
	[coreInfo_ID] [int] NOT NULL,
	[iType_id] [int] NULL,
	[client_id] [int] NULL,
	[labour] [int] NULL,
	[cost] [int] NULL,
	[user_id] [int] NULL,
	[iDate] [datetime] NULL,
	[status] [nvarchar](255) NULL,
	[comments] [nvarchar](255) NULL,
	[reamaining] [int] NULL,
	[date_recent_visit] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[interventionTypes]    Script Date: 2016/04/11 21:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[interventionTypes](
	[ID] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[amount_of_labour] [nvarchar](255) NULL,
	[cost_of_materials] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[qualityInfo]    Script Date: 2016/04/11 21:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qualityInfo](
	[ID] [int] NOT NULL,
	[comments] [nvarchar](max) NULL,
	[remaining] [int] NULL,
	[recent_visit] [datetime] NULL,
	[core_id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

--GO
/****** Object:  Table [dbo].[query_user]    Script Date: 2016/04/11 21:37:45 ******/
/*SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[query_user](
	[Districts_ID] [int] NOT NULL,
	[Districts] [nvarchar](255) NULL,
	[users_ID] [int] NOT NULL,
	[userName] [nvarchar](255) NULL,
	[loginName] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[district_ID] [int] NULL,
	[maxHours] [int] NULL,
	[maxCost] [nvarchar](255) NULL,
	[userType] [nvarchar](255) NULL
) ON [PRIMARY]*/

GO
/****** Object:  Table [dbo].[users]    Script Date: 2016/04/11 21:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[ID] [int] NOT NULL,
	[userName] [nvarchar](255) NULL,
	[loginName] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[district_ID] [int] NULL,
	[maxHours] [int] NULL,
	[maxCost] [nvarchar](255) NULL,
	[userType] [nvarchar](255) NULL
) ON [PRIMARY]

GO
INSERT [dbo].[clients] ([ID], [name], [descriptive], [district_id]) VALUES (1, N'Family of Josiah and Ruth', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 1)
INSERT [dbo].[clients] ([ID], [name], [descriptive], [district_id]) VALUES (2, N'Family of Peter', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 2)
INSERT [dbo].[clients] ([ID], [name], [descriptive], [district_id]) VALUES (3, N'Family of Helen', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 3)
INSERT [dbo].[clients] ([ID], [name], [descriptive], [district_id]) VALUES (4, N'Family of Tim', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 4)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (1, 1, 1, 0, 0, 1, CAST(N'2016-04-04 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 10, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (2, 2, 1, 0, 0, 1, CAST(N'2016-04-12 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 20, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (3, 3, 1, 0, 0, 1, CAST(N'2016-04-13 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 30, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (4, 1, 2, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 40, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (5, 2, 2, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 50, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (6, 3, 2, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 60, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (7, 1, 3, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 70, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (8, 2, 3, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 80, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (9, 3, 3, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 90, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (10, 1, 4, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 80, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (11, 2, 4, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 70, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (12, 3, 4, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 60, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (13, 1, 1, 0, 0, 2, CAST(N'2016-04-04 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 10, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (14, 2, 1, 0, 0, 2, CAST(N'2016-04-12 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 20, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (15, 3, 1, 0, 0, 2, CAST(N'2016-04-13 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 30, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (16, 1, 2, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 40, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (17, 2, 2, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 50, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (18, 3, 2, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 60, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (19, 1, 3, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 70, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (20, 2, 3, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 80, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (21, 3, 3, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 90, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (22, 1, 4, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 80, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (23, 2, 4, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 70, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (24, 3, 4, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 60, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[districts] ([ID], [Districts]) VALUES (1, N'	Urban Indonesia')
INSERT [dbo].[districts] ([ID], [Districts]) VALUES (2, N'	Rural Indonesia')
INSERT [dbo].[districts] ([ID], [Districts]) VALUES (3, N'	Urban Papua New Guinea')
INSERT [dbo].[districts] ([ID], [Districts]) VALUES (4, N'	Rural Papua New Guinea')
INSERT [dbo].[districts] ([ID], [Districts]) VALUES (5, N'	Sydney')
INSERT [dbo].[districts] ([ID], [Districts]) VALUES (6, N'	Rural New South Wales')
/*
INSERT [dbo].[eng_detail_intervention] ([interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [Districts_ID], [Districts], [clients_ID], [clients_name], [descriptive], [clients_district_ID], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [users_ID], [userName], [loginName], [password], [users_district_ID], [maxHours], [maxCost], [userType]) VALUES (1, N'Supply and Install Portable Toilet', NULL, NULL, 1, N'	Urban Indonesia', 1, N'Family of Josiah and Ruth', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 1, 1, 1, 1, 0, 0, 1, CAST(N'2016-04-04 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 10, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 1, N'Tim', N'tim', N'123456', 1, 0, NULL, N'Site Engineer')
INSERT [dbo].[eng_detail_intervention] ([interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [Districts_ID], [Districts], [clients_ID], [clients_name], [descriptive], [clients_district_ID], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [users_ID], [userName], [loginName], [password], [users_district_ID], [maxHours], [maxCost], [userType]) VALUES (2, N'Hepatitis Avoidance Training', NULL, NULL, 1, N'	Urban Indonesia', 1, N'Family of Josiah and Ruth', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 1, 2, 2, 1, 0, 0, 1, CAST(N'2016-04-12 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 20, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 1, N'Tim', N'tim', N'123456', 1, 0, NULL, N'Site Engineer')
INSERT [dbo].[eng_detail_intervention] ([interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [Districts_ID], [Districts], [clients_ID], [clients_name], [descriptive], [clients_district_ID], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [users_ID], [userName], [loginName], [password], [users_district_ID], [maxHours], [maxCost], [userType]) VALUES (3, N'Supply and Install Storm-proof Home Kit', NULL, NULL, 1, N'	Urban Indonesia', 1, N'Family of Josiah and Ruth', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 1, 3, 3, 1, 0, 0, 1, CAST(N'2016-04-13 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 30, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 1, N'Tim', N'tim', N'123456', 1, 0, NULL, N'Site Engineer')
INSERT [dbo].[eng_detail_intervention] ([interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [Districts_ID], [Districts], [clients_ID], [clients_name], [descriptive], [clients_district_ID], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [users_ID], [userName], [loginName], [password], [users_district_ID], [maxHours], [maxCost], [userType]) VALUES (1, N'Supply and Install Portable Toilet', NULL, NULL, 2, N'	Rural Indonesia', 2, N'Family of Peter', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 2, 16, 1, 2, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 40, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 2, N'John', N'John', N'123456', 2, 0, NULL, N'Site Engineer')
INSERT [dbo].[eng_detail_intervention] ([interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [Districts_ID], [Districts], [clients_ID], [clients_name], [descriptive], [clients_district_ID], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [users_ID], [userName], [loginName], [password], [users_district_ID], [maxHours], [maxCost], [userType]) VALUES (2, N'Hepatitis Avoidance Training', NULL, NULL, 2, N'	Rural Indonesia', 2, N'Family of Peter', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 2, 17, 2, 2, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 50, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 2, N'John', N'John', N'123456', 2, 0, NULL, N'Site Engineer')
INSERT [dbo].[eng_detail_intervention] ([interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [Districts_ID], [Districts], [clients_ID], [clients_name], [descriptive], [clients_district_ID], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [users_ID], [userName], [loginName], [password], [users_district_ID], [maxHours], [maxCost], [userType]) VALUES (3, N'Supply and Install Storm-proof Home Kit', NULL, NULL, 2, N'	Rural Indonesia', 2, N'Family of Peter', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 2, 18, 3, 2, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 60, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 2, N'John', N'John', N'123456', 2, 0, NULL, N'Site Engineer')
INSERT [dbo].[eng_list_client] ([clients_ID], [name], [descriptive], [district_id], [Districts_ID], [Districts]) VALUES (1, N'Family of Josiah and Ruth', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 1, 1, N'	Urban Indonesia')
INSERT [dbo].[eng_list_client] ([clients_ID], [name], [descriptive], [district_id], [Districts_ID], [Districts]) VALUES (2, N'Family of Peter', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 2, 2, N'	Rural Indonesia')
INSERT [dbo].[eng_list_client] ([clients_ID], [name], [descriptive], [district_id], [Districts_ID], [Districts]) VALUES (3, N'Family of Helen', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 3, 3, N'	Urban Papua New Guinea')
INSERT [dbo].[eng_list_client] ([clients_ID], [name], [descriptive], [district_id], [Districts_ID], [Districts]) VALUES (4, N'Family of Tim', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 4, 4, N'	Rural Papua New Guinea')*/
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (1, N'Family of Josiah and Ruth', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 1, 1, N'Supply and Install Portable Toilet', NULL, NULL, 1, 1, 1, 0, 0, 1, CAST(N'2016-04-04 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 10, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (1, N'Family of Josiah and Ruth', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 1, 2, N'Hepatitis Avoidance Training', NULL, NULL, 2, 2, 1, 0, 0, 1, CAST(N'2016-04-12 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 20, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (1, N'Family of Josiah and Ruth', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 1, 3, N'Supply and Install Storm-proof Home Kit', NULL, NULL, 3, 3, 1, 0, 0, 1, CAST(N'2016-04-13 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 30, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (2, N'Family of Peter', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 2, 1, N'Supply and Install Portable Toilet', NULL, NULL, 4, 1, 2, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 40, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (2, N'Family of Peter', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 2, 2, N'Hepatitis Avoidance Training', NULL, NULL, 5, 2, 2, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 50, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (2, N'Family of Peter', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 2, 3, N'Supply and Install Storm-proof Home Kit', NULL, NULL, 6, 3, 2, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 60, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (3, N'Family of Helen', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 3, 1, N'Supply and Install Portable Toilet', NULL, NULL, 7, 1, 3, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 70, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (3, N'Family of Helen', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 3, 2, N'Hepatitis Avoidance Training', NULL, NULL, 8, 2, 3, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 80, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (3, N'Family of Helen', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 3, 3, N'Supply and Install Storm-proof Home Kit', NULL, NULL, 9, 3, 3, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 90, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (4, N'Family of Tim', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 4, 1, N'Supply and Install Portable Toilet', NULL, NULL, 10, 1, 4, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 80, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (4, N'Family of Tim', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 4, 2, N'Hepatitis Avoidance Training', NULL, NULL, 11, 2, 4, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 70, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (4, N'Family of Tim', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 4, 3, N'Supply and Install Storm-proof Home Kit', NULL, NULL, 12, 3, 4, 0, 0, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 60, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (1, N'Family of Josiah and Ruth', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 1, 1, N'Supply and Install Portable Toilet', NULL, NULL, 13, 1, 1, 0, 0, 2, CAST(N'2016-04-04 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 10, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (1, N'Family of Josiah and Ruth', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 1, 2, N'Hepatitis Avoidance Training', NULL, NULL, 14, 2, 1, 0, 0, 2, CAST(N'2016-04-12 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 20, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (1, N'Family of Josiah and Ruth', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 1, 3, N'Supply and Install Storm-proof Home Kit', NULL, NULL, 15, 3, 1, 0, 0, 2, CAST(N'2016-04-13 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 30, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (2, N'Family of Peter', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 2, 1, N'Supply and Install Portable Toilet', NULL, NULL, 16, 1, 2, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 40, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (2, N'Family of Peter', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 2, 2, N'Hepatitis Avoidance Training', NULL, NULL, 17, 2, 2, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 50, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (2, N'Family of Peter', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 2, 3, N'Supply and Install Storm-proof Home Kit', NULL, NULL, 18, 3, 2, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 60, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (3, N'Family of Helen', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 3, 1, N'Supply and Install Portable Toilet', NULL, NULL, 19, 1, 3, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 70, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (3, N'Family of Helen', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 3, 2, N'Hepatitis Avoidance Training', NULL, NULL, 20, 2, 3, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 80, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (3, N'Family of Helen', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 3, 3, N'Supply and Install Storm-proof Home Kit', NULL, NULL, 21, 3, 3, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 90, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (4, N'Family of Tim', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 4, 1, N'Supply and Install Portable Toilet', NULL, NULL, 22, 1, 4, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 80, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (4, N'Family of Tim', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 4, 2, N'Hepatitis Avoidance Training', NULL, NULL, 23, 2, 4, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 70, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[intervention] ([clients_ID], [clients_name], [descriptive], [district_id], [interventionTypes_ID], [interventionTypes_name], [amount_of_labour], [cost_of_materials], [coreInfo_ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit]) VALUES (4, N'Family of Tim', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 4, 3, N'Supply and Install Storm-proof Home Kit', NULL, NULL, 24, 3, 4, 0, 0, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 60, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
INSERT [dbo].[interventionTypes] ([ID], [name], [amount_of_labour], [cost_of_materials]) VALUES (1, N'Supply and Install Portable Toilet', NULL, NULL)
INSERT [dbo].[interventionTypes] ([ID], [name], [amount_of_labour], [cost_of_materials]) VALUES (2, N'Hepatitis Avoidance Training', NULL, NULL)
INSERT [dbo].[interventionTypes] ([ID], [name], [amount_of_labour], [cost_of_materials]) VALUES (3, N'Supply and Install Storm-proof Home Kit', NULL, NULL)
/*INSERT [dbo].[query_user] ([Districts_ID], [Districts], [users_ID], [userName], [loginName], [password], [district_ID], [maxHours], [maxCost], [userType]) VALUES (1, N'	Urban Indonesia', 1, N'Tim', N'tim', N'123456', 1, 0, NULL, N'Site Engineer')
INSERT [dbo].[query_user] ([Districts_ID], [Districts], [users_ID], [userName], [loginName], [password], [district_ID], [maxHours], [maxCost], [userType]) VALUES (2, N'	Rural Indonesia', 2, N'John', N'John', N'123456', 2, 0, NULL, N'Site Engineer')
INSERT [dbo].[query_user] ([Districts_ID], [Districts], [users_ID], [userName], [loginName], [password], [district_ID], [maxHours], [maxCost], [userType]) VALUES (3, N'	Urban Papua New Guinea', 3, N'Ricky', N'ricky', N'123456', 3, 0, NULL, N'Site Engineer')
INSERT [dbo].[query_user] ([Districts_ID], [Districts], [users_ID], [userName], [loginName], [password], [district_ID], [maxHours], [maxCost], [userType]) VALUES (1, N'	Urban Indonesia', 4, N'Olivia', N'Olivia', N'123456', 1, 0, NULL, N'Manager')
INSERT [dbo].[query_user] ([Districts_ID], [Districts], [users_ID], [userName], [loginName], [password], [district_ID], [maxHours], [maxCost], [userType]) VALUES (2, N'	Rural Indonesia', 5, N'Teddy', N'Teddy', N'123456', 2, 0, NULL, N'Manager')
INSERT [dbo].[query_user] ([Districts_ID], [Districts], [users_ID], [userName], [loginName], [password], [district_ID], [maxHours], [maxCost], [userType]) VALUES (3, N'	Urban Papua New Guinea', 6, N'Jame', N'Jame', N'123456', 3, 0, NULL, N'Manager')*/
INSERT [dbo].[users] ([ID], [userName], [loginName], [password], [district_ID], [maxHours], [maxCost], [userType]) VALUES (1, N'Tim', N'tim', N'123456', 1, 0, NULL, N'Site Engineer')
INSERT [dbo].[users] ([ID], [userName], [loginName], [password], [district_ID], [maxHours], [maxCost], [userType]) VALUES (2, N'John', N'John', N'123456', 2, 0, NULL, N'Site Engineer')
INSERT [dbo].[users] ([ID], [userName], [loginName], [password], [district_ID], [maxHours], [maxCost], [userType]) VALUES (3, N'Ricky', N'ricky', N'123456', 3, 0, NULL, N'Site Engineer')
INSERT [dbo].[users] ([ID], [userName], [loginName], [password], [district_ID], [maxHours], [maxCost], [userType]) VALUES (4, N'Olivia', N'Olivia', N'123456', 1, 0, NULL, N'Manager')
INSERT [dbo].[users] ([ID], [userName], [loginName], [password], [district_ID], [maxHours], [maxCost], [userType]) VALUES (5, N'Teddy', N'Teddy', N'123456', 2, 0, NULL, N'Manager')
INSERT [dbo].[users] ([ID], [userName], [loginName], [password], [district_ID], [maxHours], [maxCost], [userType]) VALUES (6, N'Jame', N'Jame', N'123456', 3, 0, NULL, N'Manager')
GO

--insert view codes here
CREATE VIEW view_client_list AS
	SELECT c.ID as clients_ID, c.name, c.descriptive, d.ID as district_id, d.Districts
	FROM clients C 
		INNER JOIN districts d 
			ON C.district_id = d.ID;
GO

CREATE VIEW view_detail_interventions AS
	SELECT	it.ID AS interventionTypes_ID, 
			it.name AS interventionTypes_name,
			it.amount_of_labour, it.cost_of_materials,
			d.ID AS Districts_ID, d.Districts,
			c.ID AS clients_ID, c.name AS clients_name,
			c.descriptive, c.district_id AS clients_district_ID,
			ci.ID AS coreInfo_ID, ci.iType_id,
			ci.client_id, ci.labour, ci.cost, ci.user_id,
			ci.iDate, ci.status, ci.comments, ci.reamaining,
			ci.date_recent_visit, u.ID as users_ID, u.userName,
			u.loginName, u.password,  u.district_ID as users_district_ID,
			u.maxHours, u.maxCost, u.userType
	FROM clients c
		INNER JOIN districts d
			ON c.district_id = d.ID 
		INNER JOIN coreInfo ci
			ON c.ID = ci.client_id
		INNER JOIN users u
			ON ci.user_id = u.ID 
		INNER JOIN interventionTypes it
			ON it.ID = ci.iType_id;
GO

CREATE VIEW view_users AS
	SELECT	d.ID AS Districts_ID, 
			d.Districts, u.ID AS users_ID,
			u.userName, u.loginName,
			u.password, u.district_ID,
			u.maxHours, u.maxCost,
			u.userType
	FROM users u
		INNER JOIN districts d
			ON u.district_ID = d.ID;
GO

ALTER DATABASE [IMS] SET  READ_WRITE 
GO
