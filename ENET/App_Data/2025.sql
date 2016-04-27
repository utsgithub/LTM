/****** Object:  Table [dbo].[adminInfo]    Script Date: 2016/04/27 20:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adminInfo](
	[ID] [int] NOT NULL,
	[core_id] [int] NULL,
	[state] [nvarchar](255) NULL,
	[user_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2016/04/27 20:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2016/04/27 20:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2016/04/27 20:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2016/04/27 20:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2016/04/27 20:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[clients]    Script Date: 2016/04/27 20:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[ID] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[descriptive] [nvarchar](max) NULL,
	[district_id] [int] NULL,
 CONSTRAINT [PK_clients] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[coreInfo]    Script Date: 2016/04/27 20:25:15 ******/
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
	[date_recent_visit] [datetime] NULL,
	[approvedBy] [int] NULL,
 CONSTRAINT [PK_coreInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[districts]    Script Date: 2016/04/27 20:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[districts](
	[ID] [int] NOT NULL,
	[Districts] [nvarchar](255) NULL,
 CONSTRAINT [PK_districts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[intervention]    Script Date: 2016/04/27 20:25:15 ******/
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
/****** Object:  Table [dbo].[interventionTypes]    Script Date: 2016/04/27 20:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[interventionTypes](
	[ID] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[amount_of_labour] [nvarchar](255) NULL,
	[cost_of_materials] [nvarchar](255) NULL,
 CONSTRAINT [PK_interventionTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[qualityInfo]    Script Date: 2016/04/27 20:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qualityInfo](
	[ID] [int] NOT NULL,
	[comments] [nvarchar](max) NULL,
	[remaining] [int] NULL,
	[recent_visit] [datetime] NULL,
	[core_id] [int] NULL,
 CONSTRAINT [PK_qualityInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 2016/04/27 20:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[ID] [int] NOT NULL,
	[userName] [nvarchar](255) NULL,
	[loginName] [nvarchar](255) NULL,
	[district_ID] [int] NULL,
	[maxHours] [int] NULL,
	[maxCost] [nvarchar](255) NULL,
	[userType] [nvarchar](255) NULL,
	[AspNetUserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[view_client_list]    Script Date: 2016/04/27 20:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--insert view codes here
CREATE VIEW [dbo].[view_client_list] AS
	SELECT c.ID as clients_ID, c.name, c.descriptive, d.ID as district_id, d.Districts
	FROM clients C 
		INNER JOIN districts d 
			ON C.district_id = d.ID;


GO
/****** Object:  View [dbo].[view_detail_interventions]    Script Date: 2016/04/27 20:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[view_detail_interventions] AS
	SELECT	it.ID AS interventionTypes_ID, 
			it.name AS interventionTypes_name,
			it.amount_of_labour, it.cost_of_materials,
			d.ID AS Districts_ID, d.Districts,
			c.ID AS clients_ID, c.name AS clients_name,
			c.descriptive, c.district_id AS clients_district_ID,
			ci.ID AS coreInfo_ID, ci.iType_id,
			ci.client_id, ci.labour, ci.cost, ci.user_id,
			ci.iDate, ci.status, ci.comments, ci.reamaining,
			ci.date_recent_visit, ci.approvedBy, u.ID as users_ID, u.userName,
			u.loginName, u.district_ID as users_district_ID,
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
/****** Object:  View [dbo].[view_users]    Script Date: 2016/04/27 20:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[view_users] AS
	SELECT	d.ID AS Districts_ID, 
			d.Districts, u.ID AS users_ID,
			u.userName, u.loginName,
			u.district_ID, u.maxHours, 
			u.maxCost, u.userType
	FROM users u
		INNER JOIN districts d
			ON u.district_ID = d.ID;

GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'role3', N'Accountant')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'role2', N'Manager')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'role1', N'SiteEngineer')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user1', N'role1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user10', N'role1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user11', N'role2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user12', N'role2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user13', N'role3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user2', N'role1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user3', N'role1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user4', N'role2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user5', N'role2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user6', N'role2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user7', N'role3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user8', N'role1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user9', N'role1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user1', N'email@email.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', N'ac72c555-51c5-418a-99a9-b08036290773', NULL, 0, 0, NULL, 1, 0, N'eng1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user10', N'george@example.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', NULL, NULL, 0, 0, NULL, 1, 0, N'george@example.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user11', N'davy@example.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', NULL, NULL, 0, 0, NULL, 1, 0, N'davy@example.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user12', N'dena@example.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', NULL, NULL, 0, 0, NULL, 1, 0, N'dena@example.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user13', N'carol@example.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', NULL, NULL, 0, 0, NULL, 1, 0, N'carol@example.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user2', N'email@email.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', N'e05744f1-e181-4082-a9d5-ea08769218a8', NULL, 0, 0, NULL, 1, 0, N'eng2')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user3', N'email@email.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', N'e05744f1-e181-4082-a9d5-ea08769218a8', NULL, 0, 0, NULL, 1, 0, N'eng3')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user4', N'email@email.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', N'e05744f1-e181-4082-a9d5-ea08769218a8', NULL, 0, 0, NULL, 1, 0, N'man1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user5', N'email@email.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', N'e05744f1-e181-4082-a9d5-ea08769218a8', NULL, 0, 0, NULL, 1, 0, N'man2')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user6', N'email@email.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', N'e05744f1-e181-4082-a9d5-ea08769218a8', NULL, 0, 0, NULL, 1, 0, N'man3')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user7', N'email@email.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', N'e05744f1-e181-4082-a9d5-ea08769218a8', NULL, 0, 0, NULL, 1, 0, N'acc1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user8', N'alice@example.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', NULL, NULL, 0, 0, NULL, 1, 0, N'alice@example.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user9', N'sam@example.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', NULL, NULL, 0, 0, NULL, 1, 0, N'sam@example.com')
INSERT [dbo].[clients] ([ID], [name], [descriptive], [district_id]) VALUES (1, N'Family of Josiah and Ruth', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 1)
INSERT [dbo].[clients] ([ID], [name], [descriptive], [district_id]) VALUES (2, N'Family of Peter', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 2)
INSERT [dbo].[clients] ([ID], [name], [descriptive], [district_id]) VALUES (3, N'Family of Helen', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 3)
INSERT [dbo].[clients] ([ID], [name], [descriptive], [district_id]) VALUES (4, N'Family of Tim', N'Blue tin shack, underneath wooden bridge near Brady road turnoff from Nelson highway', 4)
INSERT [dbo].[clients] ([ID], [name], [descriptive], [district_id]) VALUES (5, N'Family of Jumanji', N'Diamond tin shack, underneath the ocean', 5)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (1, 1, 1, 2, 600, 1, CAST(N'2016-04-04 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 0, CAST(N'2016-04-11 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (2, 2, 1, 3, 50, 1, CAST(N'2016-04-12 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 25, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (3, 3, 1, 8, 5000, 1, CAST(N'2016-04-13 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 0, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (4, 1, 2, 2, 600, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 0, CAST(N'2016-04-11 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (5, 2, 2, 3, 100, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 50, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (6, 3, 2, 8, 5000, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 0, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (7, 1, 3, 2, 600, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 50, CAST(N'2016-04-11 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (8, 2, 3, 3, 200, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 50, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (9, 3, 3, 8, 5000, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 0, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (10, 1, 4, 2, 600, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 80, CAST(N'2016-04-11 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (11, 2, 4, 3, 150, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 70, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (12, 3, 4, 8, 5000, 1, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 0, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (13, 1, 1, 2, 600, 2, CAST(N'2016-04-04 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 10, CAST(N'2016-04-11 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (14, 2, 1, 3, 200, 2, CAST(N'2016-04-12 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 20, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (15, 3, 1, 8, 5000, 2, CAST(N'2016-04-13 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 0, CAST(N'2016-04-11 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (16, 1, 2, 2, 600, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 40, CAST(N'2016-04-11 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (17, 2, 2, 3, 900, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 50, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (18, 3, 2, 8, 5000, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 0, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (19, 1, 3, 2, 600, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 70, CAST(N'2016-04-11 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (20, 2, 3, 3, 450, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 80, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (21, 3, 3, 8, 5000, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 0, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (22, 1, 4, 2, 600, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Proposed', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 80, CAST(N'2016-04-11 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (23, 2, 4, 3, 800, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Approved', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 70, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (24, 3, 4, 8, 5000, 2, CAST(N'2016-04-11 00:00:00.000' AS DateTime), N'Cancelled', N'Bootstrap makes front-end web development faster and easier. It''s made for folks of all skill levels, devices of all shapes, and projects of all sizes.', 0, CAST(N'2016-04-11 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (25, 5, 4, 80, 1200, 8, CAST(N'2016-04-27 00:00:00.000' AS DateTime), N'Proposed', N'Waiting for Approval to Install Water Pump for Family of Tim ', 0, CAST(N'2016-04-27 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (26, 5, 4, 80, 1200, 9, CAST(N'2016-04-20 00:00:00.000' AS DateTime), N'Completed', N'Completed installing water pump for tim''s family', 100, CAST(N'2016-04-27 00:00:00.000' AS DateTime), 13)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (27, 6, 5, 5, 700, 10, CAST(N'2016-04-18 00:00:00.000' AS DateTime), N'Completed', N'completed supplying high volume water filter and train use', 100, CAST(N'2016-04-26 00:00:00.000' AS DateTime), 13)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (28, 7, 5, 50, 3600, 10, CAST(N'2016-04-20 00:00:00.000' AS DateTime), N'Approved', N'this intervention has been approved for preparing sewerage trench', 50, CAST(N'2016-04-26 00:00:00.000' AS DateTime), 13)
INSERT [dbo].[coreInfo] ([ID], [iType_id], [client_id], [labour], [cost], [user_id], [iDate], [status], [comments], [reamaining], [date_recent_visit], [approvedBy]) VALUES (29, 3, 4, 8, 7500, 9, CAST(N'2016-04-21 00:00:00.000' AS DateTime), N'Completed', N'storm proof home kit installed and updated', 90, CAST(N'2016-04-25 00:00:00.000' AS DateTime), 13)
INSERT [dbo].[districts] ([ID], [Districts]) VALUES (1, N'	Urban Indonesia')
INSERT [dbo].[districts] ([ID], [Districts]) VALUES (2, N'	Rural Indonesia')
INSERT [dbo].[districts] ([ID], [Districts]) VALUES (3, N'	Urban Papua New Guinea')
INSERT [dbo].[districts] ([ID], [Districts]) VALUES (4, N'	Rural Papua New Guinea')
INSERT [dbo].[districts] ([ID], [Districts]) VALUES (5, N'	Sydney')
INSERT [dbo].[districts] ([ID], [Districts]) VALUES (6, N'	Rural New South Wales')
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
INSERT [dbo].[interventionTypes] ([ID], [name], [amount_of_labour], [cost_of_materials]) VALUES (1, N'Supply and Install Portable Toilet', N'2', N'600')
INSERT [dbo].[interventionTypes] ([ID], [name], [amount_of_labour], [cost_of_materials]) VALUES (2, N'Hepatitis Avoidance Training', N'3', NULL)
INSERT [dbo].[interventionTypes] ([ID], [name], [amount_of_labour], [cost_of_materials]) VALUES (3, N'Supply and Install Storm-proof Home Kit', N'8', N'5000')
INSERT [dbo].[interventionTypes] ([ID], [name], [amount_of_labour], [cost_of_materials]) VALUES (4, N'Supply Mosquito Net', N'0', N'25')
INSERT [dbo].[interventionTypes] ([ID], [name], [amount_of_labour], [cost_of_materials]) VALUES (5, N'Install Water Pump', N'80', N'1200')
INSERT [dbo].[interventionTypes] ([ID], [name], [amount_of_labour], [cost_of_materials]) VALUES (6, N'Supply High-Volume Water Filter and Train Use', N'1', N'2000')
INSERT [dbo].[interventionTypes] ([ID], [name], [amount_of_labour], [cost_of_materials]) VALUES (7, N'Prepare Sewerage Trench', N'50', NULL)
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (1, N'Tim Simpson', N'eng1', 1, 0, NULL, N'Site Engineer', N'user1')
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (2, N'John Smith', N'eng2', 2, 0, NULL, N'Site Engineer', N'user2')
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (3, N'Ricky Martin', N'eng3', 3, 0, NULL, N'Site Engineer', N'user3')
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (4, N'Olivia O''Lovely', N'man1', 1, 0, NULL, N'Manager', N'user4')
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (5, N'Teddy Freddy', N'man2', 2, 0, NULL, N'Manager', N'user5')
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (6, N'James Cook', N'man3', 6, 0, NULL, N'Manager', N'user6')
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (7, N'Money Accountantson', N'acc1', NULL, NULL, NULL, N'Accountant', N'user7')
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (8, N'Alice Nelson', N'alice@example.com', 4, 50, N'2000', N'Site Engineer', NULL)
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (9, N'Sam Franklin', N'sam@example.com', 4, 100, N'4500', N'Site Engineer', NULL)
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (10, N'George Glass', N'george@example.com', 5, 10, N'10000', N'Site Engineer', NULL)
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (11, N'Davy Jones', N'davy@example.com', 4, 200, N'50000', N'Manager', NULL)
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (12, N'Dena Dittmeyer', N'dena@example.com', 5, 1000, N'200000', N'Manager', NULL)
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (13, N'Carol Brady', N'carol@example.com', NULL, NULL, NULL, N'Accountant', NULL)
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2016/04/27 20:25:15 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 2016/04/27 20:25:15 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 2016/04/27 20:25:15 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 2016/04/27 20:25:15 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 2016/04/27 20:25:15 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 2016/04/27 20:25:15 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_aspuserid] FOREIGN KEY([AspNetUserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_aspuserid]
GO
USE [master]
GO
ALTER DATABASE [DefaultConnection] SET  READ_WRITE 
GO
