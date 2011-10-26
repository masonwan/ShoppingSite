USE [master]
GO
/****** Object:  Database [ShoppingSite]    Script Date: 10/26/2011 03:40:35 ******/
USE [ShoppingSite]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/26/2011 03:40:37 ******/
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
/****** Object:  Table [dbo].[Stores]    Script Date: 10/26/2011 03:40:37 ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 10/26/2011 03:40:37 ******/
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
/****** Object:  Table [dbo].[Departments]    Script Date: 10/26/2011 03:40:37 ******/
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
/****** Object:  Table [dbo].[Items]    Script Date: 10/26/2011 03:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[Orders]    Script Date: 10/26/2011 03:40:37 ******/
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
/****** Object:  Table [dbo].[OrderItems]    Script Date: 10/26/2011 03:40:37 ******/
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
/****** Object:  Table [dbo].[StoreItems]    Script Date: 10/26/2011 03:40:37 ******/
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
/****** Object:  Table [dbo].[Ratings]    Script Date: 10/26/2011 03:40:37 ******/
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
/****** Object:  Table [dbo].[Pictures]    Script Date: 10/26/2011 03:40:37 ******/
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
/****** Object:  Table [dbo].[Comments]    Script Date: 10/26/2011 03:40:37 ******/
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
/****** Object:  Default [DF_Users_Name]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Users_Street]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Street]  DEFAULT ('') FOR [Street]
GO
/****** Object:  Default [DF_Users_City]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_City]  DEFAULT ('') FOR [City]
GO
/****** Object:  Default [DF_Users_State]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_State]  DEFAULT ('') FOR [State]
GO
/****** Object:  Default [DF_Users_ZipCode]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_ZipCode]  DEFAULT ('') FOR [ZipCode]
GO
/****** Object:  Default [DF_Users_Country]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Country]  DEFAULT ('') FOR [Country]
GO
/****** Object:  Default [DF_Stores_Name]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Stores_Address]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_Address]  DEFAULT ('') FOR [Address]
GO
/****** Object:  Default [DF_Stores_HasIndoor]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_HasIndoor]  DEFAULT ((0)) FOR [HasIndoor]
GO
/****** Object:  Default [DF_Stores_HasOutdoor]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_HasOutdoor]  DEFAULT ((0)) FOR [HasOutdoor]
GO
/****** Object:  Default [DF_Stores_HasStreet]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_HasStreet]  DEFAULT ((0)) FOR [HasStreet]
GO
/****** Object:  Default [DF_Stores_TaxRate]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_TaxRate]  DEFAULT ((0)) FOR [TaxRate]
GO
/****** Object:  Default [DF_Categories_Name]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Departments_Name]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Items_Description]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_Description]  DEFAULT ('') FOR [Description]
GO
/****** Object:  Default [DF_Orders_Time]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Time]  DEFAULT (getdate()) FOR [Time]
GO
/****** Object:  Default [DF_Orders_Price]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Price]  DEFAULT ((-1)) FOR [Price]
GO
/****** Object:  Default [DF_OrderItems_Quantity]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF_OrderItems_Quantity]  DEFAULT ((-1)) FOR [Quantity]
GO
/****** Object:  Default [DF_OrderItems_Price]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF_OrderItems_Price]  DEFAULT ((-1)) FOR [Price]
GO
/****** Object:  Default [DF_Ratings_Rate]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Ratings] ADD  CONSTRAINT [DF_Ratings_Rate]  DEFAULT ((0)) FOR [Rate]
GO
/****** Object:  Default [DF_Comments_Title]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF_Comments_Title]  DEFAULT ('') FOR [Title]
GO
/****** Object:  Default [DF_Comments_Text]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF_Comments_Text]  DEFAULT ('') FOR [Text]
GO
/****** Object:  ForeignKey [FK_Items_Categories]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Categories]
GO
/****** Object:  ForeignKey [FK_Items_Departments]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Departments]
GO
/****** Object:  ForeignKey [FK_Orders_Users]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
/****** Object:  ForeignKey [FK_OrderItems_Items]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Items]
GO
/****** Object:  ForeignKey [FK_OrderItems_Orders]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders]
GO
/****** Object:  ForeignKey [FK_StoreItems_Items]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[StoreItems]  WITH CHECK ADD  CONSTRAINT [FK_StoreItems_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[StoreItems] CHECK CONSTRAINT [FK_StoreItems_Items]
GO
/****** Object:  ForeignKey [FK_StoreItems_Stores]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[StoreItems]  WITH CHECK ADD  CONSTRAINT [FK_StoreItems_Stores] FOREIGN KEY([StoreId])
REFERENCES [dbo].[Stores] ([Id])
GO
ALTER TABLE [dbo].[StoreItems] CHECK CONSTRAINT [FK_StoreItems_Stores]
GO
/****** Object:  ForeignKey [FK_Ratings_Items]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Items]
GO
/****** Object:  ForeignKey [FK_Ratings_Users]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Users]
GO
/****** Object:  ForeignKey [FK_Pictures_Items]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Pictures]  WITH CHECK ADD  CONSTRAINT [FK_Pictures_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Pictures] CHECK CONSTRAINT [FK_Pictures_Items]
GO
/****** Object:  ForeignKey [FK_Comments_Items]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Items]
GO
/****** Object:  ForeignKey [FK_Comments_Users]    Script Date: 10/26/2011 03:40:37 ******/
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users]
GO
