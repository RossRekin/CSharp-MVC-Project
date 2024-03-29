Create Database MobileMallDb
GO
USE [MobileMallDb]
GO
/****** Object:  Table [dbo].[Laptops]    Script Date: 6.2.2020 г. 17:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laptops](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](40) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Os] [nvarchar](20) NOT NULL,
	[Price] [numeric](8, 2) NOT NULL,
 CONSTRAINT [PK_Laptops] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Smartphones]    Script Date: 6.2.2020 г. 17:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Smartphones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](40) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Price] [numeric](8, 2) NOT NULL,
 CONSTRAINT [PK_Smartphones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6.2.2020 г. 17:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[IsAdmin] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Laptops] ON 

INSERT [dbo].[Laptops] ([Id], [Title], [Description], [Os], [Price]) VALUES (1002, N'Apple MacBook Pro 13"', N'Intel Core i7-8569U
Iris Plus Graphics 655
16GB DDR3
512GB SSD NVMe', N'macOS ', CAST(5799.00 AS Numeric(8, 2)))
INSERT [dbo].[Laptops] ([Id], [Title], [Description], [Os], [Price]) VALUES (1003, N'HP 250 G7', N'Intel Celeron N4000
Intel UHD Graphics 600
от 8 до 24GB DDR4
от 256GB SSD до 1TB SSD', N'Windows 10', CAST(600.00 AS Numeric(8, 2)))
INSERT [dbo].[Laptops] ([Id], [Title], [Description], [Os], [Price]) VALUES (1004, N'Dell Inspiron 3582', N'Intel Pentium N5000
Intel UHD Graphics 605
от 8GB до 16GB DDR4
1TB HDD', N'Linux', CAST(600.00 AS Numeric(8, 2)))
SET IDENTITY_INSERT [dbo].[Laptops] OFF
SET IDENTITY_INSERT [dbo].[Smartphones] ON 

INSERT [dbo].[Smartphones] ([Id], [Title], [Description], [Price]) VALUES (1003, N'Xiaomi Mi 9T 128GB', N'6.39 AMOLED,
8-ядрен,
тройна камера на гърба,
сензор за пръстови отпечатъци', CAST(639.00 AS Numeric(8, 2)))
INSERT [dbo].[Smartphones] ([Id], [Title], [Description], [Price]) VALUES (1005, N'Samsung Galaxy Note10', N'6.3-инчов Dynamic AMOLED,
8-ядрен,
S Pen с въздушни команди и интуитивни движения', CAST(1600.00 AS Numeric(8, 2)))
INSERT [dbo].[Smartphones] ([Id], [Title], [Description], [Price]) VALUES (1006, N'Huawei nova 5T ', N'6.26-инчов IPS,
8-ядрен,
две SIM карти,
4 основни камери на гърба
', CAST(800.00 AS Numeric(8, 2)))
SET IDENTITY_INSERT [dbo].[Smartphones] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Email], [Password], [IsAdmin]) VALUES (1, N'admin@abv.bg', N'123', 1)
INSERT [dbo].[Users] ([Id], [Email], [Password], [IsAdmin]) VALUES (2, N'gosho@abv.bg', N'123', 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [IsAdmin]) VALUES (3, N'stoyan123@abv.bg', N'123', 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [IsAdmin]) VALUES (1002, N'test@abv.bg', N'123', 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [IsAdmin]) VALUES (1003, N'user@abv.bg', N'123456', 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsAdmin]  DEFAULT ((0)) FOR [IsAdmin]
GO
