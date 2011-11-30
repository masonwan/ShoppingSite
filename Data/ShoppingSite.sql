USE [master]
GO
/****** Object:  Database [ShoppingSite]    Script Date: 11/30/2011 13:34:32 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 11/30/2011 13:34:34 ******/
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
/****** Object:  Table [dbo].[Stores]    Script Date: 11/30/2011 13:34:34 ******/
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
	[Phone] [varchar](20) NULL,
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
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (3, N'Albany', N'1057 Eastshore Hwy Albany, CA 94710', N'(510) 982-0512', 37.884581, -122.308017, 1, 0, 0, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (4, N'Alhambra', N'2120 W Main St Alhambra, CA 91801', N'(626) 308-3290', 34.091086, -118.147144, 0, 0, 0, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (5, N'Aliso Viejo', N'26932 La Paz Rd Aliso Viejo, CA 92656', N'(949) 643-0337', 33.571135, -117.705621, 1, 0, 0, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (6, N'Anaheim', N'101 S Euclid St Anaheim, CA 92802', N'(714) 422-1120', 33.8324184, -117.9416126, 1, 0, 0, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (7, N'Anaheim Hills', N'8148 E Santa Ana Canyon Rd Anaheim, CA 92808', N'(714) 921-9091', 33.8677213, -117.7473052, 1, 1, 0, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (8, N'Antioch Slatten Ranch', N'5769 Lone Tree Way Antioch, CA 94531', N'(925) 752-0002', 37.964559, -121.737796, 0, 1, 0, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (9, N'Apple Valley', N'19201 Bear Valley Rd Apple Valley, CA 92308', N'(760) 247-4111', 34.468974, -117.24352, 1, 0, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (10, N'Apple Valley North SuperTarget', N'20288 US Hwy 18 Apple Valley, CA 92307', N'(760) 240-7654', 34.527494, -117.217659, 0, 0, 0, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (11, N'Atwater SuperTarget', N'1000 Commerce Ave Atwater, CA 95301', N'(209) 357-4820', 37.3421974, -120.6091341, 1, 0, 1, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (12, N'Auburn', N'2700 Bell Rd Auburn, CA 95603', N'(530) 889-5650', 38.9422944, -121.0957483, 1, 0, 0, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (13, N'Azusa', N'809 N Azusa Ave Azusa, CA 91702', N'(626) 629-1121', 34.1354808, -117.9075208, 1, 0, 1, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (14, N'Bakersfield Central', N'2901 Ming Ave Bakersfield, CA 93304', N'(661) 617-2000', 35.3384147, -119.0361199, 0, 0, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (15, N'Bakersfield NE', N'3401 Mall View Rd Bakersfield, CA 93306', N'(661) 872-9929', 35.394718, -118.955605, 1, 0, 1, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (16, N'Bakersfield NW', N'9100 Rosedale Hwy Bakersfield, CA 93312', N'(661) 589-0554', 35.385061, -119.103272, 1, 1, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (17, N'Bakersfield West', N'11000 Stockdale Hwy Bakersfield, CA 93311', N'(661) 617-3657', 35.349898, -119.125287, 0, 0, 1, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (18, N'Baldwin Park', N'3100 Baldwin Park Blvd Baldwin Park, CA 91706', N'(626) 851-9404', 34.069772, -117.977181, 1, 1, 0, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (19, N'Brea', N'855 E Birch St Brea, CA 92821', N'(714) 989-5013', 33.9178932, -117.887668, 0, 1, 0, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (20, N'Buena Park', N'7530 Orangethorpe Ave Buena Park, CA 90621', N'(714) 676-0013', 33.857341, -118.00091, 0, 0, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (21, N'Burbank', N'1800 W Empire Ave Burbank, CA 91504', N'(818) 238-0132', 34.1891193, -118.3306815, 1, 1, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (22, N'Camarillo', N'209 W Ventura Blvd Camarillo, CA 93010', N'(805) 384-0040', 34.217268, -119.072667, 1, 0, 0, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (23, N'Los Angeles Topanga', N'6700 Topanga Canyon Blvd Canoga Park, CA 91303', N'(818) 746-9922', 34.1930052, -118.6059043, 1, 0, 0, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (24, N'Carson', N'651 W Sepulveda Blvd Carson, CA 90745', N'(310) 507-0020', 33.809454, -118.285983, 1, 0, 1, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (25, N'Carson North', N'20700 S Avalon Blvd Ste 750 Carson, CA 90746', N'(310) 819-3011', 33.842913, -118.2627538, 1, 1, 0, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (26, N'Palm Springs', N'67750 E Palm Canyon Dr Cathedral City, CA 92234', N'(760) 321-7425', 33.787553, -116.480209, 0, 0, 1, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (27, N'Cerritos', N'20200 Bloomfield Ave Cerritos, CA 90703', N'(562) 860-9909', 33.847128, -118.062211, 1, 0, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (28, N'Cerritos West', N'11525 South St Cerritos, CA 90703', N'(562) 274-0063', 33.859429, -118.087842, 0, 1, 0, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (29, N'Chico', N'1951 E 20th St Chico, CA 95928', N'(530) 343-3770', 39.7271856, -121.80323, 1, 1, 0, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (30, N'Chino', N'5555 Philadelphia St Chino, CA 91710', N'(909) 627-8433', 34.032761, -117.682047, 1, 0, 0, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (31, N'Chino Hills', N'3944 Grand Ave Chino, CA 91710', N'(909) 465-5804', 34.001487, -117.718767, 1, 0, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (32, N'Chula Vista Broadway', N'1240 Broadway Chula Vista, CA 91911', N'(619) 425-3850', 32.604545, -117.080529, 0, 1, 1, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (33, N'Chula Vista East', N'910 Eastlake Pkwy Chula Vista, CA 91914', N'(619) 213-1010', 32.6504, -116.96765, 0, 1, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (34, N'Chula Vista North 4th', N'40 N 4th Ave Chula Vista, CA 91910', N'(619) 425-5120', 32.6514044, -117.0883129, 0, 0, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (35, N'Birdcage-Citrus Heights', N'5837 Sunrise Blvd Citrus Heights, CA 95610', N'(916) 966-5267', 38.672631, -121.273851, 0, 1, 0, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (36, N'Clovis', N'900 Shaw Ave Clovis, CA 93612', N'(559) 297-4691', 36.807187, -119.698803, 0, 0, 0, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (37, N'Clovis NW', N'695 W Herndon Ave Clovis, CA 93612', N'(559) 321-0009', 36.8374283, -119.7026239, 0, 1, 1, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (38, N'Colma', N'5001 Junipero Serra Blvd Colma, CA 94014', N'(650) 992-8433', 37.673285, -122.464701, 1, 1, 0, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (39, N'Compton-Rancho Dom', N'1621 S Alameda St Compton, CA 90220', N'(310) 735-0096', 33.8795689, -118.219525, 0, 0, 0, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (40, N'Corona', N'2615 Tuscanny St Corona, CA 92881', N'(951) 277-3075', 33.8264349, -117.516156, 1, 0, 1, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (41, N'Costa Mesa', N'3030 Harbor Blvd Ste A Costa Mesa, CA 92626', N'(714) 979-0372', 33.683107, -117.917173, 1, 0, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (42, N'Culver City', N'10820 Jefferson Blvd Culver City, CA 90230', N'(310) 839-5200', 33.999139, -118.3938985, 1, 0, 0, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (43, N'Culver City South', N'6000 Sepulveda Blvd Culver City, CA 90230', N'(310) 754-4614', 33.985787, -118.394938, 0, 1, 1, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (44, N'Cupertino', N'20745 Stevens Creek Blvd Cupertino, CA 95014', N'(408) 725-2651', 37.324188, -122.036144, 0, 1, 0, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (45, N'Cypress', N'6835 Katella Ave Cypress, CA 90630', N'(714) 220-2000', 33.803919, -118.013144, 1, 0, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (46, N'Daly City Serramonte', N'133 Serramonte Ctr Daly City, CA 94015', N'(650) 755-2393', 37.670076, -122.472829, 0, 0, 0, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (47, N'Davis', N'4601 2nd St Davis, CA 95618', N'(530) 761-0126', 38.5565885, -121.6943168, 1, 1, 0, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (48, N'Diamond Bar', N'747 Grand Ave Diamond Bar, CA 91765', N'(909) 610-2149', 34.004595, -117.821532, 0, 0, 1, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (49, N'Duarte', N'1050 Huntington Dr Duarte, CA 91010', N'(626) 303-8858', 34.137514, -117.98307, 1, 0, 1, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (50, N'Dublin', N'7200 Amador Plaza Rd Dublin, CA 94568', N'(925) 829-8900', 37.7074768, -121.9296029, 0, 1, 1, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (51, N'Dublin East', N'2800 Dublin Blvd Dublin, CA 94568', N'(925) 241-1042', 37.7055189, -121.8733787, 0, 1, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (52, N'Eastvale', N'12471 Limonite Ave Eastvale, CA 91752', N'(951) 256-5261', 33.975182, -117.551479, 1, 1, 1, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (53, N'El Cajon', N'250 Broadway El Cajon, CA 92021', N'(619) 442-9641', 32.809662, -116.959378, 1, 1, 0, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (54, N'Rancho San Diego', N'2911 Jamacha Rd El Cajon, CA 92019', N'(619) 660-2948', 32.738585, -116.938921, 1, 1, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (55, N'El Centro', N'2295 N Imperial Ave El Centro, CA 92243', N'(760) 482-5400', 32.8200007, -115.569745, 1, 0, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (56, N'El Dorado Hills', N'4400 Town Center Blvd El Dorado Hills, CA 95762', N'(916) 605-0184', 38.650054, -121.062413, 0, 0, 0, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (57, N'Elk Grove', N'7505 Laguna Blvd Elk Grove, CA 95758', N'(916) 683-5356', 38.426429, -121.415577, 0, 1, 0, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (58, N'Oakland-Emeryville', N'1555 40th Street Emeryville, CA 94608', N'(510) 285-0559', 37.8285481, -122.2893119, 1, 0, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (59, N'Encinitas', N'1010 N El Camino Real Encinitas, CA 92024', N'(760) 633-1406', 33.0631709, -117.264914, 1, 0, 0, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (60, N'Escondido', N'1280 Auto Park Way Escondido, CA 92029', N'(760) 489-6119', 33.113575, -117.099795, 1, 0, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (61, N'Eureka', N'2525 4th St Eureka, CA 95501', N'(707) 442-0201', 40.805565, -124.144249, 1, 1, 1, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (62, N'Fairfield', N'2059 Cadenasso Dr Fairfield, CA 94533', N'(707) 426-1105', 38.246448, -122.068764, 0, 1, 0, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (63, N'Folsom', N'430 Blue Ravine Rd Folsom, CA 95630', N'(916) 984-9131', 38.671454, -121.152721, 0, 0, 0, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (64, N'Fontana', N'16964 Slover Ave Fontana, CA 92337', N'(909) 356-4242', 34.064884, -117.434256, 0, 1, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (65, N'Fontana North', N'15272 Summit Ave Fontana, CA 92336', N'(909) 463-9872', 34.152223, -117.472438, 0, 0, 0, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (66, N'Foothill Ranch', N'26762 Portola Pkwy Foothill Ranch, CA 92610', N'(949) 454-2360', 33.676558, -117.664111, 0, 1, 1, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (67, N'Fremont Hub', N'39201 Fremont Blvd Fremont, CA 94538', N'(510) 795-6305', 37.54351, -121.985051, 1, 0, 0, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (68, N'Fresno Central', N'5740 N Blackstone Ave Fresno, CA 93710', N'(559) 431-8622', 36.8215822, -119.7882435, 1, 0, 1, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (69, N'Fresno North', N'7600 N Blackstone Ave Fresno, CA 93720', N'(559) 431-0104', 36.847189, -119.787099, 0, 1, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (70, N'Fresno South', N'3173 E Shields Ave Fresno, CA 93726', N'(559) 228-8471', 36.78054, -119.771072, 0, 1, 1, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (71, N'Fresno West', N'3150 W Shaw Ave Fresno, CA 93711', N'(559) 275-7059', 36.8084926, -119.8491561, 0, 0, 1, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (72, N'Fullerton', N'2920 Yorba Linda Blvd Fullerton, CA 92831', N'(714) 579-3090', 33.888027, -117.87696, 1, 1, 1, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (73, N'Fullerton South', N'200 W Orangethorpe Ave Fullerton, CA 92832', N'(714) 992-4565', 33.8592647, -117.9269802, 1, 0, 0, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (74, N'West Fullerton', N'1893 W Malvern Ave Fullerton, CA 92833', N'(714) 278-1024', 33.8772827, -117.9621881, 1, 0, 0, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (75, N'Brookhurst', N'13831 Brookhurst St Garden Grove, CA 92843', N'(714) 534-2142', 33.7621687, -117.9546161, 1, 0, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (76, N'Garden Grove Harbor', N'12100 Harbor Blvd Garden Grove, CA 92840', N'(714) 971-4826', 33.78787, -117.913257, 1, 1, 0, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (77, N'Gardena', N'2169 W Redondo Beach Blvd Gardena, CA 90247', N'(310) 327-0762', 33.8864317, -118.3155829, 1, 1, 1, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (78, N'Gilroy', N'6705 Camino Arroyo Gilroy, CA 95020', N'(408) 848-6466', 37.00029, -121.554703, 0, 1, 1, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (79, N'Glendale', N'2195 Glendale Galleria Glendale, CA 91210', N'(818) 334-1400', 34.1456693, -118.2566823, 1, 0, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (80, N'Granada Hills', N'11133 Balboa Blvd Granada Hills, CA 91344', N'(818) 360-2999', 34.2728194, -118.5021855, 0, 0, 0, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (81, N'Hanford', N'140 N 12th Ave Hanford, CA 93230', N'(559) 582-9298', 36.323642, -119.675733, 0, 1, 1, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (82, N'Hawthorne', N'2700 W 120th St Hawthorne, CA 90250', N'(323) 492-1000', 33.922448, -118.321489, 1, 0, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (83, N'Hayward', N'2499 Whipple Rd Hayward, CA 94544', N'(510) 471-9166', 37.6073774, -122.0649645, 0, 1, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (84, N'Hayward North', N'19661 Hesperian Blvd Hayward, CA 94541', N'(510) 731-0001', 37.6673469, -122.1193889, 1, 1, 1, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (85, N'Hemet', N'3527 W Florida Ave Hemet, CA 92545', N'(951) 652-9585', 33.74579, -117.008902, 0, 0, 1, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (86, N'Hesperia SuperTarget', N'12795 Main St Hesperia, CA 92345', N'(760) 949-3062', 34.4265742, -117.3856579, 0, 0, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (87, N'Hollister', N'1790 Airline Hwy Hollister, CA 95023', N'(831) 636-3722', 36.835429, -121.389601, 1, 0, 0, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (88, N'Huntington Beach East', N'9882 Adams Ave Huntington Beach, CA 92646', N'(714) 849-1814', 33.671068, -117.955656, 0, 0, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (89, N'Indio SuperTarget', N'42625 Jackson St Indio, CA 92203', N'(760) 863-3600', 33.739439, -116.217699, 0, 1, 1, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (90, N'Inglewood', N'3471 W Century Blvd Inglewood, CA 90303', N'(310) 677-2436', 33.9456462, -118.3324242, 0, 1, 0, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (91, N'Irvine', N'3750 Barranca Pkwy Irvine, CA 92606', N'(949) 857-8337', 33.685327, -117.812502, 0, 1, 0, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (92, N'Irvine North', N'13200 Jamboree Rd Irvine, CA 92602', N'(714) 838-1209', 33.727159, -117.785153, 0, 0, 1, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (93, N'Irvine Spectrum', N'115 Fortune Dr Irvine, CA 92618', N'(949) 885-0114', 33.6488835, -117.7449077, 0, 1, 1, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (94, N'La Habra', N'1000 W Imperial Hwy La Habra, CA 90631', N'(714) 459-6034', 33.915961, -117.9576, 1, 0, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (95, N'Grossmont', N'5500 Grossmont Ctr Dr La Mesa, CA 91942', N'(619) 461-1960', 32.779644, -117.010081, 0, 1, 0, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (96, N'La Quinta', N'78935 US Hwy 111 La Quinta, CA 92253', N'(760) 564-0492', 33.687327, -116.180848, 0, 1, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (97, N'Laverne', N'2462 Foothill Blvd La Verne, CA 91750', N'(909) 593-2421', 34.109746, -117.759573, 0, 0, 0, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (98, N'Lake Elsinore', N'18287 Collier Ave Lake Elsinore, CA 92530', N'(951) 674-2620', 33.689188, -117.342216, 0, 0, 0, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (99, N'Lakewood Center Mall', N'141 Lakewood Center Mall Lakewood, CA 90712', N'(562) 894-0019', 33.852585, -118.140517, 0, 1, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (100, N'Lancaster', N'43525 10th St W Lancaster, CA 93534', N'(661) 949-8584', 34.673546, -118.149089, 0, 1, 0, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (101, N'Lathrop', N'16858 Golden Valley Pkwy Lathrop, CA 95330', N'(209) 242-5041', 37.8038849, -121.3008091, 0, 0, 0, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (102, N'Lincoln', N'950 Groveland LN Lincoln, CA 95648', N'(916) 251-3002', 38.8703011, -121.3024908, 1, 1, 1, 8.5)
GO
print 'Processed 100 total records'
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (103, N'Livermore', N'4300 Las Positas Rd Livermore, CA 94551', N'(925) 606-1445', 37.70115, -121.746354, 1, 1, 1, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (104, N'Lodi', N'2355 W Kettleman Ln Lodi, CA 95242', N'(209) 369-9371', 38.1154223, -121.3038033, 0, 1, 0, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (105, N'Long Beach Bellflower', N'2270 N Bellflower Blvd Long Beach, CA 90815', N'(562) 493-5411', 33.7983724, -118.1250983, 0, 1, 1, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (106, N'Long Beach NW', N'6750 Cherry Ave Long Beach, CA 90805', N'(562) 295-2971', 33.877324, -118.166187, 0, 1, 1, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (107, N'Commerce', N'5600 Whittier Blvd Los Angeles, CA 90022', N'(323) 725-1121', 34.017946, -118.150348, 1, 0, 1, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (108, N'Los Angeles', N'3535 S La Cienega Blvd Los Angeles, CA 90016', N'(310) 895-1131', 34.0235132, -118.3724263, 1, 0, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (109, N'Los Angeles Eagle Rock', N'2626 Colorado Blvd Los Angeles, CA 90041', N'(323) 258-1355', 34.141333, -118.224033, 1, 1, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (110, N'Los Banos', N'1405 W Pacheco Blvd Los Banos, CA 93635', N'(209) 827-2080', 37.0543929, -120.8735301, 0, 0, 0, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (111, N'Manhattan Beach', N'1200 N Sepulveda Blvd Manhattan Beach, CA 90266', N'(310) 546-5601', 33.888399, -118.394744, 1, 0, 1, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (112, N'Manteca', N'280 Spreckels Ave Manteca, CA 95336', N'(209) 823-9982', 37.795028, -121.196787, 0, 0, 0, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (113, N'Marina', N'133 General Stilwell Dr Marina, CA 93933', N'(831) 883-5720', 36.6661602, -121.8103292, 0, 0, 0, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (114, N'Menifee SuperTarget', N'30340 Haun Rd Menifee, CA 92584', N'(951) 723-6151', 33.6804344, -117.1755361, 1, 0, 0, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (115, N'Merced', N'3280 R St Merced, CA 95348', N'(209) 725-3482', 37.322855, -120.4868327, 1, 0, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (116, N'Mission Viejo', N'24500 Alicia Pkwy Mission Viejo, CA 92691', N'(949) 583-1298', 33.606428, -117.688524, 1, 1, 0, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (117, N'Mission Viejo N', N'25601 Jeronimo Rd Mission Viejo, CA 92691', N'(949) 680-1064', 33.6215868, -117.6822951, 0, 0, 1, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (118, N'Modesto', N'3405 Mchenry Ave Modesto, CA 95350', N'(209) 572-3341', 37.687499, -120.995907, 0, 0, 0, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (119, N'Modesto NW', N'3900 Sisk Rd Modesto, CA 95356', N'(209) 543-9561', 37.6954806, -121.0654184, 1, 0, 0, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (120, N'Montclair', N'9052 Central Ave Montclair, CA 91763', N'(909) 624-5717', 34.089657, -117.69095, 1, 0, 0, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (121, N'Moorpark', N'800 New Los Angeles Ave Moorpark, CA 93021', N'(805) 530-0028', 34.278678, -118.867471, 1, 1, 1, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (122, N'Moreno Valley East SuperTarget', N'27100 Eucalyptus Ave Moreno Valley, CA 92555', N'(951) 571-8014', 33.937712, -117.189572, 1, 0, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (123, N'Morgan Hill', N'1061 Cochrane Rd Morgan Hill, CA 95037', N'(408) 310-4050', 37.157385, -121.65353, 1, 0, 0, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (124, N'Mountain View', N'555 Showers Dr Mountain View, CA 94040', N'(650) 965-7764', 37.401247, -122.10631, 0, 0, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (125, N'Murrieta', N'41040 California Oaks Rd Murrieta, CA 92562', N'(951) 696-7527', 33.567611, -117.2055591, 0, 1, 0, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (126, N'Murrieta North SuperTarget', N'27818 Clinton Keith Rd Murrieta, CA 92562', N'(951) 704-1123', 33.5988594, -117.1762611, 0, 1, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (127, N'Napa', N'205 Soscol Ave Napa, CA 94559', N'(707) 224-1058', 38.28217, -122.276636, 1, 1, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (128, N'Napa North', N'4000 Bel Aire Plaza Napa, CA 94558', N'(707) 225-3016', 38.322476, -122.307814, 0, 1, 0, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (129, N'Natl Cty Pl Bonita', N'3060 Plaza Bonita Rd National City, CA 91950', N'(619) 791-2749', 32.656434, -117.067702, 0, 0, 0, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (130, N'Newpark Mall', N'400 Newpark Mall Newark, CA 94560', N'(510) 744-1790', 37.5282128, -122.0021173, 1, 0, 0, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (131, N'Norco', N'1290 Hamner Ave Norco, CA 92860', N'(951) 371-1872', 33.901123, -117.564336, 0, 0, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (132, N'North Hollywood', N'11051 Victory Blvd North Hollywood, CA 91606', N'(818) 761-3083', 34.188175, -118.371391, 1, 0, 1, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (133, N'Northridge', N'8840 Corbin Ave Northridge, CA 91324', N'(818) 772-0494', 34.230976, -118.560743, 0, 0, 0, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (134, N'Northridge', N'8999 Balboa Blvd Northridge, CA 91325', N'(818) 924-9001', 34.234506, -118.503477, 0, 0, 0, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (135, N'Norwalk', N'10600 Firestone Blvd Norwalk, CA 90650', N'(562) 406-8870', 33.925627, -118.107089, 1, 1, 1, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (136, N'Norwalk East', N'12051 Imperial Hwy Norwalk, CA 90650', N'(562) 409-5036', 33.918142, -118.075635, 0, 0, 0, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (137, N'Novato', N'200 Vintage Way Novato, CA 94945', N'(415) 892-3313', 38.09012, -122.553556, 0, 0, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (138, N'Oceanside', N'2255 S El Camino Real Oceanside, CA 92054', N'(760) 967-8335', 33.1850229, -117.3279933, 1, 1, 0, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (139, N'Ontario', N'4200 E 4th St Ontario, CA 91764', N'(909) 579-3040', 34.0770189, -117.5625581, 0, 0, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (140, N'Orange', N'2191 N Tustin St Orange, CA 92865', N'(714) 974-2800', 33.824513, -117.834715, 1, 1, 0, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (141, N'Oxnard West', N'2850 N OXNARD BLVD Oxnard West, CA 93036', N'(805) 288-3642', 34.2306287, -119.1787459, 1, 0, 1, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (142, N'Pacoima', N'9725 Laurel Canyon Blvd Pacoima, CA 91331', N'(818) 896-8214', 34.244872, -118.418789, 0, 1, 1, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (143, N'Palm Desert', N'72549 Highway 111 Palm Desert, CA 92260', N'(760) 341-9307', 33.7239859, -116.40297, 0, 0, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (144, N'Palmdale', N'39440 10th St W Palmdale, CA 93551', N'(661) 265-0906', 34.599264, -118.146305, 1, 1, 0, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (145, N'Palmdale East SuperTarget', N'38019 47Th St E Palmdale, CA 93552', N'(661) 998-2500', 34.5777447, -118.0451644, 1, 0, 0, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (146, N'Pasadena', N'777 E Colorado Blvd Pasadena, CA 91101', N'(626) 584-1606', 34.146842, -118.13455, 0, 0, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (147, N'Pasadena East', N'3121 E Colorado Blvd Pasadena, CA 91107', N'(626) 584-2931', 34.146938, -118.08418, 0, 0, 1, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (148, N'Paso Robles', N'2305 Theatre Dr Paso Robles, CA 93446', N'(805) 227-0105', 35.5844379, -120.6967777, 0, 1, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (149, N'Pico Rivera', N'8800 Whittier Blvd Pico Rivera, CA 90660', N'(562) 949-6200', 34.001211, -118.084448, 1, 0, 1, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (150, N'Pinole', N'1400 Fitzgerald Dr Pinole, CA 94564', N'(510) 222-0558', 37.987868, -122.309337, 1, 1, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (151, N'Pittsburg', N'4301 Century Blvd Pittsburg, CA 94565', N'(925) 778-8950', 38.0066076, -121.8414883, 1, 1, 0, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (152, N'Pleasant Hill', N'560 Contra Costa Blvd Pleasant Hill, CA 94523', N'(925) 685-6069', 37.9625791, -122.0619543, 0, 0, 0, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (153, N'Porterville', N'1363 W Henderson Ave Porterville, CA 93257', N'(559) 719-2203', 36.078313, -119.047286, 1, 1, 1, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (154, N'Poway', N'14823 Pomerado Rd Poway, CA 92064', N'(858) 679-8202', 32.9811428, -117.0623476, 1, 0, 0, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (155, N'Rancho Cordova', N'10880 Olson Dr Rancho Cordova, CA 95670', N'(916) 503-2512', 38.594024, -121.2848037, 0, 0, 0, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (156, N'Rancho Cucamonga', N'10576 Foothill Blvd Rancho Cucamonga, CA 91730', N'(909) 948-9952', 34.108566, -117.573968, 0, 1, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (157, N'Rancho Santa Margarita', N'30602 Santa Margarita Pkwy Rancho Santa Margarita, CA 92688', N'(949) 459-1543', 33.641964, -117.597796, 0, 1, 0, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (158, N'Redding', N'1280 Dana Dr Redding, CA 96003', N'(530) 223-0123', 40.586639, -122.348818, 0, 0, 0, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (159, N'Redlands', N'27320 W Lugonia Ave Redlands, CA 92374', N'(909) 307-1602', 34.07121, -117.207196, 0, 0, 0, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (160, N'Redondo Beach', N'1601 Kingsdale Ave Redondo Beach, CA 90278', N'(310) 750-0003', 33.868827, -118.357585, 1, 0, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (161, N'Redwood City', N'2485 El Camino Real Redwood City, CA 94063', N'(650) 363-8940', 37.475287, -122.217679, 1, 0, 0, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (162, N'Richmond', N'4500 Macdonald Ave Richmond, CA 94805', N'(510) 253-1000', 37.9324208, -122.3280017, 1, 0, 0, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (163, N'Riverbank', N'2425 Claribel Rd Riverbank, CA 95367', N'(209) 863-1270', 37.713275, -120.952716, 0, 1, 1, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (164, N'Riverside', N'3520 Tyler St Riverside, CA 92503', N'(951) 351-8271', 33.9072063, -117.4578631, 0, 1, 0, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (165, N'Riverside Arlington', N'3333 Arlington Ave Riverside, CA 92506', N'(951) 784-6430', 33.9464739, -117.3827806, 0, 1, 1, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (166, N'Riverside SE', N'2755 Canyon Springs Pkwy Riverside, CA 92507', N'(951) 697-6778', 33.9387208, -117.2821603, 1, 0, 0, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (167, N'Rohnert Park', N'475 Rohnert Park Expy W Rohnert Park, CA 94928', N'(707) 586-2901', 38.346875, -122.720327, 0, 1, 0, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (168, N'Rosemead', N'3600 Rosemead Blvd Rosemead, CA 91770', N'(626) 280-8024', 34.0741124, -118.0729364, 0, 1, 1, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (169, N'Roseville', N'1925 Douglas Blvd Roseville, CA 95661', N'(916) 786-8787', 38.745716, -121.254001, 0, 0, 0, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (170, N'Roseville North', N'10451 Fairway Dr Roseville, CA 95678', N'(916) 780-1020', 38.7908479, -121.289778, 1, 0, 1, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (171, N'Puente Hills', N'17751 Colima Rd Rowland Heights, CA 91748', N'(626) 913-2880', 33.991562, -117.918644, 0, 0, 1, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (172, N'Sacramento Arden', N'1919 Fulton Ave Sacramento, CA 95825', N'(916) 483-6093', 38.6006606, -121.4033781, 1, 1, 1, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (173, N'Sacramento East', N'6507 4th Ave Sacramento, CA 95817', N'(916) 503-3678', 38.549224, -121.426481, 0, 0, 1, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (174, N'Sacramento Madison', N'5001 Madison Ave Sacramento, CA 95841', N'(916) 348-3701', 38.661791, -121.349125, 1, 0, 1, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (175, N'Sacramento Natomas', N'3601 N Freeway Blvd Sacramento, CA 95834', N'(916) 576-0487', 38.640769, -121.498669, 0, 1, 0, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (176, N'Sacramento Riverside', N'2505 Riverside Blvd Sacramento, CA 95818', N'(916) 444-0993', 38.562685, -121.4970445, 0, 1, 1, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (177, N'Sacramento SW', N'8101 Cosumnes River Blvd Sacramento, CA 95823', N'(916) 525-3576', 38.458529, -121.413871, 0, 0, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (178, N'Salinas', N'1640 N Main St Salinas, CA 93906', N'(831) 442-0547', 36.7127579, -121.6523789, 0, 0, 0, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (179, N'Orange Show', N'499 W Orange Show Rd San Bernardino, CA 92408', N'(909) 381-3391', 34.0794583, -117.2927947, 1, 1, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (180, N'San Bernardino', N'2380 Sterling Ave San Bernardino, CA 92404', N'(909) 881-2671', 34.137803, -117.245152, 1, 1, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (181, N'Tanforan', N'1150 El Camino Real San Bruno, CA 94066', N'(650) 827-0171', 37.6358529, -122.4188443, 0, 0, 1, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (182, N'San Clemente', N'990 Avenida Vista Hermosa San Clemente, CA 92673', N'(949) 456-8668', 33.4542388, -117.6200152, 1, 1, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (183, N'Balboa', N'5680 Balboa Ave San Diego, CA 92111', N'(858) 309-6564', 32.8202432, -117.1802584, 1, 1, 1, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (184, N'Kearny Mesa', N'8001 Othello Ave San Diego, CA 92111', N'(858) 576-1570', 32.816268, -117.150296, 1, 1, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (185, N'Lemon Grove', N'3424 College Ave San Diego, CA 92115', N'(619) 471-0025', 32.741007, -117.055583, 0, 1, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (186, N'Mira Mesa', N'8251 Mira Mesa Blvd San Diego, CA 92126', N'(858) 530-1901', 32.9110609, -117.146022, 1, 1, 1, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (187, N'San Diego Mission Valley', N'1288 Camino Del Rio N San Diego, CA 92108', N'(619) 542-0025', 32.7676274, -117.1507306, 0, 1, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (188, N'Sports Arena', N'3245 Sports Arena Blvd San Diego, CA 92110', N'(619) 223-2491', 32.752092, -117.212443, 1, 1, 0, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (189, N'San Dimas', N'888 W Arrow Hwy San Dimas, CA 91773', N'(909) 394-0335', 34.103639, -117.823369, 1, 1, 1, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (190, N'San Jose Capitol', N'450 N Capital Ave San Jose, CA 95133', N'(408) 254-8931', 37.3207944, -121.935655, 0, 1, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (191, N'San Jose Central', N'2161 Monterey Hwy San Jose, CA 95125', N'(408) 660-1703', 37.3047387, -121.8650025, 1, 1, 0, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (192, N'San Jose College Park', N'533 Coleman Ave San Jose, CA 95110', N'(408) 346-2022', 37.3390569, -121.904461, 1, 0, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (193, N'San Jose East', N'3155 Silver Creek Rd San Jose, CA 95121', N'(408) 238-7800', 37.307802, -121.812577, 0, 0, 1, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (194, N'San Jose Landess', N'2155 Morrill Ave San Jose, CA 95132', N'(408) 946-6791', 37.414218, -121.876175, 1, 0, 1, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (195, N'San Jose North', N'95 Holger Way San Jose, CA 95134', N'(408) 834-1527', 37.4187569, -121.9548834, 1, 1, 1, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (196, N'San Jose Oakridge', N'879 Blossom Hill Rd San Jose, CA 95123', N'(408) 513-3002', 37.252379, -121.860588, 0, 1, 0, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (197, N'San Jose Story Road', N'1750 Story Rd San Jose, CA 95122', N'(408) 273-0054', 37.3405257, -121.8422219, 1, 0, 1, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (198, N'San Jose West', N'1811 Hillsdale Ave San Jose, CA 95124', N'(408) 267-7900', 37.263278, -121.9177361, 1, 0, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (199, N'San Jose Westgate', N'1600 Saratoga Ave San Jose, CA 95129', N'(408) 871-7984', 37.291284, -121.989617, 0, 0, 1, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (200, N'San Leandro Bayfair', N'15555 E 14th St Ste 400 San Leandro, CA 94578', N'(510) 276-2699', 37.6997218, -122.1272421, 0, 1, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (201, N'San Luis Obispo', N'11990 LOS OSOS VALLEY RD San Luis Obispo, CA 93405', N'(805) 858-9902', 35.2515082, -120.6865077, 1, 1, 0, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (202, N'San Mateo Fashion Island', N'2220 Bridgepointe Pkwy San Mateo, CA 94404', N'(650) 341-0734', 37.5587226, -122.2835827, 0, 1, 1, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (203, N'San Pedro', N'1701 N Gaffey St San Pedro, CA 90731', N'(310) 507-6289', 33.760097, -118.293876, 0, 0, 0, 7)
GO
print 'Processed 200 total records'
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (204, N'San Ramon', N'2610 Bishop Dr San Ramon, CA 94583', N'(925) 277-0202', 37.7660201, -121.9687374, 1, 1, 1, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (205, N'Sand City', N'2040 California Ave Sand City, CA 93955', N'(831) 392-1990', 36.620927, -121.843113, 1, 1, 0, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (206, N'Santa Ana', N'1330 E 17th St Santa Ana, CA 92705', N'(714) 541-4593', 33.759, -117.850438, 1, 1, 1, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (207, N'Santa Ana', N'3300 S Bristol St Santa Ana, CA 92704', N'(714) 641-4944', 33.702849, -117.887263, 1, 0, 0, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (208, N'Santa Ana NW', N'1441 W 17th St Santa Ana, CA 92706', N'(714) 481-0030', 33.761498, -117.888022, 1, 1, 0, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (209, N'Santa Clarita East', N'19105 Golden Valley Rd Santa Clarita, CA 91387', N'(661) 977-5154', 34.394236, -118.464421, 0, 0, 0, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (210, N'Santa Fe Springs', N'10621 Carmenita Rd Santa Fe Springs, CA 90670', N'(562) 946-0851', 33.9386064, -118.0465918, 0, 1, 1, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (211, N'Santa Maria', N'223 E Betteravia Rd Santa Maria, CA 93454', N'(805) 922-9904', 34.922655, -120.433748, 1, 0, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (212, N'Santa Rosa South', N'1980 Santa Rosa Ave Santa Rosa, CA 95407', N'(707) 575-0665', 38.4204082, -122.713481, 0, 0, 0, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (213, N'Santee', N'9846 Mission Gorge Rd Santee, CA 92071', N'(619) 449-9790', 32.84197, -116.982485, 0, 0, 0, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (214, N'Seal Beach', N'12300 Seal Beach Blvd Seal Beach, CA 90740', N'(562) 596-9887', 33.78316, -118.071549, 1, 1, 0, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (215, N'Signal Hill', N'950 E 33rd St Signal Hill, CA 90755', N'(562) 427-7751', 33.816821, -118.182195, 0, 0, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (216, N'Simi Valley', N'2907 Cochran St Simi Valley, CA 93065', N'(805) 583-8933', 34.280566, -118.739525, 0, 0, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (217, N'Simi Valley West', N'51 Tierra Rejada Rd Simi Valley, CA 93065', N'(805) 416-5790', 34.2734632, -118.7979641, 1, 0, 0, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (218, N'South Gate', N'5700 Firestone Blvd South Gate, CA 90280', N'(562) 806-2911', 33.9483109, -118.167364, 0, 0, 0, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (219, N'Stockton', N'4707 Pacific Ave Stockton, CA 95207', N'(209) 476-8081', 37.991797, -121.314607, 0, 0, 1, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (220, N'Stockton North', N'10424 Trinity Parkway Stockton, CA 95219', N'(209) 235-0251', 38.051644, -121.372965, 0, 0, 0, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (221, N'Sunnyvale', N'298 W McKinley Ave Sunnyvale, CA 94086', N'(408) 702-1012', 37.373856, -122.0325382, 1, 1, 0, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (222, N'Rancho California', N'29676 Rancho California Rd Temecula, CA 92591', N'(951) 676-2668', 33.506297, -117.145988, 0, 1, 0, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (223, N'Thousand Oaks', N'2705 Teller Rd Thousand Oaks, CA 91320', N'(805) 480-9114', 34.1909717, -118.9342527, 1, 0, 0, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (224, N'Torrance', N'3433 Sepulveda Blvd Torrance, CA 90505', N'(310) 214-1561', 33.8250927, -118.3456564, 0, 0, 1, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (225, N'Tracy', N'2800 Naglee Rd Tracy, CA 95304', N'(209) 833-3494', 37.757531, -121.459637, 0, 0, 1, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (226, N'Tulare SuperTarget', N'2195 E Prosperity Ave Tulare, CA 93274', N'(559) 631-1128', 36.2257073, -119.3159798, 0, 1, 0, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (227, N'Turlock', N'3000 Countryside Dr Turlock, CA 95380', N'(209) 632-0132', 37.520525, -120.878747, 0, 1, 1, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (228, N'Tustin', N'2300 Park Ave Tustin, CA 92782', N'(714) 361-2100', 33.6988008, -117.8280849, 0, 1, 1, 6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (229, N'Upland', N'1931 Campus Ave Upland, CA 91784', N'(909) 985-0348', 34.13319, -117.640734, 0, 1, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (230, N'Vacaville', N'3000 Harbison Dr Vacaville, CA 95687', N'(707) 452-8053', 38.361061, -121.961703, 1, 0, 0, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (231, N'Valencia', N'24425 Magic Mountain Pkwy Valencia, CA 91355', N'(661) 254-8001', 34.4208961, -118.5619194, 0, 1, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (232, N'Vallejo', N'904 Admiral Callaghan Lane Vallejo, CA 94591', N'(707) 642-0419', 38.132053, -122.222686, 0, 0, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (233, N'Van Nuys', N'5711 Sepulveda Blvd Van Nuys, CA 91411', N'(818) 779-0163', 34.1749843, -118.4663691, 0, 0, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (234, N'Van Nuys North', N'14920 Raymer St Van Nuys, CA 91405', N'(818) 922-1001', 34.2132155, -118.4599458, 1, 0, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (235, N'Ventura', N'4200 E Main St Ventura, CA 93003', N'(805) 644-9871', 34.261619, -119.236528, 1, 1, 0, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (236, N'Ventura West', N'245 S Mills Rd Ventura, CA 93003', N'(805) 535-2752', 34.269945, -119.24904, 0, 0, 0, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (237, N'Victorville', N'15321 Palmdale Rd Victorville, CA 92392', N'(760) 241-3357', 34.506084, -117.328608, 1, 1, 1, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (238, N'Visalia', N'4247 S Mooney Blvd Visalia, CA 93277', N'(559) 749-0740', 36.292159, -119.316333, 0, 1, 0, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (239, N'Visalia North', N'3308 N Dinuba Blvd Visalia, CA 93291', N'(559) 302-1850', 36.3591962, -119.2968416, 0, 1, 0, 10.6)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (240, N'Vista', N'1751 University Dr Vista, CA 92083', N'(760) 941-0220', 33.1708601, -117.2215799, 1, 0, 1, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (241, N'Vista South', N'3150 Business Park Dr Vista, CA 92081', N'(760) 208-6111', 33.1356001, -117.2295305, 1, 0, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (242, N'Walnut Creek', N'1871 N Main St Walnut Creek, CA 94596', N'(925) 979-0083', 37.9047623, -122.0635547, 1, 1, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (243, N'Watsonville', N'1415 Main St Watsonville, CA 95076', N'(831) 761-9194', 36.9153341, -121.7744745, 0, 1, 1, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (244, N'West Covina', N'2831 E Eastland Ctr Dr West Covina, CA 91791', N'(626) 859-0221', 34.0730135, -117.8838331, 1, 0, 1, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (245, N'West Covina South', N'2370 S Azusa Ave West Covina, CA 91792', N'(626) 667-5400', 34.033482, -117.911373, 0, 1, 0, 4.712)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (246, N'West Hills', N'6635 Fallbrook Ave West Hills, CA 91307', N'(818) 999-2390', 34.190745, -118.626931, 1, 0, 0, 8.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (247, N'West Hollywood', N'7100 Santa Monica Blvd Ste 201 West Hollywood, CA 90046', N'(323) 603-0004', 34.0905707, -118.3445364, 1, 1, 1, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (248, N'West Sacramento', N'2005 Town Center Plz West Sacramento, CA 95691', N'(916) 384-0977', 38.550719, -121.53544, 1, 0, 0, 9.75)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (249, N'Westminster', N'16400 Beach Blvd Westminster, CA 92683', N'(714) 841-4449', 33.725541, -117.986254, 1, 0, 1, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (250, N'Westminster NW', N'200 Westminster Mall Westminster, CA 92683', N'(714) 657-1351', 33.745636, -118.012054, 1, 0, 0, 11.5)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (251, N'Whittier', N'15614 Whittwood Ln Whittier, CA 90603', N'(562) 371-9003', 33.943191, -117.996118, 1, 1, 0, 7)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (252, N'Woodland', N'2185 Bronze Star Dr Woodland, CA 95776', N'(530) 665-4148', 38.6699409, -121.7259571, 0, 0, 0, 9)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (253, N'Woodland Hills', N'20801 Ventura Blvd Woodland Hills, CA 91364', N'(818) 713-2707', 34.1665597, -118.5859438, 1, 1, 0, 3)
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Phone], [Latitude], [Longitude], [HasIndoor], [HasOutdoor], [HasStreet], [TaxRate]) VALUES (254, N'Yuba City', N'1153 Butte House Rd Yuba City, CA 95991', N'(530) 671-6881', 39.146183, -121.632758, 1, 0, 0, 9)
SET IDENTITY_INSERT [dbo].[Stores] OFF
/****** Object:  Table [dbo].[Categories]    Script Date: 11/30/2011 13:34:34 ******/
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
/****** Object:  Table [dbo].[Departments]    Script Date: 11/30/2011 13:34:34 ******/
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
/****** Object:  Table [dbo].[Items]    Script Date: 11/30/2011 13:34:34 ******/
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
	[Price] [money] NOT NULL,
	[Discount] [money] NULL,
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
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (2, N'Alpha Industries Men''s Slim Fit N-3B Parka', N'blah blah blah', 13.0200, NULL, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (3, N'Hanes® Men''s Crew-Neck Sweatshirt - Charcoal', N'Sizing: Men with a Regular Fit\nGarment Detail: Tagless\nMaterial: 52 % Cotton, 48 % Polyester\nNeckline Style: Crew Neckline\nSleeve Style: Long Sleeves\nClosure Style: Pullover Closures\nHem Style: Straight Hems\nCare and Cleaning: Machine Wash Cold, Tumble Dry Low', 7.4900, NULL, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (5, N'Hanes® Men''s Crew-Neck Sweatshirt - Black', N'Sizing: Men with a Regular Fit\nGarment Detail: Tagless\nMaterial: 52 % Cotton, 48 % Polyester\nNeckline Style: Crew Neckline\nSleeve Style: Long Sleeves\nClosure Style: Pullover Closures\nHem Style: Straight Hems\nCare and Cleaning: Machine Wash Cold, Tumble Dry Low', 9.4900, NULL, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (6, N'Mossimo Supply Co. Men''s Thermal Shirt', N'Sizing: Men with a Athletic Fit\nMaterial: 100 % Cotton\nNeckline Style: Crew Neckline\nSleeve Style: Long Sleeves\nClosure Style: Pullover Closures\nHem Style: Straight Hems\nCare and Cleaning: Machine Wash Cold, Tumble Dry Low', 16.9900, NULL, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (7, N'Hanes® Men''s Crew-Neck Sweatshirt - Navy', N'Sizing: Men with a Regular Fit\nGarment Detail: Tagless\nMaterial: 52 % Cotton, 48 % Polyester\nNeckline Style: Crew Neckline\nSleeve Style: Long Sleeves\nClosure Style: Pullover Closures\nHem Style: Straight Hems\nCare and Cleaning: Tumble Dry Low, Machine Wash Cold', 16.9900, 11.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (8, N'Hanes® Men''s Crew-Neck Sweatshirt - Grey', N'Sizing: Men with a Regular Fit\nGarment Detail: Tagless\nMaterial: 52 % Cotton, 48 % Polyester\nNeckline Style: Crew Neckline\nSleeve Style: Long Sleeves\nClosure Style: Pullover Closures\nHem Style: Straight Hems\nCare and Cleaning: Tumble Dry Low, Machine Wash Cold', 22.4900, 18.6900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (9, N'Mossimo Supply Co. Men''s Hoodie', N'Sizing: Men with a Casual Fit\nGarment Detail: Fully Lined\nMaterial: 100 % Polyester\nNeckline Style: Hooded Neckline , Hooded Collar\nSleeve Style: Long Sleeves\nClosure Style: Zip Front Closures\nPocket Style: 2 Front Pockets\nHem Style: Straight Hems\nCare and Cleaning: Tumble Dry Low, Machine Wash Cold', 27.9900, NULL, 1, 2)
SET IDENTITY_INSERT [dbo].[Items] OFF
/****** Object:  Table [dbo].[Orders]    Script Date: 11/30/2011 13:34:34 ******/
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
/****** Object:  Table [dbo].[OrderItems]    Script Date: 11/30/2011 13:34:34 ******/
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
/****** Object:  Table [dbo].[StoreItems]    Script Date: 11/30/2011 13:34:34 ******/
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
/****** Object:  Table [dbo].[Ratings]    Script Date: 11/30/2011 13:34:34 ******/
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
/****** Object:  Table [dbo].[Pictures]    Script Date: 11/30/2011 13:34:34 ******/
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
/****** Object:  Table [dbo].[Comments]    Script Date: 11/30/2011 13:34:34 ******/
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
/****** Object:  Default [DF_Users_Name]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Users_Street]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Street]  DEFAULT ('') FOR [Street]
GO
/****** Object:  Default [DF_Users_City]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_City]  DEFAULT ('') FOR [City]
GO
/****** Object:  Default [DF_Users_State]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_State]  DEFAULT ('') FOR [State]
GO
/****** Object:  Default [DF_Users_ZipCode]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_ZipCode]  DEFAULT ('') FOR [ZipCode]
GO
/****** Object:  Default [DF_Users_Country]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Country]  DEFAULT ('') FOR [Country]
GO
/****** Object:  Default [DF_Stores_Name]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Stores_Address]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_Address]  DEFAULT ('') FOR [Address]
GO
/****** Object:  Default [DF_Stores_HasIndoor]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_HasIndoor]  DEFAULT ((0)) FOR [HasIndoor]
GO
/****** Object:  Default [DF_Stores_HasOutdoor]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_HasOutdoor]  DEFAULT ((0)) FOR [HasOutdoor]
GO
/****** Object:  Default [DF_Stores_HasStreet]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_HasStreet]  DEFAULT ((0)) FOR [HasStreet]
GO
/****** Object:  Default [DF_Stores_TaxRate]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_TaxRate]  DEFAULT ((0)) FOR [TaxRate]
GO
/****** Object:  Default [DF_Categories_Name]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Departments_Name]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Items_Name]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Items_Description]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_Description]  DEFAULT ('') FOR [Description]
GO
/****** Object:  Default [DF_Orders_Time]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Time]  DEFAULT (getdate()) FOR [Time]
GO
/****** Object:  Default [DF_Orders_Price]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Price]  DEFAULT ((-1)) FOR [Price]
GO
/****** Object:  Default [DF_OrderItems_Quantity]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF_OrderItems_Quantity]  DEFAULT ((-1)) FOR [Quantity]
GO
/****** Object:  Default [DF_OrderItems_Price]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF_OrderItems_Price]  DEFAULT ((-1)) FOR [Price]
GO
/****** Object:  Default [DF_Ratings_Rate]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Ratings] ADD  CONSTRAINT [DF_Ratings_Rate]  DEFAULT ((0)) FOR [Rate]
GO
/****** Object:  Default [DF_Comments_Title]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF_Comments_Title]  DEFAULT ('') FOR [Title]
GO
/****** Object:  Default [DF_Comments_Text]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF_Comments_Text]  DEFAULT ('') FOR [Text]
GO
/****** Object:  ForeignKey [FK_Items_Categories]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Categories]
GO
/****** Object:  ForeignKey [FK_Items_Departments]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Departments]
GO
/****** Object:  ForeignKey [FK_Orders_Users]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
/****** Object:  ForeignKey [FK_OrderItems_Items]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Items]
GO
/****** Object:  ForeignKey [FK_OrderItems_Orders]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders]
GO
/****** Object:  ForeignKey [FK_StoreItems_Items]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[StoreItems]  WITH CHECK ADD  CONSTRAINT [FK_StoreItems_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[StoreItems] CHECK CONSTRAINT [FK_StoreItems_Items]
GO
/****** Object:  ForeignKey [FK_StoreItems_Stores]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[StoreItems]  WITH CHECK ADD  CONSTRAINT [FK_StoreItems_Stores] FOREIGN KEY([StoreId])
REFERENCES [dbo].[Stores] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StoreItems] CHECK CONSTRAINT [FK_StoreItems_Stores]
GO
/****** Object:  ForeignKey [FK_Ratings_Items]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Items]
GO
/****** Object:  ForeignKey [FK_Ratings_Users]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Users]
GO
/****** Object:  ForeignKey [FK_Pictures_Items]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Pictures]  WITH CHECK ADD  CONSTRAINT [FK_Pictures_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Pictures] CHECK CONSTRAINT [FK_Pictures_Items]
GO
/****** Object:  ForeignKey [FK_Comments_Items]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Items]
GO
/****** Object:  ForeignKey [FK_Comments_Users]    Script Date: 11/30/2011 13:34:34 ******/
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users]
GO
