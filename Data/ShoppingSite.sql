USE [master]
GO
/****** Object:  Database [ShoppingSite]    Script Date: 11/16/2011 07:16:55 ******/
CREATE DATABASE [ShoppingSite] ON  PRIMARY 
( NAME = N'ShoppingSite', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ShoppingSite.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShoppingSite_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ShoppingSite_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShoppingSite] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoppingSite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoppingSite] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ShoppingSite] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ShoppingSite] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ShoppingSite] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ShoppingSite] SET ARITHABORT OFF
GO
ALTER DATABASE [ShoppingSite] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ShoppingSite] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ShoppingSite] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ShoppingSite] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ShoppingSite] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ShoppingSite] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ShoppingSite] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ShoppingSite] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ShoppingSite] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ShoppingSite] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ShoppingSite] SET  DISABLE_BROKER
GO
ALTER DATABASE [ShoppingSite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ShoppingSite] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ShoppingSite] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ShoppingSite] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ShoppingSite] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ShoppingSite] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ShoppingSite] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ShoppingSite] SET  READ_WRITE
GO
ALTER DATABASE [ShoppingSite] SET RECOVERY FULL
GO
ALTER DATABASE [ShoppingSite] SET  MULTI_USER
GO
ALTER DATABASE [ShoppingSite] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ShoppingSite] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShoppingSite', N'ON'
GO
USE [ShoppingSite]
GO
/****** Object:  User [admin]    Script Date: 11/16/2011 07:16:55 ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/16/2011 07:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Password] [varchar](64) NOT NULL,
	[Question] [varchar](100) NULL,
	[Answer] [varchar](100) NULL,
	[Name] [varchar](50) NULL,
	[Birth] [date] NULL,
	[Street] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[ZipCode] [varchar](20) NULL,
	[Country] [varchar](100) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stores]    Script Date: 11/16/2011 07:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[Latitude] [float] NOT NULL,
	[Longitude] [float] NOT NULL,
	[HasIndoor] [bit] NOT NULL,
	[HasOutdoor] [bit] NOT NULL,
	[HasStreet] [bit] NOT NULL,
	[TaxRate] [float] NOT NULL,
 CONSTRAINT [PK_Stores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Stores] ON
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (1, N'San Jose College Park', N'533 Coleman Ave|San Jose, CA 95110', 37.3390569, -121.904461, 1, 0, 0, 0.0825)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (2, N'San Jose Story Road', N'1750 Story Rd|San Jose, CA 95122', 37.3405257, -121.8422219, 0, 1, 0, 0.0925)
SET IDENTITY_INSERT [dbo].[Stores] OFF
/****** Object:  Table [dbo].[Categories]    Script Date: 11/16/2011 07:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Suits')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Shirts')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Shoes')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Jeans')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Hoodies')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Sweatshirts')
SET IDENTITY_INSERT [dbo].[Categories] OFF
/****** Object:  Table [dbo].[Departments]    Script Date: 11/16/2011 07:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (1, N'Men')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (2, N'Women')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (3, N'Boys')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (4, N'Girls')
SET IDENTITY_INSERT [dbo].[Departments] OFF
/****** Object:  Table [dbo].[Items]    Script Date: 11/16/2011 07:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Discount] [int] NULL,
	[DepartmentId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Items] ON
INSERT [dbo].[Items] ([Id], [Name], [Description], [Discount], [DepartmentId], [CategoryId]) VALUES (2, N'Alpha Industries Men''s Slim Fit N-3B Parka', N'blah blah blah', NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Items] OFF
/****** Object:  Table [dbo].[Orders]    Script Date: 11/16/2011 07:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Time] [datetime2](7) NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 11/16/2011 07:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[OrderId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StoreItems]    Script Date: 11/16/2011 07:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreItems](
	[StoreId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
 CONSTRAINT [PK_StoreItems] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC,
	[ItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 11/16/2011 07:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[Rate] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Ratings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pictures]    Script Date: 11/16/2011 07:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pictures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[Path] [varchar](256) NOT NULL,
 CONSTRAINT [PK_Pictures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 11/16/2011 07:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Text] [varchar](max) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_Users_Name]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Users_Street]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Street]  DEFAULT ('') FOR [Street]
GO
/****** Object:  Default [DF_Users_City]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_City]  DEFAULT ('') FOR [City]
GO
/****** Object:  Default [DF_Users_State]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_State]  DEFAULT ('') FOR [State]
GO
/****** Object:  Default [DF_Users_ZipCode]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_ZipCode]  DEFAULT ('') FOR [ZipCode]
GO
/****** Object:  Default [DF_Users_Country]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Country]  DEFAULT ('') FOR [Country]
GO
/****** Object:  Default [DF_Stores_Name]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Stores_Address]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_Address]  DEFAULT ('') FOR [Address]
GO
/****** Object:  Default [DF_Stores_HasIndoor]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_HasIndoor]  DEFAULT ((0)) FOR [HasIndoor]
GO
/****** Object:  Default [DF_Stores_HasOutdoor]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_HasOutdoor]  DEFAULT ((0)) FOR [HasOutdoor]
GO
/****** Object:  Default [DF_Stores_HasStreet]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_HasStreet]  DEFAULT ((0)) FOR [HasStreet]
GO
/****** Object:  Default [DF_Stores_TaxRate]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_TaxRate]  DEFAULT ((0)) FOR [TaxRate]
GO
/****** Object:  Default [DF_Categories_Name]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Departments_Name]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Items_Name]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Items_Description]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_Description]  DEFAULT ('') FOR [Description]
GO
/****** Object:  Default [DF_Orders_Time]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Time]  DEFAULT (getdate()) FOR [Time]
GO
/****** Object:  Default [DF_Orders_Price]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Price]  DEFAULT ((-1)) FOR [Price]
GO
/****** Object:  Default [DF_OrderItems_Quantity]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF_OrderItems_Quantity]  DEFAULT ((-1)) FOR [Quantity]
GO
/****** Object:  Default [DF_OrderItems_Price]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF_OrderItems_Price]  DEFAULT ((-1)) FOR [Price]
GO
/****** Object:  Default [DF_Ratings_Rate]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Ratings] ADD  CONSTRAINT [DF_Ratings_Rate]  DEFAULT ((0)) FOR [Rate]
GO
/****** Object:  Default [DF_Comments_Title]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF_Comments_Title]  DEFAULT ('') FOR [Title]
GO
/****** Object:  Default [DF_Comments_Text]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF_Comments_Text]  DEFAULT ('') FOR [Text]
GO
/****** Object:  ForeignKey [FK_Items_Categories]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Categories]
GO
/****** Object:  ForeignKey [FK_Items_Departments]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Departments]
GO
/****** Object:  ForeignKey [FK_Orders_Users]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
/****** Object:  ForeignKey [FK_OrderItems_Items]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Items]
GO
/****** Object:  ForeignKey [FK_OrderItems_Orders]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders]
GO
/****** Object:  ForeignKey [FK_StoreItems_Items]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[StoreItems]  WITH CHECK ADD  CONSTRAINT [FK_StoreItems_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[StoreItems] CHECK CONSTRAINT [FK_StoreItems_Items]
GO
/****** Object:  ForeignKey [FK_StoreItems_Stores]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[StoreItems]  WITH CHECK ADD  CONSTRAINT [FK_StoreItems_Stores] FOREIGN KEY([StoreId])
REFERENCES [dbo].[Stores] ([Id])
GO
ALTER TABLE [dbo].[StoreItems] CHECK CONSTRAINT [FK_StoreItems_Stores]
GO
/****** Object:  ForeignKey [FK_Ratings_Items]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Items]
GO
/****** Object:  ForeignKey [FK_Ratings_Users]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Users]
GO
/****** Object:  ForeignKey [FK_Pictures_Items]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Pictures]  WITH CHECK ADD  CONSTRAINT [FK_Pictures_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Pictures] CHECK CONSTRAINT [FK_Pictures_Items]
GO
/****** Object:  ForeignKey [FK_Comments_Items]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Items]
GO
/****** Object:  ForeignKey [FK_Comments_Users]    Script Date: 11/16/2011 07:16:57 ******/
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users]
GO
