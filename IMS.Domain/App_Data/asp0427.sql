CREATE TABLE [dbo].[adminInfo](
	[ID] [int] NOT NULL,
	[core_id] [int] NULL,
	[state] [nvarchar](255) NULL,
	[user_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2016/04/27 0:49:55 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2016/04/27 0:49:55 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2016/04/27 0:49:55 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2016/04/27 0:49:55 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2016/04/27 0:49:55 ******/
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
/****** Object:  Table [dbo].[clients]    Script Date: 2016/04/27 0:49:55 ******/
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
/****** Object:  Table [dbo].[coreInfo]    Script Date: 2016/04/27 0:49:55 ******/
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
 CONSTRAINT [PK_coreInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[districts]    Script Date: 2016/04/27 0:49:55 ******/
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
/****** Object:  Table [dbo].[intervention]    Script Date: 2016/04/27 0:49:55 ******/
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
/****** Object:  Table [dbo].[interventionTypes]    Script Date: 2016/04/27 0:49:55 ******/
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
/****** Object:  Table [dbo].[qualityInfo]    Script Date: 2016/04/27 0:49:55 ******/
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
/****** Object:  Table [dbo].[users]    Script Date: 2016/04/27 0:49:55 ******/
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
/****** Object:  View [dbo].[view_client_list]    Script Date: 2016/04/27 0:49:55 ******/
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
/****** Object:  View [dbo].[view_detail_interventions]    Script Date: 2016/04/27 0:49:55 ******/
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
			ci.date_recent_visit, u.ID as users_ID, u.userName,
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
/****** Object:  View [dbo].[view_users]    Script Date: 2016/04/27 0:49:55 ******/
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
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201604261252012_InitialCreate', N'IMS.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F60FF41D05376E1B47CD919CC1AED044EDBCE1A3BBE60DA13E46DC096D86D62244A9128C7C6225F96877C527E618B1275E345976EB9BB1D0408A6C5E2A962B148164B47FEF3F73FA6DF3F07BEF584E38484F4CC3E9A1CDA16A66EE811BA3AB353B6FCF683FDFD777FFFDBF4D20B9EAD9F0AB9132E073D6972663F32169D3A4EE23EE200259380B87198844B3671C3C0415EE81C1F1EFEDB393A723040D8806559D34F296524C0D90FF8390BA98B239622FF26F4B09F88E7D032CF50AD5B14E024422E3EB3AF6FE6935CCAB6CE7D82C08239F697B685280D196260DFE9E704CF591CD2D53C8207C87F788930C82D919F6061F76925DE770887C77C084ED5B18072D38485C140C0A313E11347EEBE9667EDD267E0B54BF02E7BE1A3CE3C074EF370F6E853E883036485A7333FE6C267F64DA9E23C896E319B141D2739E4550C70BF86F1D7491DF1C0EADDEFA08CA1E3C921FFEFC09AA53E4B637C4671CA62E41F58F7E9C227EE7FF1CB43F815D3B393A3C5F2E4C3BBF7C83B79FF2F7CF2AE3E52182BC8351EC0A3FB388C700CB6E165397EDB729AFD1CB963D9ADD627F70AC4122C07DBBA41CF1F315DB1475828C71F6CEB8A3C63AF782282EB3325B07AA0138B53F8799BFA3E5AF8B86C775A75F2FFB7683D7EF77E14ADB7E889ACB2A997F4C3C289615D7DC27ED69A3C92285F5E8DF9FE22C4AEE230E0BF9BF195B77E998769ECF2C18446910714AF306B5A3775AAE0ED15D21C6AFCB02E50F73FB4B9A56A786B45F980D65909858A6DAF86C2DED7D5DB3BE2CEA308262F0B2DEE91B680AB0EA989D4EBC082B62A548EFA860A8521FC9577BECB00117F84ADAF8716C83696240E7039CA1F4208344407DB7C8F920456BEF71F943CB6980EFF1CC1F43976D3180272CE5010BDBAB6FBC790E2DB3458F038DF9EAED1A6E6E1D7F00AB92C8C2F29EFB531DEC7D0FD1AA6EC927A1788E1CFCC2D00F9CF0712F40718C59C73D7C5497205C18CBD5908C97401784DD9C9F16038BE31ED3AF598F98804FADC43DA42BF14A255FEA19750721083982E0F6933F563B822B49FA985A8D9D45CA2D3542136D4540ED6CF522169363413E8B433971A2DB3CB6668FCD42E83DDFFDC6EB3C3DBB417D4DC38871D12FF88298E611BF3EE116338A6D50CF4D93776912C64D3C795BEFAD99469FA09F9E9D8AAD65A0DD92630FE6AC860F77F356466C2E327E2F1ACA4C785A71006F85EF2FABB54F79A932CDBF672680C73DBCAB7B3079896CB7992842EC95681A6D4250A154DFB2187B3BAAB16F968E4CA070C0C029DF0230F9EC0D86C39A8EEE805F631C3D6B99B970267287191A7BA1106E40D30AC38513586551590A671FF547442A4E3987742FC1294C04A2594A9CB82509744C8EFF492D4B3E711C6C75EEA905B2E70842957D8E9893ECAF5050F6E40A9479A942E0F4D9D5AC4B507A2216B35CD79570A5BCDBB5287D84A4C76E4CE86B814F9DBAB0466BBC7B6109CED2EE96380B178B78B00157795BE01205F5CF62D40A51B932140454AB595006D7A6C0701DA74C99B0BD0FC8ADA77FEA5FBEABE8567F3A2BCFD63BDD55D3B88CD863FF62C34F3DC13FA30E88163353C2F16BC113F33CDE50CEC14F7B344A4BA728870F03966CD924D95EF6AF350A71D440EA236C02AD03A40C56B3F05485950038C2B6A79ADD6892C62006C51776B85157BBF045B8B0115BBFEFAB326687E492A0767AFDB4739B2321A9420EF7559A8E1680242DEBC9A03EFE114535D56754C9F5C7848365C1B98988C16077564AE0627158319DD4B4568767B4997900D49C936F292943E19BC540C66742F8918ED769226291890166CE4A2E6113ED2622B2A1DE56953B64D9D9C0D251E4C1D036D6A7A83A288D0558D46259E58F39C4335FB763E9C6414E4188E9B68B846A5B5A52616C66885A556500D965E9138611788A105E2759E99172862DAB3D5B0FD172AEBC7A73A89C5395048F37F8BBDBD7A59DF3863D52444F4BD8291053C93C9CAE79A79D777B7389D0DF928D654EC67A19F06D49C58997BE7EFEDEAFDF3272AC2D491EC571227C54B4A7ADB7479AF095117C3869353E62BEB4F9019C2E4E622DBAC3BDA94819A518A82541DC554A4DAD9849912975E9324E782C3E7A813E175D69120A0D401C4A38118350E8302566BEB8FDAA499D4319B2DFD11252E491D526A1A60659D31D230B2DEB0169EC1A37A89FE1A548E481D5D6DED8FAC618BD4A135CD6B606B6C96DBFAA36A082575604D737FEC8A5D226F9E7B7C52196F28838FAAFCF2BAD95965C0789D9D709CA3AEF68EBE0E547B3C104BBC8557C0C4F3BD8C22E30D6E7014E5B58ACDA2C88061DE691A6FB59B1B4DEBAB783366E3557563336F7B556FC61B16ABAF1A11CAC54D1629B5971738E9A2361597A6EE8F60945B542E625B851BE1207F49180E265C6032FFC59FF904F36DBB10B841942C71C2727A867D7C78742C7D4FB33FDFB63849E2F99A4BA7E90397E69C6D8169459F50EC3EA258E53D6CF0FD4705AA9494AFA9879FCFECFF65BD4EB3EA04FF57F6F8C0BA4E3E53F24B0A0D0F718AADDF541EE7387CF8F6CBD49E7EBDD0DFABD73F7FC9BB1E587731AC9853EB50F2E53A33DCFCA661903579D70DAC59FB4B87B7BBA01A9F156851A505B1FE57040BC246F982A0B0F29B003DFF63A869DAAF043642D47C093016DE282E3431FDD7C132B2FC3DF8C93296FFB0C1EA59FFEB986664FC133A1C4CE6FBF7DF868A9E3B3C6A3477A16D6C49999F3BF9D21B9127777D3629B4EA8D16BA4A9D1E00B7013D7A8DC87863CCE2D14E470D717834EC5D86F6ABB385F785205C513776CB0BDE2615B8E5F5CF5F8A01BC079C350D0767F73CDF6DC79AA97EBBE764C9616CDE3D0B36C1CCDA3D6777DBC1662AF3EE79B00D62E6EE59ACEDEAFCDC71A4F53E4277CEB355294386F730BA5A70178F362F9CC30D7F114210E41965FEF9A39EB8D5463AED50588998959A1963B26265E1287A158976B5C3C62A0EFCD6C10A9976B5069E659B6EB1FFB7EA1632EDBA0DECC55D3080B5FC411D2BBB631F6B233BBD25C66F63241D04F3AE9CB5F5A5FA5B22F88EE294C6EA31BC237E3B7CDE515C32E6D219C0DF555FF7C2D959FBCB88707E27645541F0BF9348B1DB38354B996BBA0C8BC35BB2A810912A343798210F8ED4F3989125721934F31A73F6FD7656B7E36F3A16D8BBA677298B520643C6C1C26F14BC7812D0A63F2329376D9EDE45D99F221963086026E1B5F93BFA434A7CAFB4FB4A53133240F0EC425474F95C325ED95DBD9448B721ED0924DC5726450F38887C004BEEE81C3DE1756C83F0FB8857C87DA92A802690EE8968BA7D7A41D02A46412230AAFEF01362D80B9EBFFB3FDEB5507520540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'role3', N'Accountant')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'role2', N'Manager')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'role1', N'SiteEngineer')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user1', N'role1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user2', N'role1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user3', N'role1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user4', N'role2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user5', N'role2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user6', N'role2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user7', N'role3')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6389bf70-3365-44a4-816c-8e8aeb1fa2e3', N'a@b.com', 0, N'AHledYHqRRulQ/tKBzohmpIJvN/FlwsagwrGi1KJekcxpMNEQBDvLLsBTwx5ZU3dLQ==', N'f20337dd-e00d-424a-91fd-846c9953eb01', NULL, 0, 0, NULL, 1, 0, N'a@b.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user1', N'email@email.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', N'e05744f1-e181-4082-a9d5-ea08769218a8', NULL, 0, 0, NULL, 1, 0, N'eng1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user2', N'email@email.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', N'e05744f1-e181-4082-a9d5-ea08769218a8', NULL, 0, 0, NULL, 1, 0, N'eng2')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user3', N'email@email.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', N'e05744f1-e181-4082-a9d5-ea08769218a8', NULL, 0, 0, NULL, 1, 0, N'eng3')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user4', N'email@email.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', N'e05744f1-e181-4082-a9d5-ea08769218a8', NULL, 0, 0, NULL, 1, 0, N'man1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user5', N'email@email.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', N'e05744f1-e181-4082-a9d5-ea08769218a8', NULL, 0, 0, NULL, 1, 0, N'man2')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user6', N'email@email.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', N'e05744f1-e181-4082-a9d5-ea08769218a8', NULL, 0, 0, NULL, 1, 0, N'man3')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'user7', N'email@email.com', 0, N'AFmTTabJh1tfLg5FJAYWFQMK3iBTtL9gj0vFkJih7NxMIHIYln5igyuBVvjoaaSgDA==', N'e05744f1-e181-4082-a9d5-ea08769218a8', NULL, 0, 0, NULL, 1, 0, N'acc1')
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
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (1, N'Tim Simpson', N'eng1', 1, 0, NULL, N'Site Engineer', N'user1')
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (2, N'John Smith', N'eng2', 2, 0, NULL, N'Site Engineer', N'user2')
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (3, N'Ricky Martin', N'eng3', 3, 0, NULL, N'Site Engineer', N'user3')
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (4, N'Olivia O''Lovely', N'man1', 1, 0, NULL, N'Manager', N'user4')
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (5, N'Teddy Freddy', N'man2', 2, 0, NULL, N'Manager', N'user5')
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (6, N'James Cook', N'man3', 3, 0, NULL, N'Manager', N'user6')
INSERT [dbo].[users] ([ID], [userName], [loginName], [district_ID], [maxHours], [maxCost], [userType], [AspNetUserID]) VALUES (7, N'Money Accountantson', N'acc1', NULL, NULL, NULL, N'Accountant', N'user7')
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2016/04/27 0:49:55 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 2016/04/27 0:49:55 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 2016/04/27 0:49:55 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 2016/04/27 0:49:55 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 2016/04/27 0:49:55 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 2016/04/27 0:49:55 ******/
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
