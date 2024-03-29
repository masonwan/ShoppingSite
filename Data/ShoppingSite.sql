USE [master]
GO
/****** Object:  Database [ShoppingSite]    Script Date: 12/03/2011 12:54:13 ******/
CREATE DATABASE [ShoppingSite] ON  PRIMARY 
( NAME = N'ShoppingSite', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ShoppingSite.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShoppingSite_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ShoppingSite_log.ldf' , SIZE = 1536KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[Users]    Script Date: 12/03/2011 12:54:17 ******/
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
/****** Object:  Table [dbo].[Stores]    Script Date: 12/03/2011 12:54:17 ******/
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
/****** Object:  Table [dbo].[Departments]    Script Date: 12/03/2011 12:54:17 ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 12/03/2011 12:54:17 ******/
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
/****** Object:  Table [dbo].[Orders]    Script Date: 12/03/2011 12:54:17 ******/
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
/****** Object:  Table [dbo].[Items]    Script Date: 12/03/2011 12:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
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
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (2, N'Alfani Suit, Solid Black Trio Suit with Extra Pant', N'<div id="longDescription" class="longDescription">
	CNeed more versatility from your tailored wardrobe? This solid charcoal suit from Alfani comes with two pairs of flat front pants.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool; polyester</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>Jacket: notch lapel; chest pocket, two buttoned front, flap pockets, side vents</li>
  
    <li>Pants: buttoned hook closure, zipper fly, flat front, side pockets, unfinished hem, back pockets</li>
  
    <li>You will receive two pairs of pants with this suit.</li>
  
  
  

</ul>', 495.0000, 189.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (3, N'Calvin Klein Suit, Black Solid ', N'<div id="longDescription" class="longDescription">
	Clean lines and modern minimalism set this sleek Calvin Klein suit apart from the rest of the competition.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>Jacket: two button front, notch lapel, chest pocket, flap pockets at side, side vents</li>
  
    <li>Pants: flat front, buttoned hook closure, buttoned back pockets, unfinished hem</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
    
      <li><a class="bulletLinks" href="javascript:pop(''/popup/r67x38_Calvin_Klein_reg_guide.jsp'',''myDynaPop'',''width=640,scrollbars=yes,height=720'')">Click here for the Calvin Klein suit fit guide.</a></li>
    
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (4, N'Alfani Suit, Tan Solid', N'<div id="longDescription" class="longDescription">
	A smart addition to your spring and summer wardrobes, this lightweight Alfani tan suit helps you coordinate with a vibrant seasonal color palette.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool; cashmere</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>Jacket: notch lapel, chest pocket, two button front, flap pockets at side, side vents</li>
  
    <li>Pants: single pleat, buttoned hook and zipper closure, on-seam pockets, buttoned back pockets, unfinished hem</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
  

</ul>', 495.0000, 214.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (5, N'Alfani Suit, Charcoal TRIO With Extra Pant', N'<div id="longDescription" class="longDescription">
	Need more versatility from your tailored wardrobe? This solid charcoal suit from Alfani comes with two pairs of flat front pants.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool; polyester</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>Jacket: notch lapel, chest pocket, two button front, front flap pockets, side vents</li>
  
    <li>Pants: buttoned hook and zipper closure, flat front, buttoned back pockets, unfinished hem</li>
  
    <li>You will receive two pairs of flat front pants with this suit</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
  

</ul>', 495.0000, 189.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (6, N'Izod Suit, Black Tuxedo', N'<div id="longDescription" class="longDescription">
	Adding plenty of polish to your formal wardrobe, this sophisticated black Tuxedo by Izod combines clean lines and flawless attention to detail.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; rayon</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>Jacket: Notch lapel, two button front, chest pocket, flap pockets at chest, center vent</li>
  
    <li>Pants: double pleated pants, off-seam pockets, buttoned hook and zipper closure, buttoned back pockets, unfinished hem</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=41&channel_id=1&bundle_entryPath=/products.html">Check out the IZOD for INDY collection &amp; Podcasts</a></li>
    
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
  

</ul>', 350.0000, 149.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (7, N'DKNY Suit, Navy Solid Slim Fit', N'<div id="longDescription" class="longDescription">
	Dark and dynamic. This sleek DKNY suit is a go-to look for your tailored wardrobe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>7 inch drop (Subtract 7 inches from your jacket size to determine your pant size)</li>
  
    <li>Jacket: notch lapel, chest pocket, two button front, flap pockets at side, side vents</li>
  
    <li>Pants: flat front, buttoned hook closure with zipper fly, off-seam pockets, buttoned back pockets, unfinished hem</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
  

</ul>', 650.0000, 314.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (8, N'Alfani Suit, Luxury Navy Two Button', N'<div id="longDescription" class="longDescription">
	Strike the right balance between classic sophisticated and modern style with this smooth navy suit from Alfani.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool/cashmere</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>Jacket: notch lapel, two button, chest pocket, front flap pockets, side vents, fully lined</li>
  
    <li>Pants: flat front, zip fly with extended tab waistband, hook-and-bar closure, on-seam front pockets, back besom pockets, unfinished bottom.</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
  

</ul>', 495.0000, 214.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (9, N'Alfani Suit, Luxury Black Two Button', N'<div id="longDescription" class="longDescription">
	Versatile enough to combine classic sophistication with modern style, this smooth black suit from Alfani is a dependable part of your dressed-up wardrobe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool/cashmere</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>Jacket: notch lapel, two button, chest pocket, front flap pockets, side vents, fully lined</li>
  
    <li>Pant: Flat Front, zip fly with extended tab waistband, hook-and-bar closure, on-seam front pockets, back besom pockets, unfinished bottom</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
  

</ul>', 495.0000, 214.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (10, N'DKNY Suit, Charcoal Solid Slim Fit', N'<div id="longDescription" class="longDescription">
	Not sure if the suit makes the man? Try on this sleek slim-fit style and see if you don''t feel like a winner.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>7 inch drop (Subtract 7 inches from your jacket size to determine your pant size)</li>
  
    <li>Flat front trouser</li>
  
    <li>Jacket: 2 button-front, side-vented, notch lapel</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
  

</ul>', 650.0000, 314.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (11, N'Lauren by Ralph Lauren Suit, 2-Button Charcoal Wool', N'<div id="longDescription" class="longDescription">
	Simplicity, style, and sophistication all at once, in a traditional charcoal color with an edge that is unmistakably modern. Two-button closure jacket features a notched lapel, two front flap pockets, front welt pocket, three inside slit pockets and four-button cuff detail. Pleated pant features back slit pockets and a slimming fit for extra versatility.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry Clean</li>
  
    <li>Imported</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
    
      <li><a class="bulletLinks" href="javascript:pop(''/popup/r69x42_lauren_suit_fit_guide.jsp'',''myDynaPop'',''width=640,scrollbars=yes,height=680'')">Click here for the Lauren Ralph Lauren tailored fit guide.</a></li>
    
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (12, N'Lauren by Ralph Lauren Suit, 2-Button Navy Wool', N'<div id="longDescription" class="longDescription">
	An impressive suit for the impressive man. Two-button jacket features notched lapel, two front flap pockets, two inside slit pockets and four button cuff detail. Pleated pant has back slit pockets, single back vent.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
    
      <li><a class="bulletLinks" href="javascript:pop(''/popup/r69x42_lauren_suit_fit_guide.jsp'',''myDynaPop'',''width=640,scrollbars=yes,height=680'')">Click here for the Lauren Ralph Lauren tailored fit guide.</a></li>
    
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (13, N'Lauren By Ralph Lauren Tuxedo, Black', N'<div id="longDescription" class="longDescription">
	Elegantly simple, this sophisticated two-button tuxedo is a classic choice for black-tie affairs. Traditionally tailored, the jacket features satin-covered buttons, a notched satin lapel, chest welt pocket and front flap pockets with satin besoms. No back vent. Double reverse-pleated pant has on-seam pockets, suspender buttons instead of belt loops and satin braids on the side seam. Back besom pockets.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>2 Button Jacket</li>
  
    <li>Double Pleat pants</li>
  
    <li>Features a six inch drop. Example: Size 40 jacket is matched with pant with 34&#034; waist.</li>
  
    <li>Formalwear must be returned within 30 days of receipt with valid proof of purchase and all tags attached. Worn or altered garments may not be returned.</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
    
      <li><a class="bulletLinks" href="javascript:pop(''/popup/r69x42_lauren_suit_fit_guide.jsp'',''myDynaPop'',''width=640,scrollbars=yes,height=680'')">Click here for the Lauren Ralph Lauren tailored fit guide.</a></li>
    
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (14, N'Lauren by Ralph Lauren Suit, Two-Button Navy Stripe Wool/Cashmere', N'<div id="longDescription" class="longDescription">
	A traditional suit marked by unexpected luxury. Woven in a fine, comfy wool, this two-button suit has a soft feel an handsome drape. Jacket features a notched lapel, chest welt pocket and front flap pockets. Four-button detail at cuff. Center back vent. Double-reverse pleated pant has quarter-top front pockets for a modern touch. Zip fly with extended-tab closure. Back besom pockets. Unfinished hem. Jacket and pant sold together.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Suits must be returned within 30 days of receipt with valid proof of purchase and all tags attached. Worn or altered garments may not be returned.</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
    
      <li><a class="bulletLinks" href="javascript:pop(''/popup/r69x42_lauren_suit_fit_guide.jsp'',''myDynaPop'',''width=640,scrollbars=yes,height=680'')">Click here for the Lauren Ralph Lauren tailored fit guide.</a></li>
    
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (15, N'Alfani Red Jacket, Charcoal Stripe Slim Fit', N'<div id="longDescription" class="longDescription">
	Kick your dress wardrobe up a notch. This slim-fit blazer from Alfani Red has the most modern fit.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Alfani Red suit jacket</li>
  
    <li>Slim fit</li>
  
    <li>Charcoal stripe</li>
  
    <li>Two-button closure; peak lapels; side vents</li>
  
  
  

</ul>', 360.0000, 169.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (16, N'Tallia Orange Suit, Brown Flannel Plaid ', N'<div id="longDescription" class="longDescription">
	Blending the two best looks of the season, this suit from Tallia makes for a easy style statement.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/rayon</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>Tallia Orange brown flannel plaid suit</li>
  
    <li>Jacket: Notched lapel; two-button fornt</li>
  
    <li>Pants: Flat front</li>
  
  
  

</ul>', 650.0000, 279.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (17, N'Tallia Orange Suit, Navy Neat ', N'<div id="longDescription" class="longDescription">
	Ever-so-sharp, this navy suit from Tallia refines your style while keeping your look thoroughly modern.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/rayon</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Tallia Orange navy neat suit</li>
  
    <li>Jacket: Two-button closure; notched lapel; ticket pockets</li>
  
    <li>Jacket: Hook-and-zip closure; flat front</li>
  
  
  

</ul>', 650.0000, 219.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (18, N'Calvin Klein BODY Suit, Gray Sharkskin Slim Fit', N'<div id="longDescription" class="longDescription">
	Gray matters. Think outside the black box with this slim-fit gray suit from Calvin Klein.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Calvin Klein BODY slim-fit suit</li>
  
    <li>Gray sharskin</li>
  
    <li>Jacket: Two-button; peak lapel; ticket pockets; side vents</li>
  
    <li>Pants: Flat front</li>
  
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (19, N'Calvin Klein BODY Suit, Black Stripe Slim Fit', N'<div id="longDescription" class="longDescription">
	Show you mean business. This black slim-fit suit from Calvin Klein is the perfect foundation for a patterned shirt or tie.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Black striped slim-fit suit from Calvin Klein</li>
  
    <li>Jacket: Peak lapel; two-button front; side vents</li>
  
    <li>Pants: Flat front</li>
  
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (20, N'Lauren by Ralph Lauren Suit, Charcoal Pindot', N'<div id="longDescription" class="longDescription">
	Subtle sophistication. This charcoal pindot suit from Lauren by Ralph Lauren is always a classic.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Lauren by Ralph Lauren suit</li>
  
    <li>Charcoal pindot</li>
  
    <li>Jacket: Two-button front; notch lapel; ticket pockets</li>
  
    <li>Pants: Double pleat</li>
  
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (21, N'Lauren by Ralph Lauren Suit, Brown Olive Plaid', N'<div id="longDescription" class="longDescription">
	Brown can do a lot for you. This plaid suit from Lauren by Ralph Lauren cuts a classic figure in a dashing color.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Lauren by Ralph Lauren regular-fit suit</li>
  
    <li>Brown and olive plaid</li>
  
    <li>Jacket: Two-button front; notch lapel; center vent</li>
  
    <li>Pants: Double pleat</li>
  
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (22, N'Calvin Klein X Suit, Black Solid Slim Fit', N'<div id="longDescription" class="longDescription">
	You can never go wrong with a classic black suit. This version from Calvin Klein gets a modern slim fit.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Calvin Klein slim-fit suit</li>
  
    <li>Jacket: Two-button closure; notch lapel; ticket pockets</li>
  
    <li>Pants: Flat front</li>
  
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (23, N'Calvin Klein X Suit, Grey Pinstripe Slim Fit', N'<div id="longDescription" class="longDescription">
	Show some steel. This gray pinstriped suit from Calvin Klein makes the right power move.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Calvin Klein slim-fit suit</li>
  
    <li>Gray pinstripe</li>
  
    <li>Jacket: Two-button front; peak lapel; ticket pockets</li>
  
    <li>Pants: Flat front</li>
  
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (24, N'Calvin Klein Suit, Brown Pindot Slim Fit', N'<div id="longDescription" class="longDescription">
	Slim down your silhouette with this trim fit suit from Calvin Klein.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool/silk</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Calvin Klein slim-fit suit</li>
  
    <li>Brown pindot</li>
  
    <li>Jacket: Two-button front; peak lapel</li>
  
    <li>Pants: Flat front</li>
  
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (25, N'DKNY Suit, Grey Sharkskin Slim Fit', N'<div id="longDescription" class="longDescription">
	In a cool gray palette, this sleek trim-fit suit from DKNY lightens your look while maintaining strength and sophistication.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>DKNY trim fit suit </li>
  
    <li>Jacket: Two-button closure; notch lapel; side vent</li>
  
    <li>Pants: Flat-front; zip fly with button-through back pocket</li>
  
  
  

</ul>', 650.0000, 314.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (26, N'Tommy Hilfiger Suit, Navy Pin Dot Slim Fit', N'<div id="longDescription" class="longDescription">
	Hit all the right notes in your dress wardrobe with this Tommy Hilfiger slim-fit pin dot suit.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool/polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Tommy Hilfiger trim fit suit</li>
  
    <li>Navy pin dot</li>
  
    <li>Jacket: Two-button front; notched lapel</li>
  
    <li>Pants: Flat front; button-through back pocket</li>
  
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (27, N'Tommy Hilfiger Suit, Gray Sharkskin Slim Fit', N'<div id="longDescription" class="longDescription">
	In sleek gray sharkskin, this Tommy Hilfiger suit gives your dress wardrobe an modern update.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Tommy Hilfiger suit</li>
  
    <li>Jacket: Two-button closure; side vents; notched lapel; kissing buttons on sleeves</li>
  
    <li>Pants: Flat front; hook-and-eye closure</li>
  
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (28, N'Tasso Elba Suit, Black Solid', N'<div id="longDescription" class="longDescription">
	Powerful polish and endless comfort offer plenty of can-do attitude for any guy with an executive state of mind.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>90% Wool, 10% Cashmere</li>
  
    <li>Dry Clean Only</li>
  
    <li>Imported</li>
  
    <li>Jacket: Center vent, chest pocket, two button front, </li>
  
    <li>Pants: Double pleat front</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
  

</ul>', 595.0000, 199.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (29, N'Calvin Klein Suit, Charcoal Solid ', N'<div id="longDescription" class="longDescription">
	Versatile, stylish and endlessly comfortable, this solid Calvin Klein suit is the foremost choice for any modern man''s tailored wardrobe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool </li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>Jacket: two button front, notch lapel, chest pocket, flap side pockets, side vent</li>
  
    <li>Pants: flat front, buttoned hook closure, buttoned back pockets, unfinished hem</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
    
      <li><a class="bulletLinks" href="javascript:pop(''/popup/r67x38_Calvin_Klein_reg_guide.jsp'',''myDynaPop'',''width=640,scrollbars=yes,height=720'')">Click here for the Calvin Klein suit fit guide.</a></li>
    
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (30, N'Jones NY Suit, Charcoal Solid ', N'<div id="longDescription" class="longDescription">
	Clean lines and a sleek construction make this charcoal Jones NY suit the perfect choice for the modern man.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>Jacket: notch lapel, two button front, chest pocket, flap side pockets, side vents</li>
  
    <li>Pants: single pleated, buttoned hook and zipper closure, on-seam pockets, buttoned back pockets, unfinished hem</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
  

</ul>', 495.0000, 219.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (31, N'Jones NY Suit, Charcoal Stripe Athletic Fit', N'<div id="longDescription" class="longDescription">
	Tired of finding suits that are too loose or too tight? This athletic fit suit from Jones NY fits just right.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool/microfiber</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>Athletic fit</li>
  
    <li>Jacket: notch lapel, chest pocket, Two button front, two flap pockets at side, side vents</li>
  
    <li>Pants: Buttoned hook and zipper closure, on-seam front pockets, buttoned back pockets, unfinished hem</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
  

</ul>', 495.0000, 219.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (32, N'DKNY Tuxedo, Black Slim Fit', N'<div id="longDescription" class="longDescription">
	Take your tailored wardrobe to the next level and turn to the timeless polish of this black tuxedo from DKNY.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool/polyester</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>Jacket:Notch lapel, chest pocket, two button front, flap pockets at side, side vents</li>
  
    <li>Pants: flat front, buttoned hook closure with zipper fly, off-seam pockets, buttoned back pockets, unfinished hem, fabric trim along sides</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
  

</ul>', 650.0000, 349.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (33, N'Alfani Suit, Luxury Black Stripe Two Button ', N'<div id="longDescription" class="longDescription">
	Made from a luxurious blend of fine wool and silk, this elegant suit features expert tailoring and a beautiful detailed lining. It is designed for the man who prizes sophistication and versatility.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool/silk/polyester</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>Jacket: notch lapel, two button closure, chest pocket, front flap pockets, side vents, fully lined</li>
  
    <li>Pants: flat front, zip fly with extended tab waistband, hook-and-bar closure, on-seam front pockets, back besom pockets, unfinished bottom.</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
  

</ul>', 495.0000, 214.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (34, N'DKNY Suit, Black Solid Slim Fit', N'<div id="longDescription" class="longDescription">
	Whether your office is on Wall Street or Main Street, this sleek, slim-fit suit from DKNY offers all the modern attitude you need.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>7 inch drop (Subtract 7 inches from your jacket size to determine your pant size)</li>
  
    <li>Flat front trouser</li>
  
    <li>Jacket: 2 button front, side-vented, notch lapel</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
  

</ul>', 650.0000, 314.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (35, N'Jones New York Suit, Navy Wool', N'<div id="longDescription" class="longDescription">
	Timeless sophistication and formal style go hand in hand with this navy wool suit.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>Two button closure</li>
  
    <li>No vent</li>
  
    <li>Single pleat pant</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
  

</ul>', 495.0000, 219.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (36, N'Jones New York Suit, Charcoal Stripe Wool', N'<div id="longDescription" class="longDescription">
	Add a little bit of classic style to your collection of suits and turn to this charcoal stripe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>Two buttons</li>
  
    <li>Side vent</li>
  
    <li>Single pleat pant</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
  

</ul>', 495.0000, 219.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (37, N'Calvin Klein Suit, Black Stripe', N'<div id="longDescription" class="longDescription">
	Traditional masculine style with a distinctly modern head-turning edge. In an allover black stripe pattern, with three-button style jacket and flat-front pant that can easily be worn on its own for a less formal look. Jacket features a notched lapel, chest welt pocket, two flap pockets, three inside slit pockets and four button cuff detail. Pant features on-seam front pockets and back slit pockets with button closure.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry Clean</li>
  
    <li>Imported</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
    
      <li><a class="bulletLinks" href="javascript:pop(''/popup/r67x38_Calvin_Klein_reg_guide.jsp'',''myDynaPop'',''width=640,scrollbars=yes,height=720'')">Click here for the Calvin Klein suit fit guide.</a></li>
    
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (38, N'Calvin Klein Suit, Black Tuxedo', N'<div id="longDescription" class="longDescription">
	Exquisitely tailored in a fine serge wool, this elegantly modern tuxedo combines classic style with modern details for formal look that''s not fussy. Sophisticated, fully lined three-button jacket features a notched satin lapel, chest welt pocket, front flap pockets with satin besom, three interior pockets and four-button detail at cuff. All buttons are satin covered for a subtle sheen. No back vent. Single-pleat pant features zip fly with extended tab closure, on-seam pockets, suspender buttons and an elegant satin side stripe. Unfinished hem. Jacket and pant sold together.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>3 Button Jacket</li>
  
    <li>Formalwear must be returned within 30 days of receipt with valid proof of purchase and all tags attached. Worn or altered garments may not be returned.</li>
  
    <li>Pleated pants</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
    
      <li><a class="bulletLinks" href="javascript:pop(''/popup/r67x38_Calvin_Klein_reg_guide.jsp'',''myDynaPop'',''width=640,scrollbars=yes,height=720'')">Click here for the Calvin Klein suit fit guide.</a></li>
    
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (39, N'Lauren by Ralph Lauren Suit, Two-Button Grey Stripe Wool', N'<div id="longDescription" class="longDescription">
	This smartly striped grey suit is handsomely tailored and perfect for the boardroom. Woven high quality wool, it has a fine feel and classic drape. Jacket features a notched lapel, chest welt pocket and front flap pockets. Four-button detail at cuff. Center back vent. Double-reverse pleated pant has quarter-top front pockets for a modern touch. Zip fly with extended-tab closure. Back besom pockets. Unfinished hem. Jacket and pant sold together.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Suits must be returned within 30 days of receipt with valid proof of purchase and all tags attached. Worn or altered garments may not be returned.</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=159&channel_id=1">check out the men&#039;s guide to style</a></li>
    
  
    
      <li><a class="bulletLinks" href="javascript:pop(''/popup/r69x42_lauren_suit_fit_guide.jsp'',''myDynaPop'',''width=640,scrollbars=yes,height=680'')">Click here for the Lauren Ralph Lauren tailored fit guide.</a></li>
    
  
  

</ul>', 650.0000, 299.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (40, N'Tasso Elba Suit, Navy Windowpane Slim Fit', N'<div id="longDescription" class="longDescription">
	Cool blue. This slim-fit suit from Tasso Elba adds a note of classic navy to your dress wardrobe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Wool</li>
  
    <li>Dry clean only</li>
  
    <li>Imported</li>
  
    <li>Tasso Elba slim-fit suit</li>
  
    <li>Navy windowpane</li>
  
    <li>Jacket: two-button closure; notch lapel</li>
  
    <li>Pants: Flat front; hook-and-button closure and zip fly; button-through back pocket</li>
  
  
  

</ul>', 595.0000, 199.9900, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (41, N'INC International Concepts Pants, Pope Tip Plaid Slim Fit Pants', N'<div id="longDescription" class="longDescription">
	Distinguish your dress style with these tony plaid pants from INC International Concepts.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/rayon</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Plaid pants from INC International Concepts</li>
  
    <li>Slim fit; piping</li>
  
    <li>Zip-and-clasp closure; button-down back pockets</li>
  
    <li>For matching vest: Web ID 632515; For matching blazer: Web ID 632514</li>
  
  
  

</ul>', 59.5000, NULL, 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (42, N'Club Room Shirt, Long Sleeve Poplin Assorted Woven Shirts', N'<div id="longDescription" class="longDescription">
	Button up you business look with these assorted dress shirts in lively colors and classic patterns from Club Room.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Men&#039;s long-sleeved button-front shirts from Club Room</li>
  
    <li>All over pattern; pocket on chest</li>
  
  
  

</ul>', 39.5000, 24.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (43, N'Izod Shirt, Double Pocket Solid', N'<div id="longDescription" class="longDescription">
	Do yourself a solid and pick up this classic casual Izod shirt for a sleek start to your out-of-office outfits.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Izod button-front shirt</li>
  
    <li>Two buttoned flap pockets at chest</li>
  
    <li>Classic fit</li>
  
    <li>Exposed stitching</li>
  
  
  

</ul>', 68.0000, 24.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (44, N'AJ Izod Shirt, Slim Fit Checked Shirt', N'<div id="longDescription" class="longDescription">
	Plaid man. Shake up your shirt collection with this slim-fit Izod style.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>AJ Izod shirt</li>
  
    <li>Slim fit; check pattern</li>
  
    <li>Chest pocket</li>
  
  
  

</ul>', 78.0000, 24.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (45, N'AJ. Izod Shirt, Slim Fit Classic Striped Shirt', N'<div id="longDescription" class="longDescription">
	Look sharp in a slimmed down style with the sleek and trim fit of this striped AJ Izod shirt.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>AJ Izod shirt</li>
  
    <li>Slim fit; striped</li>
  
    <li>Long sleeves; button front</li>
  
    <li>Stiff collar and French cuffs with knot cufflinks</li>
  
    <li>Chest pocket</li>
  
  
  

</ul>', 68.0000, 24.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (46, N'INC International Concepts Shirt, Long Sleeve Anthracite Shirt', N'<div id="longDescription" class="longDescription">
	A perfect combination of seasonal colors, this shirt from INC is ready to be you night-out go to.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Button-front shirt from INC International Concepts</li>
  
    <li>Striped</li>
  
    <li>Notch cuffs; point collar</li>
  
  
  

</ul>', 49.5000, 39.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (47, N'Tasso Elba Shirt, Long Sleeve Corduroy Shirt', N'<div id="longDescription" class="longDescription">
	With timeless rugged style, the corduroy shirt is a staple of any man''s seasonal apparel and this long-sleeved version from Tasso Elba will be a fall favorite.   
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/nylon/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Tasso Elba corduroy shirt</li>
  
    <li>Long-sleeved; button-front; chest pocket</li>
  
  
  

</ul>', 49.5000, 34.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (48, N'Alfani Shirt, Graphic Thermal', N'<div id="longDescription" class="longDescription">
	With a cool graphic design, this thermal shirt from Alfani goes from layering piece to style statement.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/cotton</li>
  
    <li>Machine washable</li>
  
    <li>Made in USA</li>
  
    <li>Crew-neck thermal shirt from Alfani</li>
  
    <li>x</li>
  
    <li>Graphic on front</li>
  
    <li>Long sleeves</li>
  
  
  

</ul>', 39.5000, 29.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (49, N'No Retreat Shirt, Black Label Ready', N'<div id="longDescription" class="longDescription">
	Pairing has never been easier. With an attached tie, this shirt from No Retreat is ready to go.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Button-front shirt from No Retreat</li>
  
    <li>Two chest pockets</li>
  
    <li>Button tabs on sleeves for roll-up sleeves</li>
  
    <li>Attached tie</li>
  
  
  

</ul>', 40.0000, 29.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (50, N'No Retreat Shirt, Black Label Addicted Shirt with Tie', N'<div id="longDescription" class="longDescription">
	Keep it easy. This shirt and tie combo from No Retreat is a cool, casual look that does all the work for you.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>No Retreat shirt comes with tie included</li>
  
    <li>Two chest pockets</li>
  
    <li>Buttoned tabs on sleeves for stay-put cuffs</li>
  
  
  

</ul>', 40.0000, 29.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (51, N'INC International Concepts Shirt, Gilmour Plaid', N'<div id="longDescription" class="longDescription">
	Plaid perfect. This shirt from INC International Concepts is the right way to greet the weekend.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Snap-front shirt from INC International Concepts</li>
  
    <li>Plaid</li>
  
    <li>Spread collar; snap cuffs; snap pockets</li>
  
  
  

</ul>', 39.9800, NULL, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (52, N'INC International Concepts Shirt, Topstitch Shirt', N'<div id="longDescription" class="longDescription">
	Get your weekend look all buttoned up with this sweet shirt from INC International Concepts.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Button-front shirt from INC International Concepts</li>
  
    <li>Topstitching</li>
  
    <li>Spread collar</li>
  
  
  

</ul>', 49.5000, 39.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (53, N'Van Heusen Big and Tall Shirt, No Iron Striped Shirt', N'<div id="longDescription" class="longDescription">
	A smart stripe and an even smarter wrinkle-free fabric make this Van Heusen button-front shirt a favorite in your weekday rotation.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Button-front Van Heusen shirt</li>
  
    <li>No-iron fabric; striped</li>
  
    <li>Buttoned cuffs</li>
  
  
  

</ul>', 60.0000, 24.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (54, N'Izod Big and Tall Shirt, Essential Check Button Down Shirt', N'<div id="longDescription" class="longDescription">
	A classic staple for every man''s closet, this button-down shirt from Izod features a smart check pattern for polished sophistication.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Izod shirt</li>
  
    <li>Check pattern</li>
  
    <li>Long sleeves; button front; button-down collar</li>
  
  
  

</ul>', 65.0000, 34.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (55, N'Club Room Shirt, Solid Oxford', N'<div id="longDescription" class="longDescription">
	With subtle contrast, this shirt from Club Room updates your stock of oxfords with sophisticated style.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine wash</li>
  
    <li>Imported</li>
  
    <li>Button-front shirt from Club Room</li>
  
    <li>Button cuffs with contrast lining</li>
  
  
  

</ul>', 39.5000, 24.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (56, N'Club Room Shirt, Estate Tartan Plaid Shirt', N'<div id="longDescription" class="longDescription">
	Pick your plaid. These handsome button-down shirts from Club Room feature an assortment of heritage tartans.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Club Room shirt</li>
  
    <li>Tartan plaid</li>
  
    <li>Button front with button-down collar and buttoned cuffs</li>
  
    <li>Chest pocket</li>
  
  
  

</ul>', 39.5000, 24.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (57, N'Van Heusen Shirt, Liquid Stripe Shirt', N'<div id="longDescription" class="longDescription">
	Update your workweek wardrobe with the smooth and silky feel of this liquid-like cotton-blend shirt from Van Heusen.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Van Heusen shirt</li>
  
    <li>Soft, silky cotton blend; striped</li>
  
    <li>Button front; chest pocket</li>
  
  
  

</ul>', 45.0000, 27.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (58, N'Izod Shirt, Sueded Jersey Utility Shirt', N'<div id="longDescription" class="longDescription">
	Izod takes hard-edged utility styling and relaxes it on this easy-wear shirt from Izod.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Izod utility shirt</li>
  
    <li>1/4-zip mock neck; padding at shoulders</li>
  
    <li>Snap flap pocket at chest</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=41&channel_id=1&bundle_entryPath=/products.html">Check out the IZOD for INDY collection &amp; Podcasts</a></li>
    
  
  

</ul>', 68.0000, 24.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (59, N'Izod Sweater, Sport Ribbed Quarter Zip', N'<div id="longDescription" class="longDescription">
	Do yourself a solid and toss on the cool, casual polish of this solid ribbed quarter-zip sweater from Izod.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Izod ribbed solid pullover</li>
  
    <li>Quarter zip with mock-neck styling</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=41&channel_id=1&bundle_entryPath=/products.html">Check out the IZOD for INDY collection &amp; Podcasts</a></li>
    
  
  

</ul>', 68.0000, 29.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (60, N'INC International Concepts Shirt, Lieutenant ', N'<div id="longDescription" class="longDescription">
	INC International Concepts tricks out your ordinary henley shirt with military-issue epaulets and snap pockets.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Slub knit shirt from INC International Concepts</li>
  
    <li>Three-button placket</li>
  
    <li>Epaulets at shoulders; snap pockets at chest</li>
  
  
  

</ul>', 39.5000, 29.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (61, N'Van Heusen Shirt, Windowpane Broadcloth', N'<div id="longDescription" class="longDescription">
	Start the workweek off right with the sleek, pulled together polish of this windowpane plaid broadcloth shirt from Van Heusen.   
</div>
<ul id="bullets" class="bullets">
  
  
    <li>60% Cotton, 40% Polyester</li>
  
    <li>Machine washable</li>
  
    <li>Made in China</li>
  
    <li>Van Heusen windowpane-printed broadcloth shirt</li>
  
    <li>Button front; button cuffs</li>
  
  
  

</ul>', 50.0000, 21.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (62, N'Van Heusen Shirt, No Iron Tartan Contrast Cuff Shirt', N'<div id="longDescription" class="longDescription">
	Why deal with the iron when you don''t have to? Van Heusen delivers the crisp, handsome polish of a classic tartan shirt in a smooth wash-and-wear fabric.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Van Heusen long-sleeved shirt</li>
  
    <li>Tartan plaid pattern with contrasting cuffs; no iron fabric</li>
  
    <li>Button front; buttoned cuffs</li>
  
  
  

</ul>', 50.0000, 24.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (63, N'Timberland Shirt, Long Sleeve Flannel Shirt', N'<div id="longDescription" class="longDescription">
	Rough and rugged for the weekend, this Timberland shirt is pretty much the perfect plaid.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Timberland flannel shirt</li>
  
    <li>Plaid</li>
  
    <li>Buttoned pockets at chest</li>
  
  
  

</ul>', 60.0000, 44.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (64, N'Timberland Shirt, Long Sleeve Flannel Shirt', N'<div id="longDescription" class="longDescription">
	Your weekend must-have. This plaid shirt from Timberland is the one you want when you''re off the clock.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Timberland plaid shirt</li>
  
    <li>Buttoned pockets at chest</li>
  
  
  

</ul>', 60.0000, 44.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (65, N'Izod Shirt, Golf UV Wicking Mock Neck Shirt', N'<div id="longDescription" class="longDescription">
	Izod keeps you fully protected and on par for style with the sleek performance features of this essential long-sleeved mock neck with UPF 30 and moisture-wicking technology.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Izod long-sleeved golf shirt</li>
  
    <li>Mock neck</li>
  
    <li>UPF 30 sun control</li>
  
    <li>Moisture wicking keeps you cool and dry</li>
  
  
  

</ul>', 50.0000, 29.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (66, N'John Ashford Shirt, Plaid Flannel Shirt', N'<div id="longDescription" class="longDescription">
	Just add jeans. This favorite flannel from John Ashford features a classic rustic plaid pattern.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>John Ashford flannel shirt</li>
  
    <li>Plaid pattern</li>
  
    <li>Button front; button-down collar</li>
  
    <li>Left chest pocket</li>
  
  
  

</ul>', 34.5000, 14.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (67, N'Club Room Shirt, Slim Fit Plaid Flannel', N'<div id="longDescription" class="longDescription">
	This lightweight plaid flannel from Club Room features a slimmed-down fit for a sleeker take on the lumberjack look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Club Room long-sleeved shirt</li>
  
    <li>Slim fit; plaid flannel</li>
  
    <li>Button front; buttoned cuffs; buttoned flap pockets at chest</li>
  
  
  

</ul>', 39.5000, 24.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (68, N'Club Room Shirt, Thermal Pullover Henley Hoodie', N'<div id="longDescription" class="longDescription">
	Perfect for layering or on it''s own, Club Room''s henley-style thermal features a drawstring hood for an extra dose of casual cool.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Club Room long-sleeved thermal</li>
  
    <li>Henley style with buttoned placket and drawstring hood</li>
  
  
  

</ul>', 49.5000, 29.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (69, N'Club Room Shirt, Long Sleeve Solid Crew Thermal', N'<div id="longDescription" class="longDescription">
	Keep it simple with this crew-neck shirt from Club Room.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Crew-neck shirt from Club Room</li>
  
    <li>Long sleeves</li>
  
  
  

</ul>', 39.5000, 29.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (70, N'Jerry Garcia Contrast Pattern Shirt', N'<div id="longDescription" class="longDescription">
	Master the mix. This striped shirt from Jerry Garcia turns up the volume with contrast cuffs.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Button-front shirt from Jerry Garcia</li>
  
    <li>Striped with contrast cuffs and inner collar</li>
  
    <li>Buttoned cuffs</li>
  
  
  

</ul>', 60.0000, 29.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (71, N'Van Heusen Shirt, No Iron Satin Stripe Shirt', N'<div id="longDescription" class="longDescription">
	Take the work out of your weekdays with the subtle sheen and wrinkle-free fabric of this satin-stripe Van Heusen shirt.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>No iron Van Heusen shirt</li>
  
    <li>Button front; buttoned cuffs</li>
  
    <li>Satin stripe</li>
  
  
  

</ul>', 50.0000, 24.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (72, N'Van Heusen Shirt, No Iron Striped Shirt', N'<div id="longDescription" class="longDescription">
	A smart stripe and an even smarter wrinkle-free fabric make this Van Heusen button-front shirt a favorite in your weekday rotation.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Button-front Van Heusen shirt</li>
  
    <li>No-iron fabric; striped</li>
  
    <li>Buttoned cuffs</li>
  
  
  

</ul>', 50.0000, 24.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (73, N'Izod Shirt, Easy Care Pinpoint Oxford Check', N'<div id="longDescription" class="longDescription">
	Streamline your morning routine with the easy wash-and-wear fabric of this pinpoint oxford shirt from Izod.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Izod long-sleeved shirt</li>
  
    <li>Check pattern; easy care cotton</li>
  
    <li>Button-down collar; buttoned cuffs</li>
  
    <li>Left chest pocket</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=41&channel_id=1&bundle_entryPath=/products.html">Check out the IZOD for INDY collection &amp; Podcasts</a></li>
    
  
  

</ul>', 50.0000, 24.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (74, N'Club Room Dress Shirt, Estate Fitted White Long Sleeve Shirt', N'<div id="longDescription" class="longDescription">
	The classic gets a modern twist. Featuring a sleek, slim fit, this Club Room dress shirt is a must-have for every man.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Machine washable</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Club Room slim-fit dress shirt</li>
  
    <li>Spread collar; chest pocket</li>
  
  
  

</ul>', 49.5000, 27.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (75, N'Club Room Dress Shirt, Estate Burgundy Stripe Long Sleeve Shirt', N'<div id="longDescription" class="longDescription">
	The everyday essential. Club Room updates a classic with a rich, warm hue.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Club Room dress shirt</li>
  
    <li>Burgundy stripe</li>
  
    <li>Button-down collar; chest pocket</li>
  
  
  

</ul>', 49.5000, 27.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (76, N'Izod Shirt, Essential Check Button Down Shirt', N'<div id="longDescription" class="longDescription">
	A classic staple for every man''s closet, this button-down shirt from Izod features a smart check pattern for polished sophistication.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Izod shirt</li>
  
    <li>Check pattern</li>
  
    <li>Long sleeves; button front; button-down collar</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=41&channel_id=1&bundle_entryPath=/products.html">Check out the IZOD for INDY collection &amp; Podcasts</a></li>
    
  
  

</ul>', 50.0000, 24.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (77, N'American Rag Shirt, Long Sleeve Shirt', N'<div id="longDescription" class="longDescription">
	Basics training. This military-style shirt from American Rag will run your casual wardrobes through the paces.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Button-front shirt from American Rag</li>
  
    <li>Epaulets at shoulders</li>
  
    <li>Button tab on sleeve for roll-up styling</li>
  
    <li>Buttoned pockets at chest</li>
  
  
  

</ul>', 29.9800, NULL, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (78, N'Alfani RED Dress Shirt, Fitted White Stretch French Cuff', N'<div id="longDescription" class="longDescription">
	A versatile player in your weekday rotation, this fitted dress shirt from Alfani RED boasts a classic spread collar and French cuffs.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Tapered at chest and hip; fitted at waist</li>
  
    <li>Wrinkle-resistant </li>
  
  
  

</ul>', 49.5000, 27.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (79, N'Geoffrey Beene Dress Shirt, Fitted Sateen Solid', N'<div id="longDescription" class="longDescription">
	Crafted in convenient wrinkle wash fabric and expertly tailored for the modern man, this fitted Geoffrey Beene dress shirt jump-starts any guy''s workweek wardrobe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton; polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Wrinkle free fabric</li>
  
    <li>Spread collar</li>
  
    <li>Buttoned front</li>
  
    <li>Chest pocket</li>
  
    <li>Buttoned cuffs</li>
  
  
  

</ul>', 52.5000, 31.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (80, N'Kenneth Cole Reaction Dress Shirt, Fitted Mercer Tonal Stripe', N'<div id="longDescription" class="longDescription">
	Tonal, textured stripes provide plenty of modern polish, making this slim-fitting dress shirt from Kenneth Cole Reaction a smart addition to any guy''s tailored rotation.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Long sleeve dress shirt</li>
  
    <li>Wrinkle free fabric</li>
  
    <li>Slim fit</li>
  
    <li>Point collar</li>
  
    <li>Button-down front</li>
  
    <li>Barrel cuffs</li>
  
  
  

</ul>', 55.0000, 31.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (81, N'Calvin Klein Dress Shirt, STEEL Fitted Non Iron Textured Solid', N'<div id="longDescription" class="longDescription">
	Versatility and dependability. That''s what this smart, slim-fitting dress shirt from Calvin Klein offers. Constructed with non-iron fabric and finished with flawless attention to detail, you can''t go wrong with this stylish button-down.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Long sleeve dress shirt</li>
  
    <li>Non-iron fabric</li>
  
    <li>Slim fit</li>
  
    <li>Point collar</li>
  
    <li>Button-down front</li>
  
    <li>Buttoned cuffs</li>
  
  
  

</ul>', 69.5000, 46.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (82, N'Izod Shirt, Solid Pinpoint Oxford', N'<div id="longDescription" class="longDescription">
	From 9-to-5 and beyond, this striped shirt from Izod has the versatility you need for every occasion.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Button-down shirt from Izod</li>
  
    <li>Striped; chest pocket</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=41&channel_id=1&bundle_entryPath=/products.html">Check out the IZOD for INDY collection &amp; Podcasts</a></li>
    
  
  

</ul>', 60.0000, 24.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (83, N'Alfani RED Dress Shirt, Fitted Grey White Stripe', N'<div id="longDescription" class="longDescription">
	Does your favorite tailored looks need a cool complement? This fitted striped shirt from Alfani combines a smart color combination and a subtle stripe, making this a surefire way to jump-start at day at the office.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton; polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Fitted construction with stretch fabric</li>
  
    <li>Long sleeve dress shirt</li>
  
    <li>Spread collar</li>
  
    <li>Button-down front</li>
  
    <li>Chest pocket</li>
  
    <li>Buttoned cuffs</li>
  
  
  

</ul>', 49.5000, 27.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (84, N'Alfani RED Dress Shirt, Fitted Coal Solid Stretch', N'<div id="longDescription" class="longDescription">
	Solid details and expert tailoring make this fitted Alfani RED dress shirt a smart start to any tailored combination.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton; polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Fitted construction</li>
  
    <li>Long sleeve dress shirt</li>
  
    <li>Stretch fabric</li>
  
    <li>Spread collar</li>
  
    <li>Button-down front</li>
  
    <li>Chest pocket</li>
  
    <li>Adjustable buttoned cuffs</li>
  
  
    
      <li><a class="bulletLinks" href="javascript:pop(''/popup/r67x33_alfani_shirt_fit_chart.jsp'',''myDynaPop'',''width=645,scrollbars=yes,height=800'')">Click here for the Alfani dress shirt fit guide.</a></li>
    
  
  

</ul>', 49.5000, 27.9900, 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (85, N'Rockport Shoes, Faux Shearling Lined Moccasins', N'<div id="longDescription" class="longDescription">
	These Rockport slippers for men are a masterpiece of craftsmanship, detail and design. Experience Rockport''s comfort technology indoors and outdoors with the durably soft design of this pair of faux shearling-lined men''s house shoes.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Upper: fabric; Outsole: rubber</li>
  
    <li>Imported</li>
  
    <li>Men&#039;s shoes</li>
  
    <li>Rockport slippers for men</li>
  
    <li>Cinnamon men&#039;s house shoes</li>
  
    <li>Slip resistant, indoor/outdoor sole</li>
  
    <li>Patented kinetic air circulator footbed promotes active air movement from heel to toe, which helps the foot feel cooler and more comfortable </li>
  
    <li>Genuine handsewn stitching</li>
  
    <li>Durable fabric upper</li>
  
  
  

</ul>', 72.0000, 49.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (86, N'Madden Shoes, Kassel Boots', N'<div id="longDescription" class="longDescription">
	Get the men''s boots that mean business with the sturdy lug sole, durable stitching and rugged lace-up design of these boots for men from Madden.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Upper: polyurethane; Outsole: rubber</li>
  
    <li>Imported</li>
  
    <li>Madden men&#039;s boots</li>
  
    <li>Black boots for men</li>
  
  
  

</ul>', 75.0000, 64.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (87, N'Madden Shoes, Doors Boots', N'<div id="longDescription" class="longDescription">
	Stuck in a style rut when it comes to men''s boots? Open new doors with the sleek, stitched and paneled look of these Madden harness boots for men.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Upper: polyurethane; Outsole: rubber</li>
  
    <li>Imported</li>
  
    <li>Madden men&#039;s boots</li>
  
    <li>Brown boots for men</li>
  
  
  

</ul>', 75.0000, 64.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (88, N'Skechers Shoes, Nuovo Sport Sneakers', N'<div id="longDescription" class="longDescription">
	Pick your sport and this pair of men''s athletic shoes from Skechers has your back. With the sleek design of these Nuovo Sport men''s sneakers, you''ll get ultimate support and traction whether you''re scoring goals, points, runs or touchdowns.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Skechers men&#039;s sneakers</li>
  
    <li>Charcoal/black men&#039;s athletic shoes</li>
  
    <li>Reflective metallic side edging for increased visibility </li>
  
    <li>Side &#034;S&#034; logo</li>
  
    <li>Lace-up front with metal top eyelet; padded collar and tongue</li>
  
    <li>High impact EVA shock absorbing midsole</li>
  
    <li>Flexible high traction rubber outsole</li>
  
    <li>Smooth nubuck leather upper</li>
  
    <li>Men&#039;s shoes</li>
  
  
  

</ul>', 60.0000, 53.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (89, N'adidas Sandals, Adilette Slides', N'<div id="longDescription" class="longDescription">
	Post-gym or pre-pool, these staple slide men''s sandals from adidas keep you comfortable and cool with every step.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>adidas men&#039;s sandals</li>
  
    <li>Comfortable contoured footbed</li>
  
    <li>Textile lining for comfort</li>
  
    <li>Synthetic upper for durability and quick drying</li>
  
    <li>Men&#039;s Shoes</li>
  
  
  

</ul>', 35.0000, 29.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (90, N'Nike Shoes, Air Monarch IV Sneakers', N'<div id="longDescription" class="longDescription">
	Need men''s athletic shoes that will put a new bounce in your step? These men''s sneakers with updated support and a classic construction will help keep you on the go.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Nike men&#039;s sneakers</li>
  
    <li>White/navy men&#039;s athletic shoes</li>
  
    <li>Lightweight phylon midsole with full-length encapsulated Air-Sole unit for ultimate comfort and cushioning</li>
  
    <li>Durable solid rubber with aggressive traction elements</li>
  
    <li>Full-length Air-Sole unit cushioning combined with durable leather for the person looking for comfort</li>
  
    <li>Supportive leather upper provides great durability</li>
  
    <li>Men&#039;s shoes</li>
  
  
  

</ul>', 54.9800, NULL, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (91, N'Reebok Shoes, Instant Sneakers ', N'<div id="longDescription" class="longDescription">
	This pair of men''s running shoes offers comfort and support with traction and durability. These performance-enhancing men''s sneakers from Reebok have it all contained in a sleek and versatile design.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather and mesh upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Reebok men&#039;s sneakers</li>
  
    <li>White/silver/blue men&#039;s running shoes/men&#039;s athletic shoes</li>
  
    <li>Forefoot flex grooves for complete flexibility through footstrike</li>
  
    <li>Carbon rubber heel strike for traction and durability</li>
  
    <li>Leather/mesh for added comfort, support and breathability</li>
  
    <li>DMX Ride enhanced underfoot foam cushioning for the ultimate in support and comfort</li>
  
    <li>Men&#039;s shoes</li>
  
  
  

</ul>', 39.9800, NULL, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (92, N'Alfani Shoes, Salut Oxfords', N'<div id="longDescription" class="longDescription">
	You''ve already put together the perfect dressed-up look, now finish it off with these smooth moc toe oxford men''s dress shoes.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyurethane upper/rubber sole</li>
  
    <li>Men&#039;s shoes</li>
  
    <li>Alfani men&#039;s dress shoes</li>
  
  
  

</ul>', 79.9900, 69.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (93, N'Puma Shoes, Cell Turin Sneakers', N'<div id="longDescription" class="longDescription">
	These men''s running shoes function as casual athletic trainers designed to meet today''s lifestyle needs. The heritage upper, combined with heel tenCELL unit cushioning, on this pair of men''s sneakers make it perfect to wear before, during, and after a run.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Puma men&#039;s sneakers</li>
  
    <li>White/black men&#039;s running shoes/men&#039;s athletic shoes</li>
  
    <li>EVA and bubble tech midsole</li>
  
    <li>Men&#039;s shoes</li>
  
  
  

</ul>', 80.0000, 71.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (94, N'Skechers Shoes, Downforce Sneakers', N'<div id="longDescription" class="longDescription">
	Whether you''re heading to the track, trail or neighborhood hangout, these rugged Skechers sneaks provide all the comfort and support you''re looking for.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Scuff-resistant leather upper</li>
  
    <li>Shock-absorbing rubber outsole with flexible traction</li>
  
    <li>Men&#039;s Shoes</li>
  
  
  

</ul>', 60.0000, 53.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (95, N'Skechers Shoes, After Burn Sneakers', N'<div id="longDescription" class="longDescription">
	This pair of men''s athletic shoes is tough enough for the trail and lightweight enough for the gym. These updated Skechers men''s sneakers offer the perfect balance of durability and support, so they make a great choice for a guy on the go.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Skechers men&#039;s sneakers</li>
  
    <li>Black men&#039;s athletic shoes</li>
  
    <li>Soft fabric shoe lining </li>
  
    <li>Cushioned insole</li>
  
    <li>Shock absorbing midsole</li>
  
    <li>Flexible traction outsole</li>
  
    <li>Lace up front </li>
  
    <li>Padded collar and tongue</li>
  
    <li>Men&#039;s shoes</li>
  
  
  

</ul>', 60.0000, 49.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (96, N'Puma Shoes, Benecio Sneakers', N'<div id="longDescription" class="longDescription">
	An old school throwback finished with a comfortable, modern sole. These vintage-inspired men''s sneakers effortlessly complement all the looks in your weekend rotation.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Puma men&#039;s sneakers</li>
  
    <li>Cushy midsole for comfort and stability</li>
  
    <li>Rubber outsole for maximum traction</li>
  
    <li>Soft leather upper for instant style and durability</li>
  
    <li>Men&#039;s shoes</li>
  
  
  

</ul>', 60.0000, 53.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (97, N'Puma Shoes, Repli Cat 3 Sneakers', N'<div id="longDescription" class="longDescription">
	Want to make sure you''re brushing up against the sound barrier? Lace up in these stealthy men''s sneakers and put the flash back into your out-of-office lineup.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Puma men&#039;s sneakers</li>
  
    <li>Cushy midsole for comfort and support</li>
  
    <li>Rubber outsole for maximum grip</li>
  
    <li>Leather upper for long wear and good looks</li>
  
    <li>Men&#039;s shoes</li>
  
  
  

</ul>', 75.0000, 66.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (98, N'Timberland Shoes, Concourse Waterproof Oxfords', N'<div id="longDescription" class="longDescription">
	Sophisticated enough for the office, durable enough for any weekend adventure. These wear-anywhere Timberland men''s casual shoes make a great addition to any guy''s everyday wardrobe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Timberland men&#039;s casual shoes</li>
  
    <li>Black casual men&#039;s shoes</li>
  
    <li>Polyurethane anti-fatigue heel filler and forefoot shock zone provide outstanding comfort and flexibility</li>
  
    <li>Moisutre-wicking textile lining keeps feet dry and comfortable </li>
  
    <li>The outsole has a rugged lugh design that is broken up into mini-lugs providing extraordinary multi-surface traction </li>
  
    <li>Premium waterproof leather uppers exclusive anti-fatigue comfort architecture provides all-day comfort and support </li>
  
  
  

</ul>', 90.0000, 79.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (99, N'Skechers Shoes, Ultimatum Laced Sneakers', N'<div id="longDescription" class="longDescription">
	Pieced together for a cool, casual look, these smooth Skechers men''s sneakers provide the perfect complement to any laidback combination.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Skechers men&#039;s sneakers</li>
  
    <li>Fabric lining</li>
  
    <li>Cushioned insole</li>
  
    <li>Flexible traction patterned outsole</li>
  
    <li>Padded collar and tongue</li>
  
    <li>Men&#039;s shoes</li>
  
  
  

</ul>', 79.0000, 69.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (100, N'Skechers Shoes, After Burn Sneakers', N'<div id="longDescription" class="longDescription">
	This pair of men''s athletic shoes is tough enough to handle all of your cross-training workouts and cool enough for any casual occasion. These durable Skechers men''s sneakers make a great choice for any modern guy.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather; synthetic upper</li>
  
    <li>Imported</li>
  
    <li>Skechers men&#039;s sneakers</li>
  
    <li>White/navy men&#039;s athletic shoes</li>
  
    <li>Cushioned insole</li>
  
    <li>Shock absorbing midsole </li>
  
    <li>Flexible traction outsole</li>
  
    <li>Padded collar and tongue</li>
  
    <li>Soft fabric shoe lining</li>
  
    <li>Men&#039;s shoes</li>
  
  
  

</ul>', 60.0000, 49.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (101, N'Skechers Shoes, Midnight Laced Sneakers', N'<div id="longDescription" class="longDescription">
	Contrast stitching and smooth leather panels team up to toughen up these rugged bike toe Skechers, the perfect men''s sneakers for your out of office wardrobe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Skechers men&#039;s sneakers</li>
  
    <li>Lace up front</li>
  
    <li>Padded collar and tongue</li>
  
    <li>Smooth fabric shoe lining</li>
  
    <li>Cushioned insole </li>
  
    <li>Low profile shock absorbing midsole </li>
  
    <li>Flexible cleated traction outsole</li>
  
    <li>Contrast or matching color side stripes with perforation detail </li>
  
    <li>Men&#039;s shoes</li>
  
  
  

</ul>', 75.0000, 64.9900, 1, 3)
GO
print 'Processed 100 total records'
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (102, N'Kenneth Cole Reaction Shoes, Sim-Plicity Moc Toe Oxford', N'<div id="longDescription" class="longDescription">
	Simply perfect. This sleek leather pair of men''s dress shoes features a classic square toe, four-eyelet closure with waxed laces and leather linings. Cushioned insole. Rubber outsole. Imported.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Men&#039;s shoes</li>
  
    <li>Kenneth Cole Reaction men&#039;s dress shoes</li>
  
  
  

</ul>', 98.0000, 87.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (103, N'adidas Originals Shoes, Men''s Stan Smith Classic Sneakers', N'<div id="longDescription" class="longDescription">
	The classic tennis shoes that put adidas men''s sneakers on the map march right off the court and into your weekend rotation.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper/rubber sole</li>
  
    <li>Imported</li>
  
    <li>adidas men&#039;s sneakers</li>
  
    <li>Textile lining for comfort</li>
  
    <li>Pimple outsole for maximum traction</li>
  
    <li>Full grain leather upper for comfort and soft feel</li>
  
    <li>Men&#039;s shoes</li>
  
  
  

</ul>', 60.0000, 53.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (104, N'Kenneth Cole Shoes, Silver Merge Oxford Dress Shoes', N'<div id="longDescription" class="longDescription">
	Want to build the perfect look from the ground up? Start with these classic bike toe oxford men''s dress shoes from Kenneth Cole for a smooth, stylish foundation.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper/rubber sole</li>
  
    <li>Men&#039;s shoes</li>
  
    <li>Kenneth Cole men&#039;s dress shoes</li>
  
    <li>Includes Silver Technology</li>
  
    <li>Removable/cushioned footbed </li>
  
  
  

</ul>', 145.0000, 109.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (105, N'Timberland Shoes, 6" Basic Waterproof Boots', N'<div id="longDescription" class="longDescription">
	A sweet way to toughen up any casual look with men''s boots: Lace up in these rugged Timberland boots for men and pair with your favorite jeans.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper/rubber sole</li>
  
    <li>Timberland men&#039;s boots</li>
  
    <li>Men&#039;s leather boots</li>
  
    <li>Direct-attach, seam-sealed waterproof construction that keeps feet dry in any weather</li>
  
    <li>Fabric lining for breathable comfort</li>
  
    <li>Self leather padded collar for comfort around the ankle</li>
  
    <li>Rustproof hardware for long-lasting wear</li>
  
    <li>Embossed Timberland tree logo on the side</li>
  
    <li>Waterproof leather for comfort, durability and abrasion resistance</li>
  
  
  

</ul>', 120.0000, 107.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (106, N'Cole Haan Shoes, Caldwell Cap Toe Oxfords', N'<div id="longDescription" class="longDescription">
	Strike a balance between sophistication and comfort without compromising on either end. This pair of men''s dress shoes takes you wherever you have to go with the support you need and the style you want.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Men&#039;s shoes</li>
  
    <li>Cole Haan men&#039;s dress shoes</li>
  
    <li>Full grain leather upper</li>
  
    <li>Fully leather lined</li>
  
    <li>Leather covered memory flex insole system with natural latex foam rubber for comfort</li>
  
    <li>Wheeled leather welt</li>
  
    <li>Waxed and buffed leather outsole with combination leather/rubber heel</li>
  
  
  

</ul>', 155.0000, 129.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (107, N'Cole Haan Shoes, Pinch Buckle Loafers', N'<div id="longDescription" class="longDescription">
	Stand on tradition when you slip into these men''s dress shoes. This handsome, handsewn pair of men''s loafers will lend a classic look to your dressy wardrobe. Imported.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Men&#039;s shoes</li>
  
    <li>Cole Haan men&#039;s dress shoes</li>
  
    <li>Loafers for men</li>
  
    <li>Buckle detail at upper</li>
  
    <li>Whipstitch detail along toe</li>
  
    <li>Cushioned insole</li>
  
    <li>Leather sole</li>
  
    <li>Leather lined</li>
  
    <li>Kilt detail at upper</li>
  
  
  

</ul>', 148.0000, 129.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (108, N'Timberland Shoes, Kiawah Bay Boat Shoes', N'<div id="longDescription" class="longDescription">
	From dressy to relaxed, the boat shoe brings your look to another level. Crafted in full-grain leather, the upper is accented with logo embossing and contrast stitching. With corrosion resistant eyelets and rawhide lacing. EVA heel and forepad for all day comfort. Fabric-covered footbed keeps you dry. Rubber sole. Imported.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>This item was previously identified in error as a clearance item. The price listed is the correct current price.</li>
  
    <li>Men&#039;s Shoes</li>
  
  
  

</ul>', 80.0000, 71.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (109, N'Kenneth Cole Reaction Shoes, Punchual Bike Toe Loafers', N'<div id="longDescription" class="longDescription">
	Sophisticated in its simplicity, this modern loafer is crafted in soft, full-grain leather. These men''s dress shoes have a bike toe and gore extensions at sides. Rubber sole. Imported.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Men&#039;s shoes</li>
  
    <li>Kenneth Cole Reaction men&#039;s dress shoes</li>
  
  
  

</ul>', 108.0000, 94.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (110, N'Kenneth Cole Reaction Shoes, Key Note Moc Toe Loafers', N'<div id="longDescription" class="longDescription">
	A handsome casual pair of men''s dress shoes with the bold attitude of a boot, this square-toed loafer is crafted in quality distressed leather. Imported.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Men&#039;s shoes</li>
  
    <li>Kenneth Cole Reaction men&#039;s dress shoes</li>
  
  
  

</ul>', 98.0000, 87.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (111, N'Steve Madden Shoes, Novo Driving Moccasins', N'<div id="longDescription" class="longDescription">
	This sexy leather loafer blends moccasin looks with the clean lines of a dressier loafer. Contrast stitching at seams. Fully leather lined. Rubber outsole. Imported.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Men&#039;s Shoes</li>
  
  
  

</ul>', 80.0000, 69.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (112, N'Nike Sandals, Benassi Swoosh Massage Slide', N'<div id="longDescription" class="longDescription">
	Give your feet  the spa treatment in these sporty slide men''s sandals featuring a one-piece injected Phylon midsole that practically massages your feet as your walk. Light, comfy and airport friendly. Imported.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Nike men&#039;s sandals</li>
  
    <li>Men&#039;s Shoes</li>
  
  
  

</ul>', 22.0000, 18.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (113, N'Rockport Shoes, Waterproof Northfield Oxfords', N'<div id="longDescription" class="longDescription">
	Ruggedly handsome and comfortably casual, the Northfield oxford men''s dress shoes have a full-grain waterproof leather upper that is easy to clean and maintain, so it?s perfect for unexpected changes in the weather. A padded collar and tongue provide cushioned comfort and helps prevent blisters. Imported.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Men&#039;s shoes</li>
  
    <li>Rockport men&#039;s dress shoes</li>
  
    <li>Hydro-Shield? construction provides waterproof protection</li>
  
    <li>Fiberlon shank offers lightweight midfoot support</li>
  
    <li>Kinetic Air Circulator? offers durable cushioning with patented active air-circulating technology</li>
  
    <li>Rubberized EVA outsole delivers durable shock absorbency</li>
  
  
  

</ul>', 99.9900, 89.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (114, N'Calvin Klein Shoes, Neil Loafers', N'<div id="longDescription" class="longDescription">
	A great choice for casual or dress wear, the Neil loafer is a comfortable classic with a modern flair. These men''s dress shoes come in soft, tumbled leather with traditional Venetian loafer detailing.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Men&#039;s shoes</li>
  
    <li>Calvin Klein men&#039;s dress shoes</li>
  
    <li>Leather moc toe loafer</li>
  
    <li>Tonal wide stitching </li>
  
    <li>Padded footbed </li>
  
  
  

</ul>', 130.0000, 114.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (115, N'Cole Haan Shoes, Air Santa Barbara Loafers', N'<div id="longDescription" class="longDescription">
	These men''s casual shoes are impeccably crafted and handsomely detailed. This comfortable loafer also features a leather upper with contrast stitching. Leather lined. Rubber sole. Imported.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cole Haan men&#039;s casual shoes</li>
  
    <li>Black casual men&#039;s shoes</li>
  
    <li>Sole cushioned with NIKE AIR technology</li>
  
    <li>Zoom Air cushioning is the ultimate in low-profile impact protection. The Zoom Air unit provides stable, low-to-the-ground responsive cushioning. Zoom Air cushioning is a flat, thin unit that provides firm, super-responsive cushioning.</li>
  
    <li>Polish black leather</li>
  
  
  

</ul>', 145.0000, 129.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (116, N'Cole Haan Shoes, Pinch Tasseled City Moccasins', N'<div id="longDescription" class="longDescription">
	A traditional tasseled pair of men''s dress shoes, these moc loafers for men are crafted in fine hand-antiqued brushoff leather and handsewn for long-lasting wear.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; leather/rubber sole</li>
  
    <li>Imported</li>
  
    <li>Men&#039;s shoes</li>
  
    <li>Cole Haan men&#039;s dress shoes</li>
  
    <li>Loafers for men</li>
  
    <li>Hand-antiqued brushoff leather upper</li>
  
    <li>Full leather lining</li>
  
    <li>Cushioned insole for added comfort</li>
  
    <li>Full leather midsole with leather sole</li>
  
    <li>Combination stacked leather/rubber heel</li>
  
  
  

</ul>', 145.0000, 129.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (117, N'Puma Shoes, El Ray Cross Perfed Sneakers', N'<div id="longDescription" class="longDescription">
	Put a vintage twist on your weekend wardrobe and strap into these sweet perforated sneakers from Puma.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Leather upper for durability and instant style</li>
  
    <li>Perforated vamp for breathability</li>
  
    <li>Cushy midsole for comfort and stability</li>
  
    <li>Rubber outsole for better traction</li>
  
    <li>Men&#039;s Shoes</li>
  
  
  

</ul>', 60.0000, 53.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (118, N'Madden Shoes, Aron Fleece Sneakers', N'<div id="longDescription" class="longDescription">
	Warm fleece lining softens up these sleek (but still rugged) Madden men''s sneakers--they''re ready to jump into your weekend lineup.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Upper: polyurethane; Outsole: rubber</li>
  
    <li>Imported</li>
  
    <li>Madden men&#039;s sneakers</li>
  
    <li>Fleece lining</li>
  
    <li>Men&#039;s shoes</li>
  
  
  

</ul>', 75.0000, 64.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (119, N'True Religion Shoes, Dylan Low Sneakers', N'<div id="longDescription" class="longDescription">
	With a classic rubber cap toe and signature canvas uppers, these low profile men''s sneakers from True Religion are the right pick for the weekend.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Upper: leather; Outsole: rubber</li>
  
    <li>Imported</li>
  
    <li>True Religion men&#039;s sneakers</li>
  
    <li>Men&#039;s shoes</li>
  
  
  

</ul>', 60.0000, 49.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (120, N'Nike Shoes, Overplay VI Sneakers', N'<div id="longDescription" class="longDescription">
	Worthy enough to wear over and over, these sleek sneakers from Nike will get a ton of play in your wardrobe thanks to the breathable design, stylish support and stability.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather and synthetic upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Combination upper of leathers, synthetics and meshes for support and breathability</li>
  
    <li>Full Phylon midsole with a TPU shank for stability</li>
  
    <li>Solid rubber outsole and traditional herringbone for optimal traction</li>
  
    <li>Men&#039;s Shoes</li>
  
  
  

</ul>', 55.0000, 48.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (121, N'Skechers Shoes, Vassell Lace Up Sneakers', N'<div id="longDescription" class="longDescription">
	Good looks and a comfortably sporty design combine in these stitched leather lace-up men''s sneakers from Skechers to round out the modern guy''s wardrobe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Skechers men&#039;s sneakers</li>
  
    <li>Dual stitched toe overlay panels; front perforation accent for ventilation</li>
  
    <li>Side features layered leather overlay detail and contrast colored stripes </li>
  
    <li>Embossed side &#034;S&#034; logo</li>
  
    <li>Shock absorbing midsole; flexible rubber traction outsole with wrap-around heel</li>
  
    <li>Smooth leather upper; lightly rubbed distressed leather side panels </li>
  
    <li>Men&#039;s shoes</li>
  
  
  

</ul>', 75.0000, 64.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (122, N'Rockport Shoes, City Trail Slip On Loafers', N'<div id="longDescription" class="longDescription">
	Rockport continues their tradition of great casual men''s shoes style with this leather slip-on with shock absorbent cushioning and padding.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather/suede upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Rockport men&#039;s casual shoes</li>
  
    <li>Brown casual men&#039;s shoes</li>
  
    <li>Padded collar and tongue prevent blisters </li>
  
    <li>EVA with adidas adiPRENE highly shock-absorbent cushioning protects the heel at impact</li>
  
    <li>Rubber provides a durable grip on a variety of surfaces; flex groves in outsole provide forefoot flexibility</li>
  
    <li>Full grain leather and suede is easy to clean and maintain to extend product life </li>
  
  
  

</ul>', 100.0000, 89.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (123, N'Nike Sandals, Comfort Slides', N'<div id="longDescription" class="longDescription">
	Smooth and stylish, these Nike slide men''s sandals help you put a new bounce in your step all season long.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; memory foam padding; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Nike men&#039;s sandals</li>
  
    <li>Flex grooves for a more natural range of motion</li>
  
    <li>A premium, stylish and ultra-comfortable memory foam slide</li>
  
    <li>Men&#039;s Shoes</li>
  
  
  

</ul>', 40.0000, 35.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (124, N'Skechers Shoes, Heisman Loafers', N'<div id="longDescription" class="longDescription">
	Cool comfort and modern attitude team up to put a fresh twist on these smooth bike toe loafers from Skechers.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Leather upper; rubber sole</li>
  
    <li>Imported</li>
  
    <li>Smooth leather upper in a slip on casual moc design </li>
  
    <li>Contrast colored stitching accents </li>
  
    <li>Dual stitched seam bicycle style toe design </li>
  
    <li>Side seam and overlay details</li>
  
    <li>Side stripes with perforation accents and canvas edging </li>
  
    <li>Metal stud detailing </li>
  
    <li>Embossed SKECHERS logo</li>
  
    <li>Dual side elastic fabric panels for easy slip on fit </li>
  
    <li>Men&#039;s Shoes</li>
  
  
  

</ul>', 75.0000, 64.9900, 1, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (125, N'Levi''s Jeans, 550 Relaxed Fit, Medium Stonewash', N'<div id="longDescription" class="longDescription">
	Take it easy in this relaxed-fit jean from Levi''s. Versatile medium stonewashed finish in 13 oz. denim with light wear along pockets and hem. Five-pocket styling with signature stitching on back pockets. Zip fly.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
    <li>Relaxed seat and thigh; slightly tapered; 16.5&#034; leg opening; fit below the waist</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (126, N'Levi''s Jeans, 550 Relaxed Fit, Dark Stonewash', N'<div id="longDescription" class="longDescription">
	Take it easy in this relaxed-fit jean from Levi''s. Versatile medium stonewashed finish in 13 oz. denim with light wear along pockets and hem. Five-pocket styling with signature stitching on back pockets. Zip fly.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>You can return this item to any Macy&#039;s location</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (127, N'Levi''s Jeans, 505 Straight, Rinse ', N'<div id="longDescription" class="longDescription">
	Some things never go out of style, like Levi''s? classic 505? jean. Updated dusty, striated wash with light wear along pockets and hem for a broken-in feel. Five-pocket styling with signature stitching on back pockets. Zip fly.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise; regular fit; straight leg </li>
  
    <li>Classic seat and thigh; 16.75&#034; leg opening </li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (128, N'Levi''s Jeans, 505 Straight, Dark Stonewash ', N'<div id="longDescription" class="longDescription">
	Some things never go out of style, like Levi''s? classic 505? jean. Updated dusty, striated wash with light wear along pockets and hem for a broken-in feel. Five-pocket styling with signature stitching on back pockets. Zip fly.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise </li>
  
    <li>Regular fit; straight leg </li>
  
    <li>Classic seat and thigh; 16.75&#034; leg opening  </li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (129, N'Levi''s Jeans, 505 Straight, Black Out ', N'<div id="longDescription" class="longDescription">
	Some things never go out of style, like Levi''s? classic 505? jean. Updated dusty, striated wash with light wear along pockets and hem for a broken-in feel. Five-pocket styling with signature stitching on back pockets. Zip fly.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
    <li>Regular fit; classic seat and thigh; straight leg; 16.75&#034; leg opening; fits at waist </li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (130, N'Levi''s Jeans, 505 Straight, Tumbled Rigid', N'<div id="longDescription" class="longDescription">
	Just a regular t-shirt and jeans kind of guy? These Levi''s 505 were constructed with you in mind.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise; straight leg  </li>
  
    <li>Regular fit; buttoned zipper fly; belt loops </li>
  
    <li> Five pockets; whiskered in front and back </li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (131, N'Levi''s Jeans, 527 Boot Cut, Tumbled Rigid', N'<div id="longDescription" class="longDescription">
	Subtle whiskered details add some edge to these throwback boot cut blues from Levi''s.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (132, N'Levi''s Jeans, 501 Shrink-to-Fit, Dark Gray', N'<div id="longDescription" class="longDescription">
	You love your blues, but how offer can you rock a pair that looks like it''s been custom-tailored? When you jump into these shrink-to-fit 501 jeans from Levi''s, you''ve got a picture-perfect look at a moment''s notice.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 58.0000, 51.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (133, N'Levi''s Jeans, 501 Original, Rinsed Indigo ', N'<div id="longDescription" class="longDescription">
	An all-American classic. The 501 Red Tab jean features five-pocket styling with signature stitching on back pockets. Button fly.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise; original fit</li>
  
    <li>Straight leg</li>
  
    <li>Classic seat and thigh</li>
  
    <li>Buttoned fly; 17.25&#034; leg opening</li>
  
    <li> International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 58.0000, 51.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (134, N'Levi''s Jeans, 501 Original, Medium Stonewash ', N'<div id="longDescription" class="longDescription">
	An all-American classic. The 501 Red Tab jean features five-pocket styling with signature stitching on back pockets. Button fly.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise </li>
  
    <li>Original fit; straight leg</li>
  
    <li>Classic seat and thigh</li>
  
    <li>Buttoned fly; 17.25&#034; leg opening</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 58.0000, 51.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (135, N'Levi''s Jeans, 569 Loose Straight, Day Run', N'<div id="longDescription" class="longDescription">
	Tired of those too-skinny blues? Keep it loose and laid back with these loose, straight-fit jeans from Levi''s.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (136, N'Levi''s Jeans, 511 Skinny, Rigid Dragon', N'<div id="longDescription" class="longDescription">
	Levi''s combines a modern slim fit with a wash that helps you always keep it cool, making these straight-leg blues a cool complement to your weekend wardrobe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 58.0000, 51.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (137, N'Levi''s Jeans, 514 Slim Straight, Speedbump', N'<div id="longDescription" class="longDescription">
	A dark rinse and timeless construction make these versatile Levi''s blues a cool complement to any guy''s off-the-clock lineup.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Regular rise; straight leg</li>
  
    <li>17&#034; leg opening</li>
  
    <li>Button-and-zip closure; belt loops</li>
  
    <li>Five pockets</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
    <li>Levi&#039;s 514 jeans</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 64.0000, 56.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (138, N'Levi''s Jeans, 569 Loose Straight, Ice Cap', N'<div id="longDescription" class="longDescription">
	The ones you can''t wait to wear. Greet the weekend in these easy-fit 569 jeans from Levi''s.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Levi&#039;s 569 loose-fit jeans</li>
  
    <li>Straight leg with 18-1/2&#034; opening</li>
  
    <li>Button-and-zip closure; belt loops</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, NULL, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (139, N'Levi''s Jeans, 514 Slim Straight, Dirt Rush', N'<div id="longDescription" class="longDescription">
	A slim, straight fit and a medium wash make these versatile Levi''s blues a cool complement to any guy''s off-the-clock lineup.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Slim, straight leg</li>
  
    <li>Button-and-zip fly; belt loops</li>
  
    <li>17&#034; leg opening</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (140, N'Levi''s Jeans, 514 Slim Straight, Black', N'<div id="longDescription" class="longDescription">
	Keep your weekend wardrobe on the cutting edge and jump right into these slim, straight leg jeans from Levi''s.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise; straight leg</li>
  
    <li>Slim fit</li>
  
    <li>Buttoned zipper fly; belt loops</li>
  
    <li>Five pockets</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (141, N'Levi''s Jeans, 527 Boot Cut, Andi', N'<div id="longDescription" class="longDescription">
	Retro with plenty of range. These boot cut blues are versatile enough to complement all the looks in your weekend rotation.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise; boot cut</li>
  
    <li>Regular fit</li>
  
    <li>Whiskering in front</li>
  
    <li>Five pockets</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, NULL, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (142, N'Levi''s Jeans, 514 Slim Straight', N'<div id="longDescription" class="longDescription">
	Time to clean up your weekend rotation? These straight leg, slim-fitting jeans from Levi''s offer classic ruggedness with a healthy dose of modern minimalism.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise; straight leg</li>
  
    <li>Slim fit</li>
  
    <li>Buttoned zipper fly; belt loops</li>
  
    <li>Five pockets</li>
  
    <li>Whiskered and blasted in front</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (143, N'Tommy Hilfiger Jeans, Elmira Freedom Relaxed Fit', N'<div id="longDescription" class="longDescription">
	Blues traveler? With these Tommy Hilfiger relaxed-fit jeans, your search for the perfect pair is over.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Relaxed-fit jeans from Tommy Hilfiger</li>
  
    <li>Elmira dark rinse</li>
  
    <li>Button-and-zip closure</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=42&channel_id=1">See Denim Fit Guide</a></li>
    
  
  

</ul>', 39.9800, NULL, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (144, N'Tommy Hilfiger Jeans, Albany Classic Straight Fit', N'<div id="longDescription" class="longDescription">
	Get set for your daily dose of denim. You''ll want to wear these Tommy Hilfiger jeans 24/7.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Straight fit jeans from Tommy Hilfiger</li>
  
    <li>Dark wash</li>
  
    <li>Button fly closure</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=42&channel_id=1">See Denim Fit Guide</a></li>
    
  
  

</ul>', 39.9800, NULL, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (145, N'Levi''s Jeans, 527 Boot Cut, Medium Chipped', N'<div id="longDescription" class="longDescription">
	Subtle whiskered details add some edge to these throwback boot cut blues from Levi''s.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise</li>
  
    <li>Boot cut</li>
  
    <li>Regular fit</li>
  
    <li>Whiskered front</li>
  
    <li>Five pockets</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=42&channel_id=1">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (146, N'Levi''s Jeans, 514 Slim Straight, Tumbled Black', N'<div id="longDescription" class="longDescription">
	A sleek, slim fit puts a modern twist on these comfortable throwback jeans from Levi''s.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise</li>
  
    <li>Slim fit</li>
  
    <li>Straight leg</li>
  
    <li>Whiskered and blasted in front</li>
  
    <li>Five pockets</li>
  
    <li>17&#034; leg opening</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=42&channel_id=1">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (147, N'Levi''s Jeans, 550 Relaxed Fit, Rinse ', N'<div id="longDescription" class="longDescription">
	Rough, rugged and ready to jump into your off-the-clock rotation, these dark denim jeans from Levi''s combine a comfortable relaxed fit and a classic straight leg.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise</li>
  
    <li>Slightly tapered</li>
  
    <li>Relaxed fit</li>
  
    <li>Relaxed seat and thigh</li>
  
    <li>16.5&#034; leg opening</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=42&channel_id=1">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (148, N'Sean John Jeans, Garvey Fit', N'<div id="longDescription" class="longDescription">
	Loose and laid-back: Sean John knows exactly how you like to kick it when you''re off-the-clock.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Made in Mexico</li>
  
    <li>This item was previously identified in error as a clearance item. The price listed is the correct current price. </li>
  
    <li>Straight leg</li>
  
    <li>Low rise</li>
  
    <li>Loose leg</li>
  
    <li>Buttoned zipper fly</li>
  
  
    
      <li><a class="bulletLinks" href="javascript:pop(''http://social.macys.com/mc/main.jsp?campaign_id=28&channel_id=1'',''myDynaPop'',''width=915,scrollbars=yes,height=600'')">check out Diddy&#039;s latest looks and fashion tips</a></li>
    
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=42&channel_id=1">See Denim Fit Guide</a></li>
    
  
  

</ul>', 58.0000, NULL, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (149, N'Levi''s Jeans, Straight Leg 501 Original Fit', N'<div id="longDescription" class="longDescription">
	These rugged, straight leg jeans offer the classic style that you''ve come to expect from a pair of Levi''s.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise</li>
  
    <li>Original fit</li>
  
    <li>Straight leg</li>
  
    <li>Classic seat and thigh</li>
  
    <li>17.25&#034; leg opening</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=42&channel_id=1">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 58.0000, NULL, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (150, N'Levi''s Jeans, 527 Boot Cut, Indie Blue', N'<div id="longDescription" class="longDescription">
	This classic pair of jeans features some modern updates and a perfect worn-in look and feel.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise</li>
  
    <li>Regular seat and thigh</li>
  
    <li>19.75&#034; leg opening</li>
  
    <li>Boot cut</li>
  
    <li>Five pockets</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=42&channel_id=1">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (151, N'Levi''s Jeans, 501 Original Fit Straight Leg', N'<div id="longDescription" class="longDescription">
	You can never go wrong with a classic. These rugged jeans are stylish enough for the club and durable enough to stand the test of time.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine wash</li>
  
    <li>Imported</li>
  
    <li>Low rise</li>
  
    <li>Original fit</li>
  
    <li>Classic seat and thigh</li>
  
    <li>Straight leg</li>
  
    <li>Button fly</li>
  
    <li>17.25&#034; leg opening</li>
  
    <li>Shrink to fit</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=42&channel_id=1">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 58.0000, 51.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (152, N'Levi''s Jeans, 514 Slim Straight, Tumbled Rigid', N'<div id="longDescription" class="longDescription">
	Stay on the straight and narrow in these classic jeans with an exceptionally slim fit.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise</li>
  
    <li>Slim fit</li>
  
    <li>Straight leg</li>
  
    <li>Zip fly, button closure</li>
  
    <li>Five-pocket styling</li>
  
    <li>Contrast topstitching</li>
  
    <li>Signature embroidery on back pockets</li>
  
    <li>Logo patch on back waistband</li>
  
    <li>17&#034; leg opening</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=42&channel_id=1">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (153, N'Levi''s Jeans, 569 Loose Straight, Indie Blue ', N'<div id="longDescription" class="longDescription">
	Levi''s? takes the jean to new levels of cool with this laid-back, loose-fitting style. Dark wash with subtle whiskering in hips and blasting in legs and seat for a broken-in feel. Five-pocket styling with signature stitching on back pockets. Zip fly.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise</li>
  
    <li>Loose seat and thigh</li>
  
    <li>Straight leg</li>
  
    <li>19.5&#034; leg opening</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is stritcly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=42&channel_id=1">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (154, N'Levi''s Jeans, 559 Relaxed Straight, Tumbled Rigid ', N'<div id="longDescription" class="longDescription">
	A relaxed-fit jean that combines a comfortable fit with a stylish dark wash. Classic five-pocket styling with signature topstitching on back pockets.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>This item was previously identified in error as a clearance item. The price listed is the correct current price.</li>
  
    <li>Medium rise</li>
  
    <li>Relaxed seat and thigh</li>
  
    <li>Straight leg</li>
  
    <li>18&#034; leg opening</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=42&channel_id=1">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (155, N'Levi''s Jeans, 501 Original Fit Red Tab', N'<div id="longDescription" class="longDescription">
	An all-American classic. The 501 Red Tab jeans feature five-pocket styling with signature stitching on back pockets. Button fly.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise</li>
  
    <li>Original fit</li>
  
    <li>Straight leg</li>
  
    <li>Classic seat and thigh</li>
  
    <li>Buttoned fly</li>
  
    <li>17.25&#034; leg opening</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is stritcly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=42&channel_id=1">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 58.0000, 51.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (156, N'Levi''s Jeans, 559 Relaxed Straight, Sub-Zero', N'<div id="longDescription" class="longDescription">
	Jump into these relaxed Levi''s jeans and strike the right balance between modern comfort and classic style.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
    <li>Sits on hip; relaxed seat and thigh; 18&#034; leg opening</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (157, N'Levi''s Jeans, 559 Relaxed Straight, Indie Blue', N'<div id="longDescription" class="longDescription">
	A relaxed-fit jean that combines a comfortable fit with a stylish dark wash. Classic five-pocket styling with signature topstitching on back pockets.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>This item was previously identified in error as a clearance item. The price listed is the correct current price.</li>
  
    <li>Medium rise </li>
  
    <li>Relaxed seat and thigh  </li>
  
    <li>Straight leg; 18&#034; leg opening </li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 47.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (158, N'Levi''s Jeans, 511 Skinny, Rigid Villian ', N'<div id="longDescription" class="longDescription">
	Rugged charm meets modern edge with these updated skinny straight leg jeans from Levi''s.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise; straight leg; skinny fit </li>
  
    <li>Whiskered throughout; five pockets; zippered back pockets </li>
  
    <li>Wider belt loops; heavy stitch arcuate</li>
  
    <li>Horizontal zippers above back pockets</li>
  
    <li>Batwing clamp on back pockets  </li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 64.0000, 56.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (159, N'Levi''s Jeans, 510 Super Skinny, Rigid Stretch', N'<div id="longDescription" class="longDescription">
	The perfect complement for a guy who''s always on-trend, these supper skinny Levi''s put the finishing touches on any casual look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/elastane</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>This item was previously identified in error as a clearance item. The price listed is the correct current price.</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 58.0000, 51.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (160, N'Levi''s Jeans, 501 Shrink-to-Fit, Grey Rigid ', N'<div id="longDescription" class="longDescription">
	Feeling like those blues are played out? Jump into these washed Levi''s Jeans and put a new twist on any comfortable combination.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise; traight leg</li>
  
    <li>Original fit</li>
  
    <li>Buttoned zipper fly</li>
  
    <li>Five pockets; classic seat and thigh</li>
  
    <li>17.25&#034; leg opening</li>
  
    <li> International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 58.0000, 51.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (161, N'Levi''s Jeans, 521 Slim Taper, Rigid Envy', N'<div id="longDescription" class="longDescription">
	These sleek and slim Levi''s 521 tapered jeans have streetwise styling right down to your favorite pair of kicks.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Levi&#039;s 521 slim tapered jeans </li>
  
    <li>14-1/2&#034; leg opening </li>
  
    <li>Zip closure; belt loops </li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 58.0000, 51.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (162, N'Levi''s Jeans, 569 Loose Straight, Grey Deal ', N'<div id="longDescription" class="longDescription">
	The ones you can''t wait to wear. Greet the weekend in these easy-fit 569 jeans from Levi''s.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Levi&#039;s 569 loose-fit jeans</li>
  
    <li>Straight leg with 18-1/2&#034; opening</li>
  
    <li>Button-and-zip closure; belt loops</li>
  
    <li>International shipping of Levi &amp; Strauss Co. products is strictly prohibited</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/men">Learn more at our Levi&#039;s Shop</a></li>
    
  
  

</ul>', 64.0000, 56.9900, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (163, N'Buffalo Jeans Boot Cut Jeans, King Fit', N'<div id="longDescription" class="longDescription">
	Washed, whiskered and ready for weekend adventures. These Buffalo boot cut jeans provide the perfect counterweight for all of your favorite tees and button-down.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise; regular fit</li>
  
    <li>Boot cut</li>
  
    <li>Whiskered and blasted on legs</li>
  
    <li>Five pockets</li>
  
    <li>Leather detail with logo embellishment on left front pockets</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=42&channel_id=1">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="javascript:pop(''/r65x16_buffaloDenim_popup.jsp'',''buffalo'',''width=602,scrollbars=yes,height=700'')">Click here for the Buffalo Jeans fit guide</a></li>
    
  
  

</ul>', 79.0000, NULL, 1, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (164, N'Marc Ecko Hoodie, Cut and Sew Diamond Print Hoodie', N'<div id="longDescription" class="longDescription">
	Marc Ecko hits on super-cool casual style with this diamond print hoodie.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Marc Ecko full-zip hoodie</li>
  
    <li>Diamond print front graphic; shoulder patch</li>
  
    <li>Contrast sleeve and back; drawstring hood</li>
  
  
  

</ul>', 59.5000, 44.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (165, N'Nike Hoodies, Graphic Fleece Full Zip Hoodie', N'<div id="longDescription" class="longDescription">
	A cool casual layer from Nike sets the tone for your laid-back look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Nike men&#039;s full-zip front hoodie</li>
  
    <li>Drawstring hood; kangaroo pocket; Nike embroidered chest</li>
  
  
  

</ul>', 55.0000, 39.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (166, N'American Rag Zip Up, Varsity Running Track Jacket', N'<div id="longDescription" class="longDescription">
	Too cool for school. This zip-front track jacket from American Rag gets high marks for sporty style.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Zip-front jacket from American Rag</li>
  
    <li>Graphic and applique on front; stripes on sleeves</li>
  
    <li>Front pockets</li>
  
  
  

</ul>', 39.5000, 24.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (167, N'Univibe Sherpa Lined Hoodie, Ajax', N'<div id="longDescription" class="longDescription">
	Add a bolt of blue to the concrete jungle with this striped hoodie from Univibe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton, Sherpa lined.</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Zip front hoodie from Univibe</li>
  
    <li>Wide stripes</li>
  
    <li>Front pockets</li>
  
  
  

</ul>', 50.0000, 39.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (168, N'Puma Sweatshirt, Tech Graphic H Fleece Pullover Hoodie', N'<div id="longDescription" class="longDescription">
	Infused with sleek sporty appeal, toss on this Puma tech pullover after a workout or on the weekends with jeans.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Puma hoodie with &#034;H&#034; shape head opening</li>
  
    <li>Drawstring hood</li>
  
    <li>Stripes down the arms</li>
  
    <li>Front flap pocket with hook-and-loop closure</li>
  
    <li>Puma logo at the hood and left chest</li>
  
  
  

</ul>', 65.0000, 57.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (169, N'Puma Jackets, Agile Track Jacket', N'<div id="longDescription" class="longDescription">
	Top off your athletic look with this track jacket from Puma and embolden your sport style.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Men&#039;s track jacket from Puma</li>
  
    <li>Full-zip front; stand collar</li>
  
    <li>Front slit pockets; Puma logo at left chest</li>
  
    <li>Two-ton jacket with striping</li>
  
  
  

</ul>', 55.0000, 47.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (170, N'Nike Track Jacket, Flight 5 Jacket', N'<div id="longDescription" class="longDescription">
	Clear the runway.  You''ll be airborne in this lightweight warm-up jacket from Nike.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Nike men&#039;s full-zip jacket</li>
  
    <li>Signature &#034;Flight&#034; logo at left chest</li>
  
    <li>Elastic at waist and wrists</li>
  
  
  

</ul>', 75.0000, 64.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (171, N'Ecko Unltd Hoodie, Fabricon Plaid Zip Up', N'<div id="longDescription" class="longDescription">
	Crafted in a cool plaid, this hoodie from Ecko Unltd puts some zip on your casual look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Zip-front shirt from Ecko Unltd</li>
  
    <li>Plaid</li>
  
    <li>Pockets on front</li>
  
  
  

</ul>', 59.5000, NULL, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (172, N'Ecko Unltd Hoodie, Fresh Blood Zip Up', N'<div id="longDescription" class="longDescription">
	A sporty fave hits the streets. Get the best of both worlds in this hoodie from Ecko Unltd.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Zip-up hoodie from Ecko Unltd</li>
  
    <li>Graphic on front; color blocked sleeves</li>
  
  
  

</ul>', 59.5000, NULL, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (173, N'Club Room Hoodie, French Terry Zip Hoodie', N'<div id="longDescription" class="longDescription">
	Soft and stylish, this French terry hoodie from Club Room is ideal for your seasonal layered look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Club Room Frech terry hoodie</li>
  
    <li>Front-slit pockets; drawstring closure</li>
  
  
  

</ul>', 59.5000, 44.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (174, N'Club Room Hoodie, French Terry Striped Hoodie', N'<div id="longDescription" class="longDescription">
	Soft and stylish, this French terry hoodie from Club Room is ideal for your seasonal layered look. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Club Room Frech terry hoodie</li>
  
    <li>Front-slit pockets; drawstring closure; all over striping</li>
  
  
  

</ul>', 49.5000, 39.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (175, N'Sean John Jacket, Slub Fleece Track Jacket', N'<div id="longDescription" class="longDescription">
	Bring a street sensibility to your sportswear. This slub track jacket from Sean John blends both looks effortlessly.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Sean John track jacket</li>
  
    <li>Zip front</li>
  
    <li>Rubber graphic on front</li>
  
  
  

</ul>', 68.0000, 59.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (176, N'Lacoste Hoodie, Pullover Sweatshirt', N'<div id="longDescription" class="longDescription">
	Macy''s exclusive! This sporty, stylish look from Lacoste will be your new casual favorite.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Macy&#039;s exclusive</li>
  
    <li>Lacoste pullover hooded sweatshirt</li>
  
    <li>Slim fit</li>
  
    <li>Contrast trim at hood; color-blocked cuffs; Lacoste logo at chest</li>
  
  
  

</ul>', 155.0000, 116.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (177, N'adidas Jacket, Brazil Track Jacket', N'<div id="longDescription" class="longDescription">
	Wear the colors of the world''s finest. This Brazil track jacket from adidas celebrates past and future champions.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>adidas men&#039;s track jacket</li>
  
    <li>Brazil logo and country colors</li>
  
    <li>Full-zip front; hand pockets</li>
  
  
  

</ul>', 80.0000, 69.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (178, N'Tommy Hilfiger Sweatshirt, Covell Fleece', N'<div id="longDescription" class="longDescription">
	Classic. That''s what you''ll be when you throw on this comfortable, zip front fleece from Tommy Hilfiger.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Long-sleeved fleece from Tommy Hilfiger</li>
  
    <li>Zip front</li>
  
    <li>Stand collar; contrast sleeve and collar</li>
  
    <li>Embroidered logo on front; regular fit</li>
  
  
  

</ul>', 98.0000, 69.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (179, N'Marc Ecko Cut & Sew Hoodie, Militia 2', N'<div id="longDescription" class="longDescription">
	Military style gets a welcome dose of R&R with this laid-back hoodie from Marc Ecko Cut & Sew.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Shell:cotton/polyester: trim:cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Zip-front hoodie from Marc Ecko Cut &amp; Sew</li>
  
    <li>Buttoned pockets at chest</li>
  
  
  

</ul>', 69.5000, NULL, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (180, N'Ecko Unltd Hoodie, Pipe Dreams ', N'<div id="longDescription" class="longDescription">
	Wardrobe for the weekend warrior. This zip-up hoodie is a rad addition to your casual lineup.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Zip-up hoodie from Ecko Unltd</li>
  
    <li>Color-blocked styling</li>
  
    <li>Two chest pockets; two side pockets</li>
  
  
  

</ul>', 69.5000, NULL, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (181, N'Metal Mulisha Hoodie, Sudden Fleece Zip Up Sweatshirt', N'<div id="longDescription" class="longDescription">
	Stock up on this cool, casual look from Metal Mulisha. This hoodie brings your style to the streets.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Zip-up hoodie from Metal Mulisha</li>
  
    <li>Side pockets; graphic on front</li>
  
  
  

</ul>', 49.5000, NULL, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (182, N'Sean John Jacket, Big and Tall Track Jacket', N'<div id="longDescription" class="longDescription">
	Bring a street sensibility to your sportswear. This slub track jacket from Sean John blends both looks effortlessly.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Sean John track jacket</li>
  
    <li>Zip front</li>
  
    <li>Rubber graphic on front</li>
  
  
  

</ul>', 78.0000, 69.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (183, N'Marc Ecko Cut & Sew Hoodie, Intefada', N'<div id="longDescription" class="longDescription">
	Less of a layer, more of an outfit. This hoodie from Marc Ecko Cut & Sew is an all-day all-star.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Zip-front hoodie from Marc Ecko Cut &amp; Sew</li>
  
    <li>Buttons at collar and hem</li>
  
    <li>Color-blocked design</li>
  
    <li>Regular pockets</li>
  
  
  

</ul>', 69.5000, 49.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (184, N'Nike Track Jackets, Woven Track Jacket', N'<div id="longDescription" class="longDescription">
	The classic track jacket gets a modern update with sleek striping and an athletic fit. Look the part on or off the court.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/nylon; lining:polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Men&#039;s track jacket from Nike</li>
  
    <li>Full-zip front; Nike logo on chest</li>
  
    <li>Solid striping across chest, arms and back</li>
  
    <li>Elastic at wrist and hem</li>
  
  
  

</ul>', 58.0000, 39.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (185, N'Nike Sweatshirt, Classic Fleece Full Zip Hoodie', N'<div id="longDescription" class="longDescription">
	Your favorite sweatshirt from your favorite brand. This Nike hoodie has it all. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Full-zip hooded sweatshirt from Nike</li>
  
    <li>Nike logo at chest</li>
  
    <li>Split kangaroo pocket</li>
  
  
  

</ul>', 55.0000, 39.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (186, N'Nike Sweatshirt, Classic Pullover Fleece Hoodie', N'<div id="longDescription" class="longDescription">
	Your go-to look from your go-to brand. Relax in the solid construction of this pullover hoodie from Nike. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Drawstring hoodie</li>
  
    <li>Kangaroo pocket</li>
  
    <li>Ribbed cuffs and hem</li>
  
    <li>Nike logo at chest</li>
  
  
  

</ul>', 42.0000, 29.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (187, N'Nike Sweatshirts, Classic Fleece Crew', N'<div id="longDescription" class="longDescription">
	Casual sportswear from the experts. This crew-neck shirt from Nike is no-fuss style. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Crew neck fleece from Nike</li>
  
    <li>Logo at chest</li>
  
  
  

</ul>', 36.0000, 27.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (188, N'Univibe Sherpa Lined Hoodie, Plaid Zip Up', N'<div id="longDescription" class="longDescription">
	Style for the street. Update your day-to-day with this buffalo plaid hoodie from Univibe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton. Sherpa lined.</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Zip-front hoodie from Univibe</li>
  
    <li>Plaid</li>
  
    <li>Side pockets</li>
  
  
  

</ul>', 50.0000, 39.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (189, N'American Rag Hoodie, Varsity Hoodie', N'<div id="longDescription" class="longDescription">
	Style stays sporty while you stay comfortable in this classic American Rag varsity hoodie. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Varsity style hoodie from American Rag</li>
  
    <li>Zip up</li>
  
    <li>Front graphic</li>
  
  
  

</ul>', 39.5000, 24.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (190, N'Izod Sweatshirt, Varsity Fleece Crew Neck', N'<div id="longDescription" class="longDescription">
	Suit up in the collegiate-inspired polish of this warm fleece Izod crew neck - a handsome update to your favorite sweatshirt.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Izod crew neck sweatshirt</li>
  
    <li>Long sleeves; fleece</li>
  
  
  

</ul>', 60.0000, 29.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (191, N'Nike Sweatshirt, Knockout Therma-Fit Fleece Hoodie', N'<div id="longDescription" class="longDescription">
	Go-to comfort from your go-to brand. Whether you''re kicking back or hitting the gym, Nike''s therma-fit hooded sweatshirt helps you keep warm and look cool.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Nike hooded sweatshirt</li>
  
    <li>Insulated therma-fit fabric keeps you warm</li>
  
    <li>Contrasting side panels; kangaroo pocket</li>
  
  
  

</ul>', 50.0000, 39.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (192, N'Izod Jacket, Ratio Maxx Full Zip Performance Fleece', N'<div id="longDescription" class="longDescription">
	Izod masters the ratio of style to function with the sleek performance features of this lightweight, wind-resistant thermal fleece.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester</li>
  
    <li>Machine wash</li>
  
    <li>Imported</li>
  
    <li>Izod full-zip fleece jacket</li>
  
    <li>Performance X fabric helps adapt to your environment</li>
  
    <li>Lightweight, thermal and wind-resistant</li>
  
    <li>Zippered chest pocket</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=41&channel_id=1&bundle_entryPath=/products.html">Check out the IZOD for INDY collection &amp; Podcasts</a></li>
    
  
  

</ul>', 80.0000, 39.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (193, N'Puma Jacket, Basic French Terry Track Jacket', N'<div id="longDescription" class="longDescription">
	Start with the basics. Build a solid foundation for your weekend couch time with this ultra-comfortable track jacket from Puma. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Puma track jacket</li>
  
    <li>Zip front; stand collar</li>
  
    <li>Front pockets</li>
  
    <li>Puma logo at the chest and back neck</li>
  
  
  

</ul>', 55.0000, 39.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (194, N'Marc Ecko Cut & Sew Jacket, Lockdown Track Jacket', N'<div id="longDescription" class="longDescription">
	From Marc Ecko Cut & Sew: A stenciled plaid graphic is contrasted with black zippers and military shoulder epaulets for prep style gone underground.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Zip-front track jacket from Mark Ecko</li>
  
    <li>Epaulets at shoulders; side pockets</li>
  
  
  

</ul>', 59.5000, NULL, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (195, N'Converse Sweatshirt, All Star Graphic Fleece Hoodie', N'<div id="longDescription" class="longDescription">
	Dress the part of an All Star with the kicked-back cool of Converse''s signature graphic hoodie.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Converse zippered sweatshirt</li>
  
    <li>Drawstring hood; ribbed cuffs and hem</li>
  
    <li>Kangaroo pocket; All Star patch on right sleeves; graphics at front</li>
  
  
  

</ul>', 68.0000, NULL, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (196, N'Weatherproof Sweatshirt, Faux Fur Lined Fleece Hoodie', N'<div id="longDescription" class="longDescription">
	With its fleece material and faux fur-lined trim on the hoodie, this sweatshirt will leave you practically weatherproof in any inclement conditions.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Drawstring hoodie</li>
  
    <li>Pockets on front</li>
  
    <li>Long sleeves</li>
  
    <li>Zipper in front</li>
  
  
  

</ul>', 70.0000, 39.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (197, N'Van Heusen Sweater, Sueded Fleece Quarter Zip', N'<div id="longDescription" class="longDescription">
	The classic fleece quarter-zip pullover gets an extra-soft hand in a sueded finish from Van Heusen.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Van Heusen pullover sweater</li>
  
    <li>Soft, suede fleece</li>
  
    <li>Quarter zip with mockneck styling</li>
  
  
  

</ul>', 60.0000, 39.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (198, N'Nike Track Jacket, Practice OT Dri-Fit Tricot Track Jacket', N'<div id="longDescription" class="longDescription">
	Dress the part of a pro athlete when you suit up in the ultra-smooth performance style of this Dri-Fit track jacket from Nike.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Nike track jacket</li>
  
    <li>Full zip with stand collar; stripes at arms</li>
  
    <li>Moisture wicking</li>
  
    <li>Two front pockets</li>
  
  
  

</ul>', 45.0000, 39.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (199, N'Sean John Track Jacket, Architect', N'<div id="longDescription" class="longDescription">
	Mix up your weekend threads with the sporty two-toned style of this zip-front track jacket from Sean John.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Body: polyester/spandex; Sleeves: cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Sean John track jacket</li>
  
    <li>Denim body with cotton cream sleeves</li>
  
    <li>Zip front</li>
  
    <li>Chest pockets</li>
  
  
    
      <li><a class="bulletLinks" href="javascript:pop(''http://social.macys.com/mc/main.jsp?campaign_id=28&channel_id=1'',''myDynaPop'',''width=915,scrollbars=yes,height=600'')">check out Diddy&#039;s latest looks and fashion tips</a></li>
    
  
  

</ul>', 88.0000, NULL, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (200, N'The North Face Sweatshirt, Rearview Full Zip Fleece Hoodie', N'<div id="longDescription" class="longDescription">
	For those days when a jacket''s too much but a t-shirt isn''t enough, zip up in the soft, signature comfort of this hearty fleece hoodie from The North Face.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>The North Face fleece hoodie</li>
  
    <li>Soft, comfortable, easy-care fabric</li>
  
    <li>Chain-stitch embroidered logo at back of hood; embroidered logo at left chest</li>
  
    <li>Kangaroo hand pockets; ribbed cuffs and hem</li>
  
    <li>Contrast color front zip and drawstrings on Heather Grey and Graphite Grey colorways</li>
  
  
  

</ul>', 70.0000, NULL, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (201, N'Polo Ralph Lauren Track Jacket, Great Britain Ocean Race Full Zip Jacket', N'<div id="longDescription" class="longDescription">
	Inspired by authentic crew uniforms, the long-sleeved full-zip jacket features iconic team graphics and worldly color combinations for athletic style.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Full-zip front extends into a mockneck collar with &#034;RL1&#034; at the right</li>
  
    <li>Long, raglan sleeves with ribbed cuffs</li>
  
    <li>&#034;RL1 Team Racing&#034; at one shoulder, applied number patch at the other</li>
  
    <li>Vertical zip pockets at the waist, even-sewn hem</li>
  
    <li>Embroidered flag crest at the right chest</li>
  
    <li>Applied flag, country name and number at the back</li>
  
    <li>Ralph Lauren&#039;s embroidered Big Pony accents the left chest with &#034;RL1 Racing Team&#034; underneath</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=106&channel_id=1&bundle_entryPath=nav/men">Explore the fall must-haves.</a></li>
    
  
  

</ul>', 185.0000, 129.9900, 1, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (202, N'LRG Hoodie, Chavez Zip Up', N'<div id="longDescription" class="longDescription">
	Zip into your favorite top layer -- this striped hoodie from LRG.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Zip-up hoodie from LRG</li>
  
    <li>Striped</li>
  
    <li>Zip side pockets</li>
  
  
  

</ul>', 79.0000, NULL, 1, 5)
GO
print 'Processed 200 total records'
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (203, N'Geoffrey Beene Sweater, Traditional Cable Crew Neck ', N'<div id="longDescription" class="longDescription">
	Always a classic. This cable-knit sweater from Geoffrey Beene sweater is a timeless piece every man must own.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Crew-neck sweater from Geoffrey Beene</li>
  
    <li>Cable knit</li>
  
  
  

</ul>', 65.0000, 29.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (204, N'Oscar de la Renta Sweater, Saddle Ribbed Sweater', N'<div id="longDescription" class="longDescription">
	With handsome ribbed detailing, this sweater from Oscar de la Renta is a sophisticated weekend staple.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Crew-neck sweater from Oscar de la Renta</li>
  
    <li>Solid ribbed</li>
  
  
  

</ul>', 65.0000, 29.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (205, N'Izod Sweater, Fisherman Cable Crew Sweater', N'<div id="longDescription" class="longDescription">
	Great catch. This Izod crew-neck sweater will be your trusty companion, all season long.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Crew-neck sweater from Izod</li>
  
    <li>Cable knit</li>
  
  
  

</ul>', 72.0000, 29.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (206, N'Alfani Sweater, Cotton Quarter Zip Sweater', N'<div id="longDescription" class="longDescription">
	Sweater staple. You''ll want to stock up on this Alfani zip sweater in every color to get you through the season in classic style.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Alfani sweater</li>
  
    <li>Quarter zip with mock-neck styling</li>
  
    <li>Ribbed collar, cuffs and hem</li>
  
  
  

</ul>', 69.5000, 29.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (207, N'Geoffrey Beene Sweater, Sport Stripe ', N'<div id="longDescription" class="longDescription">
	With a sporty stripe straight down the middle, this Geoffrey Beene sweater keeps it casual and classic.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Crew-neck sweater from Geoffrey Beene</li>
  
    <li>Stripe</li>
  
    <li>Ribbed cuff and hem</li>
  
  
  

</ul>', 65.0000, 29.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (208, N'Izod Sweater, Cotton Blend Cabled V Neck', N'<div id="longDescription" class="longDescription">
	The subtle cable-knit design of this classic V-neck sweater lends instant polish to any casual combo.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Izod v-neck sweater</li>
  
    <li>Cable-knit</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=41&channel_id=1&bundle_entryPath=/products.html">Check out the IZOD for INDY collection &amp; Podcasts</a></li>
    
  
  

</ul>', 72.0000, 29.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (209, N'Geoffrey Beene Sweater, Ribbed Quarter Zip with Fleece Collar', N'<div id="longDescription" class="longDescription">
	This sweater from Geoffrey Beene feels as comfortable as it looks. The fleece collar and quarter zip closure also provide increased warmth around your neck and chest area, while the inconspicuousness of the ribbing at the edges of the sleeves and neck of the sweater give the garment an unusual and eye-pleasing appearance.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Quarter zip-up</li>
  
    <li>Available in black and white</li>
  
    <li>Ribbed collar, cuffs, and waist</li>
  
    <li>Stripe detail around cuffs and collar</li>
  
  
  

</ul>', 70.0000, 34.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (210, N'Geoffrey Beene Sweater, Argyle Crew Neck', N'<div id="longDescription" class="longDescription">
	It doesn''t get any more sophisticated than classic argyle. This Geoffrey Beene sweater goes to the office and beyond.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Crew-neck sweater from Geoffrey Beene </li>
  
    <li>Argyle pattern</li>
  
    <li>Ribbed collar, cuffs and hem</li>
  
  
  

</ul>', 65.0000, 29.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (211, N'Geoffrey Beene Sweater, Traditional Cable Crew Neck ', N'<div id="longDescription" class="longDescription">
	Always a classic. This cable-knit sweater from Geoffrey Beene sweater is a timeless piece every man must own.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Crew-neck sweater from Geoffrey Beene</li>
  
    <li>Cable knit</li>
  
  
  

</ul>', 65.0000, 29.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (212, N'Geoffrey Beene Sweater, Wide Rib Collared Sweater', N'<div id="longDescription" class="longDescription">
	Your two favorite styles converge on this sporty sweater from Geoffrey Beene.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Geoffrey Beene sweater</li>
  
    <li>Polo collar and placket</li>
  
    <li>Wide rib</li>
  
  
  

</ul>', 65.0000, 29.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (213, N'Club Room Sweater, Cashmere Quarter Zip', N'<div id="longDescription" class="longDescription">
	Toss on a layer of sleek polish with the smooth, refined feel of this cashmere quarter-zip sweater from Club Room.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cashmere</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Club Room cashmere sweater</li>
  
    <li>Quarter zip with mockneck styling</li>
  
    <li>Made of two-ply cashmere, these lightweight sweaters provide excellent warmth</li>
  
  
  

</ul>', 170.0000, 99.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (214, N'Club Room Sweater, Cashmere V Neck Sweater', N'<div id="longDescription" class="longDescription">
	Layer on the luxurious polish with the soft, refined cashmere of this Club Room v neck sweater.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cashmere</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Club Room cashmere sweater</li>
  
    <li>Long sleeves; v-neck</li>
  
    <li>Made of two-ply cashmere, these lightweight sweaters provide excellent warmth</li>
  
  
  

</ul>', 160.0000, 99.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (215, N'Izod Sweater, Fisherman Cable Crew Sweater', N'<div id="longDescription" class="longDescription">
	Great catch. This Izod crew-neck sweater will be your trusty companion, all season long.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Crew-neck sweater from Izod</li>
  
    <li>Cable knit</li>
  
  
  

</ul>', 72.0000, 29.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (216, N'Van Heusen Sweater, Sueded Fleece Quarter Zip', N'<div id="longDescription" class="longDescription">
	The classic fleece quarter-zip pullover gets an extra-soft hand in a sueded finish from Van Heusen.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Van Heusen pullover sweater</li>
  
    <li>Soft, suede fleece</li>
  
    <li>Quarter zip with mockneck styling</li>
  
  
  

</ul>', 60.0000, 39.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (217, N'Geoffrey Beene Sweater, Ribbed Quarter Zip with Fleece Collar', N'<div id="longDescription" class="longDescription">
	This sweater from Geoffrey Beene feels as comfortable as it looks. The fleece collar and quarter zip closure also provide increased warmth around your neck and chest area, while the inconspicuousness of the ribbing at the edges of the sleeves and neck of the sweater give the garment an unusual and eye-pleasing appearance.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Quarter zip-up</li>
  
    <li>Available in black and white</li>
  
    <li>Ribbed collar, cuffs, and waist</li>
  
    <li>Stripe detail around cuffs and collar</li>
  
  
  

</ul>', 70.0000, 34.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (218, N'Alfani Sweater, Solid V Neck Sweater', N'<div id="longDescription" class="longDescription">
	A solid favorite, this v-neck sweater from Alfani will instantly become your standard style.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/modal</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>V-neck sweater from Alfani</li>
  
    <li>Solid</li>
  
  
  

</ul>', 59.5000, 24.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (219, N'Geoffrey Beene Sweater, Sport Stripe ', N'<div id="longDescription" class="longDescription">
	With a sporty stripe straight down the middle, this Geoffrey Beene sweater keeps it casual and classic.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Crew-neck sweater from Geoffrey Beene</li>
  
    <li>Stripe</li>
  
    <li>Ribbed cuff and hem</li>
  
  
  

</ul>', 65.0000, 29.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (220, N'Geoffrey Beene Sweater, Argyle Crew Neck', N'<div id="longDescription" class="longDescription">
	It doesn''t get any more sophisticated than classic argyle. This Geoffrey Beene sweater goes to the office and beyond.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Crew-neck sweater from Geoffrey Beene </li>
  
    <li>Argyle pattern</li>
  
    <li>Ribbed collar, cuffs and hem</li>
  
  
  

</ul>', 65.0000, 29.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (221, N'Van Heusen Sweater, Cotton Texture Windowpane Crew Neck ', N'<div id="longDescription" class="longDescription">
	Layer on this windowpane crew neck sweater from Van Heusen over a tonal button-down for a clean, casual look that''s weekend ready.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Van Heusen crew neck sweater</li>
  
    <li>Windowpane patter</li>
  
    <li>Ribbed neckline and sleeve hem</li>
  
  
  

</ul>', 60.0000, 24.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (222, N'Tommy Hilfiger Fashion Sweaters, Taft V Neck ', N'<div id="longDescription" class="longDescription">
	This classic V-neck with color accent goes great with jeans or chinos, t-shirts, button downs or beneath a blazer.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Contrast neckline</li>
  
    <li>Hilfiger logo on side of chest</li>
  
    <li>Ribbed hemline</li>
  
  
  

</ul>', 39.9800, NULL, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (223, N'Tommy Hilfiger Sweaters, Taft V Neck', N'<div id="longDescription" class="longDescription">
	This classic V-neck with color accent goes great with jeans or chinos, t-shirts, button downs or beneath a blazer.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Contrast neckline</li>
  
    <li>Hilfiger logo on side of chest</li>
  
    <li>Ribbed hemline</li>
  
  
  

</ul>', 39.9800, NULL, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (224, N'Tasso Elba Sweater, Chunky Cotton Mirrored Cable Quarter Zip', N'<div id="longDescription" class="longDescription">
	Infuse some texture in your look and layer up in this chunky cotton quarter-zip sweater from Tasso Elba.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Tasso Elba sweater</li>
  
    <li>Mirrored cable-knit pattern</li>
  
    <li>Mock neck with quarter zip</li>
  
  
  

</ul>', 69.5000, 44.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (225, N'Geoffrey Beene Sweater, Nautical Stripe Sweater', N'<div id="longDescription" class="longDescription">
	Thow down an anchor on the sporty, nautical style of this Geoffrey Beene sweater.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Crew-neck sweater from Geoffrey Beene</li>
  
    <li>Nautical stripes</li>
  
  
  

</ul>', 65.0000, 29.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (226, N'Geoffrey Beene Sweater Vest, Argyle Sweater Vest', N'<div id="longDescription" class="longDescription">
	Add an extra dimension to your seasonal style with this argyle sweater vest from Geoffrey Beene.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Geoffrey Beene sweater vest</li>
  
    <li>Argyle</li>
  
  
  

</ul>', 60.0000, 29.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (227, N'Club Room Sweater, Cashmere Sweater Vest', N'<div id="longDescription" class="longDescription">
	Top off your look with the luxurious polish of this versatile cashmere sweater vest from Club Room.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cashmere</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Club Room cashmere sweater vest</li>
  
    <li>Sleeveless; v-neck</li>
  
    <li>Made of two-ply cashmere, these lightweight sweaters provide excellent warmth</li>
  
  
  

</ul>', 125.0000, 79.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (228, N'Izod Sweater, Sport Ribbed Quarter Zip', N'<div id="longDescription" class="longDescription">
	Do yourself a solid and toss on the cool, casual polish of this solid ribbed quarter-zip sweater from Izod.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Izod ribbed solid pullover</li>
  
    <li>Quarter zip with mock-neck styling</li>
  
  
    
      <li><a class="bulletLinks" href="http://www1.macys.com/campaign/social?campaign_id=41&channel_id=1&bundle_entryPath=/products.html">Check out the IZOD for INDY collection &amp; Podcasts</a></li>
    
  
  

</ul>', 68.0000, 29.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (229, N'Van Heusen Sweater, Cotton Lattice V Neck', N'<div id="longDescription" class="longDescription">
	Van Heusen tones down a classic argyle design with the subtle sophistication of this lattice-patterned V-neck sweater.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Van Heusen v-neck sweater</li>
  
    <li>Lattice design</li>
  
  
  

</ul>', 60.0000, 34.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (230, N'Club Room Sweater, Merino V Neck Sweater', N'<div id="longDescription" class="longDescription">
	Stock up for the season with the refined feel of this soft merino wool sweater, a wardrobe essential from Club Room.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Merino wool</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Club Room v neck sweater</li>
  
    <li>Long sleeves</li>
  
  
  

</ul>', 70.0000, 39.9900, 1, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (231, N'Le Suit Suit, Long Sleeve Shawl Collar Jacket & Straight Leg Pants', N'<div id="longDescription" class="longDescription">
	Tailored details like stylish seaming and rolled split cuffs make this Le Suit pants suit an ideal pick for your workweek wardrobe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: shawl collar, button-front closure, long sleeves with rolled split cuffs, decorative seams at each side, shoulder pads</li>
  
    <li>Pants: high rise approx. 12 inches, relaxed fit through hips and thighs, straight leg, zipper with hook-and-bar closure, no belt loops or pockets</li>
  
    <li>Both pieces are lined; feature variegated color</li>
  
    <li>Jacket hits at hip; approx. 25-1/2 inches long from center back neckline</li>
  
    <li>Pants approx. inseam: 31 inches</li>
  
  
  

</ul>', 200.0000, NULL, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (232, N'Le Suit Suit, Sleeveless Animal Printed Sheath Dress & Shantung Bow Jacket', N'<div id="longDescription" class="longDescription">
	Leopard is ladylike when paired with this gorgeous shantung jacket, bedecked with bow details at the collar. A truly unique special occasion suit by Le Suit!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Women&#039;s evening suits</li>
  
    <li>Jacket: foldover collar wtih bow detail, open front with no closure, long sleeves with split cuffs, princess seams, shantung texture, shoulder pads</li>
  
    <li>Dress: scoop neckline, back zipper with hook-and-eye closure, sleeveless, fitted, leopard animal print allover, sheath silhouette</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 22 inches long from center back neckline</li>
  
    <li>Dress hits above knee; approx. 39 inches long from center back neckline</li>
  
  
  

</ul>', 200.0000, NULL, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (233, N'Tahari by ASL Suit, Sleeveless Beaded Sheath Dress & Long Beaded Jacket ', N'<div id="longDescription" class="longDescription">
	Go for subtle elegance at your next special event in this Tahari by ASL suit, featuring crisp tailoring for a flattering fit. Vintage-inspired beading is super-chic, while the neutral color is simply timeless.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: acetate</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Women&#039;s evening suits</li>
  
    <li>Jacket: beaded scoop neckline, single hook-and-eye closure, long sleeves with beaded cuffs, shoulder pads</li>
  
    <li>Dress: scoop neckline with beading, back zipper with hook-and-eye closure, sleeveless, pencil silhouette, lined, slit at center back hem, hits at knee  </li>
  
    <li>Both pieces are lined </li>
  
    <li>Jacket hits at knee; approx. 40 inches long from center back neckline</li>
  
    <li>Dress hits above knee; approx. 37 inches long from center back neckline </li>
  
  
  

</ul>', 320.0000, 171.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (234, N'Le Suit Suit, Long Sleeve Cuffed Bow Collar Metallic Jacket & Pencil Skirt', N'<div id="longDescription" class="longDescription">
	Le Suit reimagines the special occasion suit in this shimmering metallic creation, adorned with an asymmetrical button-front closure and a chic bow-inspired collar.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: foldover collar with bow detail, asymmetrical button-front closure, long sleeves with split cuffs, shoulder pads</li>
  
    <li>Skirt: back zipper with hook-and-bar closure, no belt loops or pockets, slit at back hem, pencil silhouette</li>
  
    <li>Both pieces are lined; feature shimmery metallic finish</li>
  
    <li>Jacket hits at hip; approx. 24 inches long from center back neckline</li>
  
    <li>Skirt hits at knee; approx. 25 inches long</li>
  
  
  

</ul>', 200.0000, NULL, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (235, N'Tahari by ASL Suit, Three Quarter Sleeve Cuffed Goldtone Button Jacket & Skirt', N'<div id="longDescription" class="longDescription">
	Two rows of gold-tone buttons on the jacket and a row at the skirt''s waistband transforms the look of this Tahari by ASL skirt suit. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: notched collar, hook-and-eye closures, gold-tone faux buttons, cuffed three-quarter sleeves, flap pockets at hips, shoulder pads</li>
  
    <li>Skirt: back zipper with hook-and-eye closure, gold-tone decorative buttons at waistband, no belt loops or pockets, straight fit</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 23 inches long from center back neckline</li>
  
    <li>Skirt hits above knee; approx. 23 inches long</li>
  
  
  

</ul>', 280.0000, 139.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (236, N'Nine West Suit, Long Sleeve Contrast Stitched Jacket, Sleeveless Cowl Neck Cami & Straight Leg Pants', N'<div id="longDescription" class="longDescription">
	Contrast stitching on Nine West''s jacket makes this suit a standout. It looks expertly coordinated featuring a matching cami and sleek pants.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: notched collar with contrast stitching, button-front closure, long sleeves with buttoned cuffs, off-seam pockets at waist, shoulder pads</li>
  
    <li>Cami: cowl neckline, side zipper, sleeveless</li>
  
    <li>Pants: high rise approx. 11 inches, relaxed fit through hips and thighs, straight leg, zipper with double hook-and-bar closure, no belt loops or pockets</li>
  
    <li>Jacket is lined; pants and cami are unlined</li>
  
    <li>Jacket hits at hip; approx. 24 inches long from center back neckline</li>
  
    <li>Pants approx. inseam: 30 inches</li>
  
  
  

</ul>', 240.0000, 155.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (237, N'Le Suit Suit, Ruffled Contrast Collar Seamed Jacket & Skirt', N'<div id="longDescription" class="longDescription">
	A contrasting ruffled collar spells special occasion for this Le Suit look. Peep-toes pair perfectly with this skirt suit!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Women&#039;s evening suits</li>
  
    <li>Jacket: ruffled collar with contrasting lining, button-front closure, long sleeves, princess seams, seamed waist, shoulder pads</li>
  
    <li>Skirt: back zipper with hook-and-eye closure, no belt loops or pockets, slit at back hem, straight fit</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 24 inches long from center back neckline</li>
  
    <li>Skirt hits at knee; approx. 25 inches long</li>
  
  
  

</ul>', 200.0000, NULL, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (238, N'Tahari by ASL Suit, Long Sleeve Notched Shawl Collar', N'<div id="longDescription" class="longDescription">
	Tahari by ASL makes a nine-to-five suit that really works: This sleek jacket and these bootcut pants feature a fit that looks custom-tailored.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/rayon/spandex; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Women&#039;s work suits</li>
  
    <li>Jacket: notched shawl collar, button-front closure, long sleeves, flap pockets at waist, shoulder pads</li>
  
    <li>Pants: mid rise approx. 9-1/2 inches, straight fit through hips and thighs, bootcut leg, zipper with double hook-and-bar closure, belt loops, removable belt included, no pockets</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 25 inches long from center back neckline</li>
  
    <li>Pants approx. inseam: 31 inches</li>
  
  
  

</ul>', 280.0000, 167.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (239, N'Tahari by ASL Suit, Studded Single Button Jacket & Bootcut Pants', N'<div id="longDescription" class="longDescription">
	Sleek studding at the waist of Tahari by ASL''s single-button jacket adds modern edge to this suit. Bootcut pants complete the contemporary look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: notched collar, single-button closure, long sleeves, studded detail at waist, shoulder pads</li>
  
    <li>Pants: high rise approx. 12 inches, relaxed fit through hips and thighs, bootcut leg, zipper with tab closure, no belt loops or pockets</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 28 inches long from center back neckline</li>
  
    <li>Pants approx. inseam: 31 inches</li>
  
  
  

</ul>', 280.0000, 139.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (240, N'Tahari by ASL Suit, Buckle Tab Button Front Red Jacket & Skirt', N'<div id="longDescription" class="longDescription">
	Make a stylish statement in this red skirt suit from Tahari by ASL. The jacket features unique touches like buckled tab details at the waist and split three-quarter sleeves.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: notched collar, button-front closure, three-quarter sleeves with split cuffs, buckled tabs at waist, seamed waistband, shoulder pads</li>
  
    <li>Skirt: back zipper with hook-and-eye closure, no belt loops or pockets, pencil silhouette</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at high hip; approx. 24 inches long from center back neckline</li>
  
    <li>Skirt hits above knee; approx. 23 inches long</li>
  
  
  

</ul>', 280.0000, 139.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (241, N'Nine West Suit, Long Sleeve Shawl Collar Jacket & Pencil Skirt', N'<div id="longDescription" class="longDescription">
	A jacket with a deep shawl collar and single button closure gives this Nine West skirt suit a contemporary look. It''s perfect for pairing with printed camis or a neutral layer.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/rayon; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: notched shawl collar, single button closure, long sleeves with buttoned cuffs, off-seam pockets at waist, shoulder pads</li>
  
    <li>Skirt: side zipper with hook-and-bar closure, no belt loops or pockets, slit at back hem, pencil silhouette</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 24 inches long from center back neckline</li>
  
    <li>Skirt hits at knee; approx. 23 inches long</li>
  
  
  

</ul>', 200.0000, 129.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (242, N'Tahari by ASL Suit, Three Quarter Sleeve Ribbon Belt Shawl Collar Satin Jacket & Lace Scalloped Hem Skirt', N'<div id="longDescription" class="longDescription">
	This special occasion suit from Tahari by ASL combines sumptuous satin on the jacket with the sophisticated look of lace on the skirt. The jacket''s ribbon belt and the skirt''s scalloped hem are especially striking.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: acetate</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: shawl collar, hidden snap closure, three-quarter sleeves with split cuffs, belt loops, removable ribbon tie belt, two inverted pleats at back, shoulder pads</li>
  
    <li>Skirt: back zipper with hook-and-eye closure, no belt loops or pockets, slit at back hem, scalloped hem, lace-like overlay, pencil silhouette</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 25 inches long from center back neckline</li>
  
    <li>Skirt hits above knee; approx. 23 inches long</li>
  
  
  

</ul>', 320.0000, 191.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (243, N'Tahari by ASL Suit, Doubled Breasted Pindot Stripe Jacket & Bootcut Pants', N'<div id="longDescription" class="longDescription">
	With a sleek pindot stripe and a double-breasted silhouette, this suit from Tahari by ASL makes a sophisticated impression. Wear it for an important interview or your next presentation!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/rayon; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Women&#039;s work suits</li>
  
    <li>Jacket: notched collar, double-breasted button closure, long sleeves, epaulettes at shoulders, flap pockets at waist, shoulder pads</li>
  
    <li>Pants: high rise approx. 11 inches, relaxed fit through hips and thighs, bootcut leg, zipper with double hook-and-bar tab closure, belt loops, no pockets</li>
  
    <li>Both pieces are lined; feature pindot stripe pattern</li>
  
    <li>Jacket hits at hip; approx. 25 inches long from center back neckline</li>
  
    <li>Pants approx. inseam: 31 inches</li>
  
  
  

</ul>', 280.0000, 167.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (244, N'Calvin Klein Suit, Long Sleeve Glen Plaid Jacket & Straight Leg Pants', N'<div id="longDescription" class="longDescription">
	A glen plaid pattern and a graceful fit make this Calvin Klein suit a flawless pick for the day of an important presentation or whenever a great first impression is on the to-do list.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: notched collar, button-front closure, long sleeves with buttoned split cuffs, welt pockets at waist, shoulder pads</li>
  
    <li>Pants: mid rise approx. 9-1/2 inches, relaxed fit through hips and thighs, straight leg, zipper with hook-and-bar tab closure, no belt loops, on-seam pockets at hips, welt pockets at back</li>
  
    <li>Jacket is lined, pants are unlined; both feature glen plaid print</li>
  
    <li>Jacket hits at hip; approx. 23-1/2 inches long from center back neckline</li>
  
    <li>Pants approx. inseam: 32 inches</li>
  
  
  

</ul>', 280.0000, 150.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (245, N'Calvin Klein Suit, Belted Tweed Jacket & Straight Leg Pants', N'<div id="longDescription" class="longDescription">
	The anecdote to an all-black ensemble: This Calvin Klein suit includes a stylish tweed jacket that comes with a matching self-tie belt.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Pant shell:polyester/rayon/spandex; pant lining:polyester; jacket shell:acrylic; jacket lining:polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: oversized foldover collar, self-tie removable belt, belt loops, long sleeves, tweed texture, shoulder pads</li>
  
    <li>Pants: mid rise approx. 9 inches, straight fit through hips and thighs, straight leg, zipper with hook-and-bar closure, no belt loops, on-seam pockets at hips</li>
  
    <li>Jacket is lined; pants are unlined</li>
  
    <li>Jacket hits hip; approx. 27 inches long from center back neckline</li>
  
    <li>Pants approx. inseam: 32 inches</li>
  
  
  

</ul>', 320.0000, 171.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (246, N'Tahari by ASL Suit, Three Quarter Sleeve Ruffled Collar Jacket & Skirt', N'<div id="longDescription" class="longDescription">
	Tahari by ASL''s latest skirt suit features a jacket with a gorgeous ruffled neckline and a seamed waistline that creates a peplum-like effect. A chic suit that''s sure to be worn to many an occasion!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: ruffled neckline, hidden snap-button closure, three faux buttons at front, three-quarter sleeves with split cuffs, seamed through bust, seamed at waist, peplum at hips, shoulder pads</li>
  
    <li>Skirt: back zipper with hook-and-eye closure, no belt loops or pockets, straight fit</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 24 inches long from center back neckline</li>
  
    <li>Skirt hits above knee; approx. 23 inches long</li>
  
  
  

</ul>', 280.0000, 167.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (247, N'Kasper Suit, Long Sleeve Buttoned Flap Pocket Jacket & Bootcut Pants', N'<div id="longDescription" class="longDescription">
	This Kasper suit is made special with gilded buttons and a crisscross detail at the waistline of the jacket. A sleek option for wherever you may be headed!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/spandex; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: collarless, button-front closures, long sleeves, crisscross and grommet waist detail, buttoned flap pockets at waist, shoulder pads</li>
  
    <li>Pants: high rise approx. 11 inches, relaxed fit through hips and thighs, bootcut leg, zipper with hook-and-bar closure, no belt loops or pockets</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 23 inches long from center back neckline</li>
  
    <li>Pants approx. inseam: 32 inches</li>
  
  
  

</ul>', 280.0000, 167.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (248, N'Evan Picone Suit, Long Sleeve Jacket & Pleated Hem Pencil Skirt', N'<div id="longDescription" class="longDescription">
	Just a small detail?a pleated panel at each side of the skirt hem?transforms the aesthetic of this Evan Picone skirt suit into something perfectly balanced between professional and feminine.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: notched collar, button-front closure, long sleeves, flap pockets at waist, shoulder pads</li>
  
    <li>Skirt: back zipper with hook-and-eye closure, no belt loops or pockets, pleated panels at sides of hem</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 24 inches long from center back neckline</li>
  
    <li>Skirt hits at knee; approx. 23 inches long</li>
  
  
  

</ul>', 200.0000, NULL, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (249, N'Tahari by ASL Suit, Three Quarter Sleeve Belted Jacket & Pleated Skirt', N'<div id="longDescription" class="longDescription">
	Tailored details set this Tahari by ASL skirt suit apart. A skinny belt laces through the jacket''s flap pockets, lending a unique look, and pleated panels at the skirt hem add charisma to the silhouette.  
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Women&#039;s suits</li>
  
    <li>Jacket: notched collar, button-front closure, three-quarter sleeves with split cuffs, slight puff shoulder, flap pockets laced with removable belt, shoulder pads</li>
  
    <li>Skirt: side zipper with hook-and-eye closure, no belt loops or pockets, pleated detail at each side of hem, straight fit</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 23 inches long from center back neckline</li>
  
    <li>Skirt hits at knee; approx. 22 inches long</li>
  
  
  

</ul>', 280.0000, 150.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (250, N'Tahari by ASL Suit, Long Sleeve Gold Button Jacket & Wide Leg Pants', N'<div id="longDescription" class="longDescription">
	Gold hardware puts the polish on this sleek Tahari by ASL suit. The crisp cut is figure flattering and sure to make a favorable impression for any occasion.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Jacket shell:polyester; body lining:acetate/nylon; sleeve lining:polyester; pants:polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: notched collar, button-front closure, long sleeves, flap pockets with gold detail at waist, shoulder pads</li>
  
    <li>Pants: high rise approx. 11 inches, relaxed fit through hips and thighs, wide leg, zipper with double hook tab closure, no belt loops or pockets</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 25 inches long from center back neckline</li>
  
    <li>Pants approx. inseam: 31 inches</li>
  
  
  

</ul>', 280.0000, 150.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (251, N'Tahari by ASL Suit, Shadow Stripe Zippered Pocket Jacket & Bootcut Pants', N'<div id="longDescription" class="longDescription">
	Tahari by ASL outfits this suit with modern edge: The jacket features a notched shawl collar that descends to a single clasp closure, and also features two zippered pockets at the waist.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Women&#039;s work suits</li>
  
    <li>Jacket: notched shawl collar, single clasp closure, long sleeves, zippered pockets at waist, shoulder pads</li>
  
    <li>Pants: high rise approx. 12 inches, straight fit through hips and thighs, bootcut leg, zipper with three-button closure at wide waistband, no belt loops, off-seam pockets at front</li>
  
    <li>Both pieces are lined; feature shadow stripe pattern</li>
  
    <li>Jacket hits at hip; approx. 25 inches long from center back neckline</li>
  
    <li>Pants approx. inseam: 31 inches</li>
  
  
  

</ul>', 280.0000, 167.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (252, N'Kasper Suit, Long Sleeve Open Front Embroidered Jacket, Scoop Neck Shell & Skirt', N'<div id="longDescription" class="longDescription">
	The swirling trim of Kasper''s jacket and shell lend sophistication, while the solid pencil skirt silhouette is slightly pleated at the hem to add flair as a finishing touch.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: collarless, open front with no closure, long sleeves with split cuffs, embroidered detail at neck and front placket, shoulder pads</li>
  
    <li>Shell: scoop neckline, side zipper, sleeveless, embroidered detail at neckline</li>
  
    <li>Skirt: back zipper with hook-and-eye closure, no belt loops or pockets, inverted pleats at hem for slight flare</li>
  
    <li>All pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 23 inches long from center back neckline</li>
  
    <li>Skirt hits at knee; approx. 24 inches long</li>
  
  
  

</ul>', 320.0000, 191.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (253, N'Tahari by ASL Top, Sleeveless Ruffled Scoop Neck Dot Print Blouse', N'<div id="longDescription" class="longDescription">
	Dots are stylish any day and with almost anything! Tahari by ASL adds an extra dash of panache to this work-ready blouse with a ruffle down the center.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Machine wash</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline</li>
  
    <li>Side zipper</li>
  
    <li>Sleeveless</li>
  
    <li>Ruffle at center from neckline to hem</li>
  
    <li>Easy fit</li>
  
    <li>Lined</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 44.9800, NULL, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (254, N'Jones New York Jacket, Long Sleeve Metallic Boucle Blazer', N'<div id="longDescription" class="longDescription">
	Shape up your wardrobe with this versatile blazer from Jones New York. A structured shape in metallic boucl? nods to couture suiting ??so chic!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/acrylic; lining: acetate</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Stand collar </li>
  
    <li>Hook-front closure </li>
  
    <li>Long sleeves </li>
  
    <li>Welt pockets at waist</li>
  
    <li>Lined </li>
  
    <li>Allover metallic boucl?</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 239.0000, NULL, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (255, N'AK Anne Klein Suit, Seamed Sequin Jacket & Pencil Skirt', N'<div id="longDescription" class="longDescription">
	A flurry of sequins makes this AK Anne Klein suit a festive choice for seasonal celebrating. The sparkling contrast against a wool blend is especially striking.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Rayon/wool; lining: acetate</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Women&#039;s evening suits</li>
  
    <li>Jacket: notched collar, single button closure, long sleeves with split cuffs, welt pockets at waist, princess seams, sequins throughout, shoulder pads</li>
  
    <li>Skirt: back zipper with hook-and-eye closure, no belt loops or pockets, slit at back hem, pencil silhouette</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 22 inches long from center back zipper</li>
  
    <li>Skirt hits above knee; approx. 23 inches long</li>
  
  
  

</ul>', 320.0000, 191.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (256, N'Kasper Suit, Long Sleeve Jewel Button Beaded Printed Jacket & Satin Pencil Skirt', N'<div id="longDescription" class="longDescription">
	A shimmering satin texture, sparkling bauble buttons and jewel-like beading at the neckline makes this Kasper skirt suit a stunner for evening occasions.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/metallic/polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: collarless jeweled neckline, jewel-like button-front closure, long sleeves with split cuffs, allover marbled print, shoulder pads</li>
  
    <li>Skirt: back zipper with hook-and-eye closure, no belt loops or pockets, slit at back hem, pencil silhouette, satin texture</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 21 inches long from center back neckline</li>
  
    <li>Skirt hits at knee; approx. 25 inches long</li>
  
  
  

</ul>', 280.0000, 181.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (257, N'Kasper Suit, Long Sleeve Floral Neck Shantung Jacket & Pencil Skirt', N'<div id="longDescription" class="longDescription">
	An elegant shantung texture adorns this Kasper skirt suit, which also features a flower-embellished neckline and sophisticated fit.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: collarless with floral embellishment, hidden button-front closure, long sleeves with split cuffs, seamed through torso, shoulder pads</li>
  
    <li>Skirt: back zipper with hook-and-eye closure, no belt loops or pockets, pencil silhouette</li>
  
    <li>Both pieces are lined; feature shantung texture</li>
  
    <li>Jacket hits at hip; approx. 21 inches long from center back neckline</li>
  
    <li>Skirt hits at knee; approx. 24 inches long</li>
  
  
  

</ul>', 280.0000, 167.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (258, N'Tahari by ASL Suit, Three Quarter Sleeve Seamed Jacket & Lace Scalloped Hem Skirt', N'<div id="longDescription" class="longDescription">
	This elegant skirt suit from Tahari by ASL features a chic three-quarter-sleeve jacket and a sophisticated skirt with a lace overlay. The scalloped hem is a feminine final flourish.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining:acetate</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Women&#039;s evening suits</li>
  
    <li>Jacket: notched collar, button-front closure, three-quarter sleeves, princess seams, seamed waist, flap pockets at waist, shoulder pads</li>
  
    <li>Skirt: back zipper with hook-and-eye closure, no belt loops or pockets, lace overlay, scalloped hem, straight fit</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 22 inches long from center back neckline</li>
  
    <li>Skirt hits above knee; approx. 23 inches long</li>
  
  
  

</ul>', 320.0000, 191.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (259, N'Tahari by ASL Blouse, Sleeveless Pleated Keyhole Scoop Neck', N'<div id="longDescription" class="longDescription">
	Little details?like pleating at the scooped neckline and a buttoned keyhole at the back?make this Tahari by ASL blouse a charmer for Monday through Friday. And at this price, you don''t have to choose between colors!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/spandex</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline with pleating</li>
  
    <li>Keyhole with button closure at back</li>
  
    <li>Sleeveless</li>
  
    <li>Relaxed fit</li>
  
    <li>Hits at upper hip</li>
  
  
  

</ul>', 39.9800, NULL, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (260, N'Nine West Suit, Long Sleeve Jacket, Sleeveless Ruffled Animal Print Cami & Skirt', N'<div id="longDescription" class="longDescription">
	Nine West makes matching a breeze with this three-piece skirt suit, featuring a tailored jacket, striking animal-printed cami and a sleek skirt with an exposed side zipper.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: notched collar, single button closure, long sleeves with buttoned cuffs, flap pockets at waist, shoulder pads</li>
  
    <li>Cami: V-neckline, side zipper, sleeveless, ruffled and ruched, animal printed</li>
  
    <li>Skirt: exposed side zipper, no belt loops or pockets, straight fit</li>
  
    <li>Jacket and skirt are lined; cami is unlined</li>
  
    <li>Jacket and cami hit at hip; approx. 24 inches long from center back neckline</li>
  
    <li>Skirt hits at knee; approx. 23 inches long</li>
  
  
  

</ul>', 240.0000, NULL, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (261, N'Tahari by ASL Suit, Three Quarter Sleeve Sequin Cuff Shantung Jacket, Cami & Skirt', N'<div id="longDescription" class="longDescription">
	Tahari by ASL''s luxurious shantung skirt suit features a dash of sequins at the neckline and cuffs for a shimmering, sparkling look for your next special occasion.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Women&#039;s evening suits</li>
  
    <li>Jacket: collarless, single hook-and-eye closure, three-quarter sleeves with sequined cuffs, slight puffed shoulder, shoulder pads</li>
  
    <li>Cami: sequined scoop neckline, side zipper, sleeveless, slightly fitted</li>
  
    <li>Skirt: back zipper with hook-and-eye closure, no belt loops or pockets, pleating and slit at back hem, straight fit</li>
  
    <li>All pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 23 inches long from center back neckline</li>
  
    <li>Cami hits at hip; approx. 20 inches long from center back neckline</li>
  
    <li>Skirt hits above knee; approx. 26 inches long</li>
  
  
  

</ul>', 320.0000, 191.9900, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (262, N'Nine West Suit, Long Sleeve Tweed Jacket & Pencil Skirt', N'<div id="longDescription" class="longDescription">
	Slight gathering at the welt pockets of Nine West''s pindot tweed jacket lend a custom-tailored look to this skirtsuit.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/rayon/spandex; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: notched collar, button-front closure, long sleeves with buttons at cuffs, welt pockets at waist with slight gathering, rounded hem</li>
  
    <li>Skirt: side zipper with hook-and-eye closure, no pockets or belt loops, slit at back hem, straight fit</li>
  
    <li>Both pieces are lined; feature a subtle pindot tweed texture</li>
  
    <li>Jacket hits at hip; approx. 24 inches long from center back neckline</li>
  
    <li>Skirt hits at knee; approx. 23 inches long</li>
  
  
  

</ul>', 240.0000, NULL, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (263, N'Le Suit Suit, Long Sleeve Pinstripe Jacket, Printed Scarf & Straight Leg Pants', N'<div id="longDescription" class="longDescription">
	Le Suit adds a pop of color to this pinstriped pantsuit with the addition of a chic scarf: Alternate wearing with and without to keep your look fresh.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/rayon; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: notched collar, button-front closure, bracelet sleeves, flap pockets at waist, shoulder pads</li>
  
    <li>Pants: hook-and-bar with side zipper closure, straight fit through hips and thighs, straight leg, no pockets or belt loops, seaming at center of leg, ankle length</li>
  
    <li>Both pieces are lined; feature a pinstripe pattern</li>
  
    <li>Removable printed scarf</li>
  
    <li>Jacket hits at hip; approx. 25-1/2 inches long from center back neckline</li>
  
    <li>Pants approx. inseam: 31 inches</li>
  
  
  

</ul>', 200.0000, NULL, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (264, N'AK Anne Klein Suit, Long Sleeve Scalloped Jacket & Belted Sheath Dress', N'<div id="longDescription" class="longDescription">
	AK Anne Klein dresses up a belted sheath with a bold blue hue and a perfectly coordinating jacket with scalloped edges. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/rayon/spandex; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: collarless, open front with no closure, long sleeves, scalloped edges</li>
  
    <li>Dress: high neckline, back zipper, cap sleeves, removable belt, princess seams, slit at back hem, sheath silhouette</li>
  
    <li>Both pieces are lined</li>
  
    <li>Jacket hits at hip; approx. 17 inches long from center back neckline</li>
  
    <li>Dress hits at knee; approx. 38 inches long from center back neckline</li>
  
  
  

</ul>', 320.0000, NULL, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (265, N'Style&co. Pants, Tab Closure Flat Front Stretch Trouser', N'<div id="longDescription" class="longDescription">
	Flattering pants are an all-weather, all-season must have! This trouser-cut pair from Style&co. has a touch of stretch for an impeccable fit.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/rayon/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise: approx. 10 inches </li>
  
    <li>Straight fit through hips and thighs</li>
  
    <li>Trouser-cut leg</li>
  
    <li>Extended tab closure with hook-and-bar and zipper at waist </li>
  
    <li>No pockets at front; back welt pockets</li>
  
    <li>Flat front; trouser-creased leg</li>
  
    <li>Fabric has stretch for a great fit</li>
  
    <li>Available in approx. inseams: 30&#034; (S), 33&#034; (R)</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=143&channel_id=1">Shop the Pant Finder</a></li>
    
  
  

</ul>', 27.9800, NULL, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (266, N'Charter Club Top, Sleeveless Cowlneck Blouse', N'<div id="longDescription" class="longDescription">
	A cowl neckline adds elegance to this top by Charter Club. A low price and high style makes this one a must!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Cowl neckline</li>
  
    <li>Pullover style</li>
  
    <li>Sleeveless with bra-friendly straps</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 21.9800, NULL, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (267, N'Tahari by ASL Suit, Three Quarter Sleeve Tie Front Jacket & Pencil Skirt', N'<div id="longDescription" class="longDescription">
	Elegant and classic, this skirt suit from Tahari by ASL can be dressed up or down for nearly any occasion. A must-have for any wardrobe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: polyester</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Jacket: foldover collar, hidden button front closure, three quarter length sleeves, self-tie bow at front waist, shoulder pads</li>
  
    <li>Skirt: pencil shape, hidden back zipper closure</li>
  
    <li>Both pieces are lined</li>
  
    <li>Tailored fit, textured fabric</li>
  
    <li>Jacket hits at hip; approx. 21 inches long from center back neckline</li>
  
    <li>Skirt hits at knee; approx. 24 inches long from center back waist</li>
  
  
  

</ul>', 280.0000, NULL, 2, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (268, N'Style&co. Top, Three Quarter Sleeve Sequin A-Line Tunic', N'<div id="longDescription" class="longDescription">
	The tunic gets a flattering update in this look from Style&co. A scoop neckline, shimmering sequins and flared godet construction add feminine panache!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/rayon/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline </li>
  
    <li>Pullover style </li>
  
    <li>Three-quarter sleeves with ruched cuffs </li>
  
    <li>Sequins at chest</li>
  
    <li>Godet pleats at back add volume</li>
  
    <li>Tunic length; A-line silhouette </li>
  
    <li>Asymmetrical hem is longest at back</li>
  
  
  

</ul>', 42.0000, 19.9900, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (269, N'Cha Cha Vente Top, Long Sleeve Tiered Ruffle Scoop Neck', N'<div id="longDescription" class="longDescription">
	Gathered tiers make for an elegantly draped look. Cha Cha Vente''s ruffled tee is anything but ordinary!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Rayon/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Made in USA</li>
  
    <li>Scoop neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Long sleeves</li>
  
    <li>Tiered ruffles at front</li>
  
    <li>Easy fit</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 44.0000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (270, N'Cha Cha Vente Top, Kimono Sleeve Accordion Pleated Belted Chiffon Blouse', N'<div id="longDescription" class="longDescription">
	Totally elegant and pleasingly textural, Cha Cha Vente''s pleated, belted blouse elevates any outfit!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: rayon/spandex</li>
  
    <li>Hand wash</li>
  
    <li>Imported</li>
  
    <li>V-neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Kimono sleeves</li>
  
    <li>Sheer chiffon overlay with allover accordion pleating</li>
  
    <li>Belted at waist</li>
  
    <li>Relaxed fit</li>
  
    <li>Camisole is included</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 48.0000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (271, N'Style&co. Sport Top, Long Sleeve Velour Metallic Stripe Cowlneck ', N'<div id="longDescription" class="longDescription">
	This great look from Style&co. Sport combines lush velour fabric with a cozy cowlneck for sumptuous style. Metallic stripes add a dash of sparkle, too!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/other</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Cowl neckline </li>
  
    <li>Pullover style</li>
  
    <li>Long sleeves </li>
  
    <li>Velour fabric with metallic stripes </li>
  
    <li>Patch pockets at hips</li>
  
    <li>Easy fit </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 49.0000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (272, N'Lucky Brand Jeans Top, Three Quarter Sleeve Graphic Printed Scoopneck Tee', N'<div id="longDescription" class="longDescription">
	A vintage-inspired graphic tee from Lucky Brand Jeans is the perfect match with faded denim. Play up the bohemian vibe with handcrafted accessories!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/Modal?/cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline </li>
  
    <li>Pullover style </li>
  
    <li>Three-quarter sleeves </li>
  
    <li>Printed faded floral and text graphic at front </li>
  
    <li>Easy fit </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 39.5000, 34.9900, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (273, N'Lucky Brand Jeans Top, Mena Long Sleeve Tribal Striped Scoopneck Peasant ', N'<div id="longDescription" class="longDescription">
	A striped tribal print makes a colorful statement in this peasant top from Lucky Brand Jeans. Pair it with faded denim for weekend style!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/Modal?</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline with keyhole </li>
  
    <li>Pullover style </li>
  
    <li>Long sleeves </li>
  
    <li>Smocked neckline and cuffs </li>
  
    <li>Allover striped tribal print </li>
  
    <li>Easy fit </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 59.5000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (274, N'DKNY Jeans Top, Long Sleeve Ruched V-Neck', N'<div id="longDescription" class="longDescription">
	Cotton jersey lends a so-soft feel to this DKNY Jeans top. Ruching at the sides and bejeweled shoulders add a dash of sparkle, too!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>V-neckline</li>
  
    <li>Pullover style; no closures </li>
  
    <li>Long sleeves </li>
  
    <li>Ruched sides </li>
  
    <li>Ruching and jeweled embellishment at the shoulders </li>
  
    <li>Fitted silhouette </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 44.0000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (275, N'Cha Cha Vente Top, Three Quarter Sleeve Chiffon Beaded Vest Layered Look ', N'<div id="longDescription" class="longDescription">
	A perfectly-coordinated look without the fuss, from Cha Cha Vente. This tee and embellished chiffon vest combo can be dressed up or worn casually with jeans!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Rayon/spandex; vest: polyester/rayon</li>
  
    <li>Hand wash</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Three quarter length sleeves</li>
  
    <li>Comes with removable beaded chiffon vest</li>
  
    <li>Easy fit</li>
  
    <li>Both pieces hit at hip</li>
  
  
  

</ul>', 58.0000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (276, N'Cha Cha Vente Top, Batwing Sleeve Printed Peplum Hem', N'<div id="longDescription" class="longDescription">
	An exotic print creates an alluring look on Cha Cha Vente''s pretty peplum top!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester</li>
  
    <li>Hand wash</li>
  
    <li>Made in USA</li>
  
    <li>Scoop neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Batwing sleeves</li>
  
    <li>Allover exotic print</li>
  
    <li>Relaxed fit</li>
  
    <li>Smocked peplum hem</li>
  
    <li>Unlined</li>
  
    <li>Rounded hem</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 58.0000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (277, N'AGB Top, Three Quarter Sleeve Printed Ruffle Layered Look', N'<div id="longDescription" class="longDescription">
	Printed ruffles give this AGB top extra kick! The best part? The look of layers with the ease of one-piece-dressing!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/rayon/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Shawl collar with scoop neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Three quarter length sleeves with ruched cuffs</li>
  
    <li>Gathered shoulders</li>
  
    <li>Printed ruffled inset; layered look</li>
  
    <li>Relaxed fit</li>
  
    <li>Asymmetrical hem is longer at front</li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 50.0000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (278, N'Charter Club Top, Sleeveless Scoopneck Sequin Tank ', N'<div id="longDescription" class="longDescription">
	Jazz up your favorite jeans with this sequin tank top from Charter Club! Made from soft cotton and featuring allover sequins, it''s a casual basic that sparkles.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline </li>
  
    <li>Pullover style </li>
  
    <li>Sleeveless; thick straps are bra-friendly</li>
  
    <li>Allover sequins </li>
  
    <li>Easy fit </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 39.0000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (279, N'Cha Cha Vente Top, Three Quarter Sleeve Beaded Layered Look', N'<div id="longDescription" class="longDescription">
	Layers without effort, from Cha Cha Vente. The coordinating cardigan and shell are actually all one piece!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Rayon/spandex</li>
  
    <li>Machine wash</li>
  
    <li>Made in USA</li>
  
    <li>Scoop neckline with beaded applique </li>
  
    <li>Pullover styling</li>
  
    <li>Three quarter length sleeves</li>
  
    <li>Relaxed fit</li>
  
    <li>Layered look is all one piece</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 48.0000, 34.9900, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (280, N'NY Collection Top, Three Quarter Sleeve Printed Peasant', N'<div id="longDescription" class="longDescription">
	A flowing fit and an exotic print create fashion magic! NY Collection''s pretty peasant top adds airy allure to skinny pants and jeans!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester</li>
  
    <li>Hand wash</li>
  
    <li>Imported</li>
  
    <li>Peasant neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Three quarter length sleeves with ruffled cuffs</li>
  
    <li>Allover exotic print</li>
  
    <li>Relaxed fit</li>
  
    <li>Unlined</li>
  
    <li>Ruffle hem</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 48.0000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (281, N'Lauren by Ralph Lauren Top, Eliza Ruffle Long Sleeve V-Neck', N'<div id="longDescription" class="longDescription">
	A chic ruffled V-neckline lends romantic appeal to this baby-ribbed cotton pullover from Lauren by Ralph Lauren.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>V-neckline with triple layer of woven cotton ruffles</li>
  
    <li>Baby-ribbed cotton body</li>
  
    <li>Sewn cuffs and hem</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=259&channel_id=1&bundle_entryPath=/shop/stars_ralphlauren_her ">Lauren Holiday Gifts</a></li>
    
  
  

</ul>', 59.5000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (282, N'Cha Cha Vente Top, Long Sleeve Cowl Neck Striped Tunic', N'<div id="longDescription" class="longDescription">
	Striped and ready for action! Cha Cha Vente''s cool, casual tunic adds graphic appeal to jeans, leggings and more.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/rayon/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Made in USA</li>
  
    <li>Cowl neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Long sleeves</li>
  
    <li>Allover stripes</li>
  
    <li>Pouch pocket at front waist</li>
  
    <li>A-line silhouette</li>
  
    <li>Asymmetrical hem</li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 44.0000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (283, N'Lucky Brand Jeans Top, Three Quarter Sleeve Printed Graphic Tee', N'<div id="longDescription" class="longDescription">
	This printed tee from Lucky Brand Jeans adds a world-traveled look to any casual outfit. Pair it with faded jeans and a nubby cardigan for laid-back style with a boho touch.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Notched scoop neckline </li>
  
    <li>Pullover style </li>
  
    <li>Three-quarter sleeves </li>
  
    <li>Printed scrolling floral design at front </li>
  
    <li>Easy fit </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 39.5000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (284, N'Lucky Brand Jeans Top, Three Quarter Sleeve Printed Scoopneck Peasant', N'<div id="longDescription" class="longDescription">
	This Lucky Brand Jeans top packs a stylish punch thanks to a pretty print. Pair it with anything from faded denim to maxi skirts!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline with half placket </li>
  
    <li>Pullover style </li>
  
    <li>Three-quarter sleeves </li>
  
    <li>Allover foulard print </li>
  
    <li>Easy fit </li>
  
    <li>Smocked hem </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 59.5000, 52.9900, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (285, N'Cha Cha Vente Top, Flutter Sleeve Studded Chiffon Tunic', N'<div id="longDescription" class="longDescription">
	A sunburst of studs gives this airy tunic a little attitude! Cha Cha Vente''s top looks just right with skinny jeans or leggings. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: rayon/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Flutter sleeves</li>
  
    <li>Studs at neckline and chest</li>
  
    <li>Relaxed fit</li>
  
    <li>Chiffon overlay</li>
  
    <li>Lined</li>
  
    <li>Hits at low hip</li>
  
  
  

</ul>', 46.0000, 34.9900, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (286, N'INC International Concepts Top, Dolman Sleeve Printed Peasant', N'<div id="longDescription" class="longDescription">
	A sexy-slouchy fit and an exotic paisley print add up to one fabulous top from INC!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Nylon; camisole: polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Smocked peasant neckline with buttons</li>
  
    <li>Pullover styling</li>
  
    <li>Three quarter length dolman sleeves </li>
  
    <li>Allover paisley print</li>
  
    <li>Smocked hem; relaxed fit</li>
  
    <li>Removable camisole included</li>
  
    <li>Hits at waist</li>
  
  
  

</ul>', 59.5000, 44.9900, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (287, N'Lucky Brand Jeans Top, Elli Three-Quarter Sleeve Lace Scoopneck Tee', N'<div id="longDescription" class="longDescription">
	Lucky Brand Jeans gives the casual tee a feminine update with lace embellishment. Make it sweet with a ruffled skirt, or play up the vintage vibe when you pair it with flared jeans!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/Modal?</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline </li>
  
    <li>Pullover style </li>
  
    <li>Three-quarter sleeves with elastic cuffs </li>
  
    <li>Sheer lace insets at shoulder; lace applique at chest</li>
  
    <li>Relaxed fit </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 49.5000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (288, N'Lauren by Ralph Lauren Top, Blanche Long Sleeve Paisley Crewneck Tee', N'<div id="longDescription" class="longDescription">
	A vibrant paisley print enlivens this Lauren by Ralph Lauren essential long sleeved cotton jersey tee, with a feminine crew neckline for modern sophistication.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Crew neckline</li>
  
    <li>Long-sleeved, with sewn cuffs and hem</li>
  
    <li>Allover paisley print for a feminine flourish</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=259&channel_id=1&bundle_entryPath=/shop/stars_ralphlauren_her ">Lauren Holiday Gifts</a></li>
    
  
  

</ul>', 32.9800, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (289, N'Style&co. Top, Flutter Sleeve Lace Peplum Hem Blouse', N'<div id="longDescription" class="longDescription">
	Style&co. gets romantic with lovely lace! This alluring fabric gives a basic top an appealing new look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Nylon</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Flutter sleeves</li>
  
    <li>Allover lace fabric</li>
  
    <li>Relaxed fit</li>
  
    <li>Peplum hem</li>
  
    <li>Lined through torso</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 46.0000, 29.9900, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (290, N'Style&co. Top, Three Quarter Sleeve Printed Sequin Velvet', N'<div id="longDescription" class="longDescription">
	Get a well-traveled look in this Style&co. shirt. The allover sublimation print, luxe velvet fabric and sequin trim pump up basic jeans instantly!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>V-neckline with sequin trim</li>
  
    <li>Pullover style </li>
  
    <li>Three-quarter sleeves</li>
  
    <li>Ruched at bust</li>
  
    <li>Allover sublimation print </li>
  
    <li>Velvet fabric</li>
  
    <li>Relaxed fit </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 49.0000, 36.9900, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (291, N'Cha Cha Vente Top, Three Quarter Length Sleeve Belted', N'<div id="longDescription" class="longDescription">
	Dramatic sleeves and a soft drape contrast with a whittled waist in Cha Cha Vente''s stylish top. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Rayon/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Made in USA</li>
  
    <li>Scoop neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Three quarter length angel sleeves</li>
  
    <li>Removable wide belt at waist</li>
  
    <li>Relaxed fit</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 48.0000, 34.9900, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (292, N'Cha Cha Vente Top, Batwing Sleeve Open Weave Tunic', N'<div id="longDescription" class="longDescription">
	Delicate open-weave work makes this Cha Cha Vente tunic special! Try it with sparkling jewelry for a dressier look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Rayon/spandex</li>
  
    <li>Hand wash</li>
  
    <li>Made in USA</li>
  
    <li>Scoop neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Batwing sleeves with open-weave at cuffs</li>
  
    <li>Open-weave details at shoulders</li>
  
    <li>Relaxed fit</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 44.0000, 34.9900, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (293, N'INC International Concepts Top, Dolman Sleeve Sequin Boatneck', N'<div id="longDescription" class="longDescription">
	Serious shine from a slouchy-chic sweater: INC''s sparkling sequins are show-stopping!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Rayon/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Boat neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Three quarter length dolman sleeves</li>
  
    <li>Allover sequins</li>
  
    <li>Relaxed fit</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 79.5000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (294, N'INC International Concepts Top, Cap Sleeve Sequin Cowl Neck ', N'<div id="longDescription" class="longDescription">
	A cowlneck tee becomes something altogether glamorous when covered in sparkling sequins! INC''s chic top layers well with jackets, cardigans and more.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Rayon/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Cowl neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Cap sleeves</li>
  
    <li>Allover sequins</li>
  
    <li>Fitted silhouette</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 69.5000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (295, N'INC International Concepts Top, Sleeveless Sequin Scoop Neck Tank', N'<div id="longDescription" class="longDescription">
	INC''s sequined tank top turns any outfit into a party! Pair it with everything from your most casual jeans to your dressiest skirts for instant glamour.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/nylon/rayon</li>
  
    <li>Hand wash</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Sleeveless; wide-set straps are bra-friendly</li>
  
    <li>Sequins at front only</li>
  
    <li>Fitted silhouette</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 59.5000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (296, N'INC International Concepts Top, Dolman Sleeve Cowl Neck', N'<div id="longDescription" class="longDescription">
	Smooth jersey and a flattering drape make INC''s cowlneck top a must-have. Wear it with everything from jeans to a pencil skirt!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Cowl neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Dolman sleeves</li>
  
    <li>Draped throughout torso</li>
  
    <li>Relaxed fit</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 49.5000, 39.9900, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (297, N'INC International Concepts Top, Long Sleeve Rhinestone Button Ruched Jersey', N'<div id="longDescription" class="longDescription">
	An INC classic, this chic stretch jersey shirt gives any outfit a glam look. The rhinestone buttons and fitted silhouette add oomph!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Point collar</li>
  
    <li>Button front closure; rhinestone stud buttons</li>
  
    <li>Long sleeves are ruched at cuffs</li>
  
    <li>Ruched at front torso</li>
  
    <li>Fitted silhouette</li>
  
    <li>Shirttail hem</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 59.5000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (298, N'Style&co. Top, Sleeveless Ruched Squareneck Tank ', N'<div id="longDescription" class="longDescription">
	Fit to flatter, thanks to clever ruching, this Style&co. top is a must-have basic. Pair it with black pants and pumps for look that slims like crazy!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Square neckline </li>
  
    <li>Pullover style </li>
  
    <li>Sleeveless </li>
  
    <li>Ruched at center </li>
  
    <li>Fitted silhouette </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 44.0000, 34.9900, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (299, N'Style&co. Top, Three Quarter Sleeve Metallic Belted Layered Look ', N'<div id="longDescription" class="longDescription">
	Shine on in this clever Style&co. layered-look top. The draped cardigan and metallic inset offer instant glam in one great look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Rayon; inset: Polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Surplice neckline </li>
  
    <li>Pullover style </li>
  
    <li>Three-quarter sleeves </li>
  
    <li>Layered-look; attached metallic inset with faux belt</li>
  
    <li>Easy fit </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 46.0000, 34.9900, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (300, N'Calvin Klein Jeans Top, Short Sleeve Sequin Scoopneck', N'<div id="longDescription" class="longDescription">
	Shine on in this top from Calvin Klein Jeans! Sequins with a mesh overlay at the front add a bit of festive sparkle for the season and beyond!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; back: cotton/viscose</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline </li>
  
    <li>Pullover style</li>
  
    <li>Short sheer sleeves </li>
  
    <li>Sequin fabric with mesh overlay at front</li>
  
    <li>Knit fabric at back</li>
  
    <li>Easy fit</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 49.5000, 42.9900, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (301, N'Karen Scott Top, Three Quarter Sleeve Beaded Embroidered Scoopneck Tee', N'<div id="longDescription" class="longDescription">
	The cotton tee gets jazzed up with sequins and embroidery in this fun look from Karen Scott!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline</li>
  
    <li>Pullover style </li>
  
    <li>Three-quarter sleeves </li>
  
    <li>Sequin embroidery at neckline</li>
  
    <li>Easy fit </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 32.0000, 17.9900, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (302, N'Lauren by Ralph Lauren Top, Polly Long Sleeve Striped Crewneck Tee', N'<div id="longDescription" class="longDescription">
	Thin, polished stripes and crest-embossed buttons lend a feminine flourish to this essential long-sleeved crewneck tee from Lauren by Ralph Lauren, rendered in lightweight cotton jersey for comfort and style.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Ribbed crew neckline</li>
  
    <li>Shoulder placket features four silver-tone crest-embossed metal buttons and one concealed snap</li>
  
    <li>Long-sleeved, with sewn cuffs and hem</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=259&channel_id=1&bundle_entryPath=/shop/stars_ralphlauren_her ">Lauren Holiday Gifts</a></li>
    
  
  

</ul>', 54.5000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (303, N'Lauren by Ralph Lauren Top, Freya Long Sleeve Faux Wrap ', N'<div id="longDescription" class="longDescription">
	This perennially chic long-sleeved top from Lauren by Ralph Lauren is crafted from slinky matte jersey in a flattering faux-wrap silhouette. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Rayon/Elastane?</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Crossover V-neckline</li>
  
    <li>Faux-wrap silhouette with pintucked pleats at the left hip for an effortless, ruched look</li>
  
    <li>Long-sleeved, with sewn cuffs</li>
  
    <li>Even-sewn hem</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=259&channel_id=1&bundle_entryPath=/shop/stars_ralphlauren_her ">Lauren Holiday Gifts</a></li>
    
  
  

</ul>', 79.5000, NULL, 2, 2)
GO
print 'Processed 300 total records'
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (304, N'T Tahari Top, Amelia One Shoulder Ruched Zipper', N'<div id="longDescription" class="longDescription">
	An exposed zipper adds edge to this ruched T Tahari one-shoulder top -- perfectly paired with denim for a night on the town! 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Viscose rayon/elastane?, lining: polyester/elastane?</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Allover ruching </li>
  
    <li>One-shoulder neckline </li>
  
    <li>Right wide strap, one-shoulder </li>
  
    <li>Side exposed zipper closure </li>
  
    <li>Fitted </li>
  
    <li>LIned </li>
  
    <li>Hits at the hip </li>
  
  
  

</ul>', 88.0000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (305, N'T Tahari Top, Thora Cowl Neck Short Sleeve Pleated ', N'<div id="longDescription" class="longDescription">
	Pleat details add on-trend texture to this T Tahari Thora top -- a perfect foundation for a fashionable look! 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Viscose rayon</li>
  
    <li>Hand wash</li>
  
    <li>Imported</li>
  
    <li>Cowl neckline </li>
  
    <li>Short sleeves </li>
  
    <li>Pleats at left shoulder and right side seam </li>
  
    <li>Fitted </li>
  
    <li>Pullover style </li>
  
    <li>Hits at the hip </li>
  
  
  

</ul>', 58.0000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (306, N'Cha Cha Vente Top, Batwing Sleeve Beaded Chiffon Draped Blouse', N'<div id="longDescription" class="longDescription">
	Beading and delicate chiffon create an ethereal look on Cha Cha Vente''s flowing blouse. A great choice for holiday parties, too!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester; lining: rayon/spandex</li>
  
    <li>Hand wash</li>
  
    <li>Made in USA</li>
  
    <li>V-neckline with metallic beading at collar</li>
  
    <li>Pullover styling</li>
  
    <li>Batwing sleeves hit at three quarter length</li>
  
    <li>Allover chiffon fabric</li>
  
    <li>Relaxed fit</li>
  
    <li>Lined through torso</li>
  
    <li>Banded hem</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 48.0000, NULL, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (307, N'AGB Top, Three Quarter Sleeve Ruffle Layered Look', N'<div id="longDescription" class="longDescription">
	A ruffled top from AGB gives you the look of layers with the ease of one-piece-dressing! A soft drape and gathered shoulders give it extra feminine flair.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/rayon/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Shawl collar with scoop neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Three quarter length sleeves</li>
  
    <li>Gathered shoulders</li>
  
    <li>Mesh ruffled inset; layered look</li>
  
    <li>Relaxed fit</li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 50.0000, 36.9900, 2, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (308, N'Sofft Shoes, St. Malo Sandals', N'<div id="longDescription" class="longDescription">
	Part bootie, part sandal, the St. Malo by Sofft is ready for resort style. Perforated leather and a rustic flower lend an earthy vibe to maxi skirts.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Perforated leather upper</li>
  
    <li>Peep-toe platform sandals with flower embellishment</li>
  
    <li>Zipper closure at back</li>
  
    <li>1&#034; platform, 3-3/4&#034; stacked heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 130.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (309, N'RACHEL Rachel Roy Shoes, Kimi Platform Pumps', N'<div id="longDescription" class="longDescription">
	Well heeled: With a pyramid-studded stiletto heel, RACHEL Rachel Roy''s Kimi platform pumps make a striking style statement.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Patent leather upper</li>
  
    <li>Platform pumps </li>
  
    <li>Rubber pyramid detail on heel </li>
  
    <li>1&#034; covered platform, 5&#034; covered heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 99.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (310, N'Etienne Aigner Shoes, Hitomi Wedge Sandals', N'<div id="longDescription" class="longDescription">
	Warm nights are calling. Kick up your heels with the scintillating sparkle of the summer-ready Hitomi wedge sandals by Etienne Aigner, featuring a cork heel with braided straw trim.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Metallic man-made/stretch fabric upper</li>
  
    <li>Strappy open-toe wedge sandals</li>
  
    <li>1-1/2&#034; cork wedge heel with braided straw trim</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 69.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (311, N'Etienne Aigner Shoes, Haste Wedge Sandals', N'<div id="longDescription" class="longDescription">
	Light up the room. The Haste sandals by Etienne Aigner bring your look alive with a metallic finish and light-catching bead detail on their slip-on silhouette.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Metallic man-made upper</li>
  
    <li>Open-toe slip-on wedge sandals with beading at vamp</li>
  
    <li>2-1/2&#034; covered wedge heel with braided straw trim</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 59.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (312, N'Hush Puppies Women''s Shoes, Vevay Sandals', N'<div id="longDescription" class="longDescription">
	Spend all day in search of adventure with the stylish comfort of the Vevay sandals by Hush Puppies.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Leather upper</li>
  
    <li>Open-toe sandals with criss-crossed straps at vamp</li>
  
    <li>Adjutable buckle at ankle with elastic gore for comfort</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 80.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (313, N'Carlos by Carlos Santana Shoes, Chord Wedge Sandals', N'<div id="longDescription" class="longDescription">
	Liquid metal. Swirling straps take center stage on the hotter-than-hot Chord wedge sandals from Carlos by Carlos Santana.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Metallic man-made upper</li>
  
    <li>Strappy wedge sandals with adjustalbe ankle strap</li>
  
    <li>1&#034; covered platform, 4-1/2&#034; covered wedge heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 89.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (314, N'Naturalizer Shoes, Yarkona Sneakers', N'<div id="longDescription" class="longDescription">
	The cuteness of a Mary Jane and the comfort of a walking shoe. The Yarkona sneakers are crafted in durable leather and breathable mesh with Naturalizer''s signature touches.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Leather/mesh upper</li>
  
    <li>Round-toe slip-on sneakers with elastic gore across vamp</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 75.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (315, N'Naturalizer Shoes, Waver Slide Sandals', N'<div id="longDescription" class="longDescription">
	Lovely cut-out detailing lends intrigue to the smooth leather of the Waver slides by Naturalizer. This casual style, available in earthy tones, is perfect for taking a walk or enjoying lunch.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Leather upper</li>
  
    <li>Open-toe slip-on slides</li>
  
    <li>1&#034; wedge heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 69.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (316, N'Naturalizer Shoes, Decade Flats', N'<div id="longDescription" class="longDescription">
	Sultry and sweet meet. The Decade flats by Naturalizer offer the comfort you love, wrapped up in snake print and topped off with a bow.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Snake-print man-made upper</li>
  
    <li>Round-toe ballet flats with oversized bow at vamp</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 79.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (317, N'Jambu Shoes,  Nottingham Boots', N'<div id="longDescription" class="longDescription">
	Enjoy the comfort and unique stride of bare feet all winter long with the Nottingham boots by Jambu. Featuring a cozy and festive sweater-knit design, they recreate the one-of-a-kind feeling of walking on sand.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Sweater-knit fabric/nylon upper</li>
  
    <li>Round-toe walking boots with toe and heel bumpers for protection</li>
  
    <li>Decorative strap runs length of shaft</li>
  
    <li>Shaft: 13&#034; height, 7&#034; diameter</li>
  
    <li>Memory foam footbed</li>
  
    <li>Partially-recyclable rice rubber sole</li>
  
  
  

</ul>', 119.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (318, N'DKNYC Shoes, Caitlin Wedges', N'<div id="longDescription" class="longDescription">
	Fresh-picked fashion. The Caitlin wedges by DKNYC are wonderfully wearable with their simple design and flower power.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Leather upper</li>
  
    <li>Round-toe wedges with flower and fringe detail at vamp</li>
  
    <li>1-1/2&#034; stacked wedge heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 89.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (319, N'Naturalizer Shoes, Lulianna Wedge Sandals', N'<div id="longDescription" class="longDescription">
	Choose fashion that puts a smile on your face. You''ll love the comfort and lovely fabric of the slingback Lulianna wedge sandals by Naturalizer.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Fabric upper</li>
  
    <li>Open-toe wedge sandals</li>
  
    <li>Slingback strap with elastic inset</li>
  
    <li>Braided rope detailing at outsole</li>
  
    <li>3/4&#034; cork platform, 1-3/4&#034; cork wedge heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 79.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (320, N'Naturalizer Shoes, Ilyse Pumps', N'<div id="longDescription" class="longDescription">
	Lovely style with ladylike charm. The Ilyse pumps by Naturalizer feature the brand''s signature comfort wrapped up in a romantic peep-toe silhouette.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Upper: leather/raffia (teakwood); suede/man-made patent (black, portrait)</li>
  
    <li>Peep-toe pumps</li>
  
    <li>Scalloped topline</li>
  
    <li>3-1/8&#034; covered heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 79.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (321, N'Naturalizer Shoes, Daily Flats', N'<div id="longDescription" class="longDescription">
	There''s no question about what you''ll wear. The Daily flats by Naturalizer are the perfect choice for a casual yet polished look, no matter what the day calls for.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Leather upper</li>
  
    <li>Round-toe ballet flats with criss-cross strap and ring detail at vamp</li>
  
    <li>Man-made flex sole</li>
  
  
  

</ul>', 79.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (322, N'Etienne Aigner Shoes, Actor Flats', N'<div id="longDescription" class="longDescription">
	Play the role of stylish sophisticate with the logo-emblazoned Actor flats by Etienne Aigner. A dainty bow ties up the look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Patent man-made upper</li>
  
    <li>Round-toe flats with logo perforations and bow accent at toe cap</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 59.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (323, N'Hush Puppies Women''s Shoes, Vesper Sandals', N'<div id="longDescription" class="longDescription">
	Never let your style slide. The Vesper sandals by Hush Puppies slip on, stay on and cushion every step.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Leather upper</li>
  
    <li>Open-toe slide sandals with cut-outs at thick vamp strap</li>
  
    <li>Extra padding at insole for comfort</li>
  
    <li>Man-made flex sole</li>
  
  
  

</ul>', 80.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (324, N'Carlos by Carlos Santana Shoes, Delicious Pumps', N'<div id="longDescription" class="longDescription">
	Set fire to your look with the sparkling Delicious pumps from Carlos by Carlos Santana. Finished in either glitter or fabric netting, there''s nothing ordinary about their timeless silhouette.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Upper: man-made glitter (blue glitter, gold glitter); fabric (asphalt passion, gold passion)</li>
  
    <li>Pointed-toe platform pumps</li>
  
    <li>1/2&#034; hidden platform, 4-1/2&#034; covered heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 99.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (325, N'Sofft Shoes, Citrine Flats', N'<div id="longDescription" class="longDescription">
	The shining gem of your casual shoe collection. The Citrine flats by Lucky Brand lend pretty polish with their slim silhouette and hardware embellishment.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Leather upper</li>
  
    <li>Round-toe flats with metal embellishment at vamp</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 99.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (326, N'Naturalizer Shoes, Pola Peep Toe Flats', N'<div id="longDescription" class="longDescription">
	Inspired by sunny afternoons, the charming Pola flats by Naturalizer feature laser-cut leather topped off with a patent bow and tiny peep toe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Leather upper with patent man-made trim</li>
  
    <li>Peep-toe flats with allover laser-cut detail</li>
  
    <li>Small bow at vamp</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 75.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (327, N'Cole Haan Women''s Shoes, Air Morgan Slipper Flats', N'<div id="longDescription" class="longDescription">
	Turn up the glamour on a classically casual style. The Air Morgan flats by Cole Haan take the silhouette of old-fashioned slippers and dress them in leopard-print haircalf.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Haircalf upper</li>
  
    <li>Rounded-toe slipper flats with grosgrain trim at topline</li>
  
    <li>Full-padded quilted sock lining</li>
  
    <li>Nike AIR tehnology for ultimate comfort</li>
  
    <li>Rubber sole</li>
  
  
  

</ul>', 188.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (328, N'BEBE Shoes, Cleo Platform Sandals', N'<div id="longDescription" class="longDescription">
	There''s not a chance of slipping by unnoticed with the Cleo sandals by BEBE. Dare to wear the towering heel and covered platform for your next girls'' night out.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Man-made upper</li>
  
    <li>Open-toe platform pumps with wide elastic straps criss-crossed at vamp</li>
  
    <li>2&#034; covered platform, 5&#034; covered heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 110.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (329, N'RACHEL Rachel Roy Shoes, Kimi Platform Pumps', N'<div id="longDescription" class="longDescription">
	Well heeled: With a pyramid-studded stiletto heel, RACHEL Rachel Roy''s Kimi platform pumps make a striking style statement.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Textured fabric upper</li>
  
    <li>Platform pumps </li>
  
    <li>Rubber pyramid detail on heel </li>
  
    <li>1&#034; covered platform, 5&#034; covered heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 99.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (330, N'Etienne Aigner Shoes, Drew Pumps', N'<div id="longDescription" class="longDescription">
	The perfect pumps are working girl''s best friend: get to know the Drew pumps by Etienne Aigner. With a shiny patent finish and wearable heel, they''ll help the week fly by.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Man-made patent upper</li>
  
    <li>Round-toe pumps</li>
  
    <li>1/2&#034; covered platform, 3&#034; covered heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 59.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (331, N'Tahari Shoes, Hidden Wedge Boots', N'<div id="longDescription" class="longDescription">
	Give your look a boost. A hidden wedge is tucked away in the sleek profile of these suede, zippered boots by Tahari.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Suede upper</li>
  
    <li>Round-toe tall boots with zipper at exterior side of shaft</li>
  
    <li>Shaft: 15&#034; height, 8&#034; diameter</li>
  
    <li>1/2&#034; hidden wedge heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 229.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (332, N'GUESS Women''s Shoes, Lawley Platform Sandals', N'<div id="longDescription" class="longDescription">
	Part clog and part sandal, the Lawley design by GUESS is an on-trend throwback. Nail heads and a wooden platform complete the look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Leather upper</li>
  
    <li>Open-toe platform sandals with buckle detail at vamp and ankle straps</li>
  
    <li>Elastic gore at ankle strap for comfort</li>
  
    <li>Nail head trim at heel</li>
  
    <li>1-3/4&#034; wooden platform, 5-1/2&#034; covered and wooden heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 125.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (333, N'GUESS Women''s Shoes, Ebba Demi Wedge Thong Sandals', N'<div id="longDescription" class="longDescription">
	Summer loving. A sparkling flower and cute logo charm spice up the Ebba wedge thong sandals by GUESS.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Rubber upper</li>
  
    <li>Demi-wedge thong sandals with rhinestone-accented flower and logo charm at strap</li>
  
    <li>1&#034; foam platform, 1-3/4&#034; foam wedge heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 35.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (334, N'Enzo Angiolini Shoes, Slendor Evening Sandals', N'<div id="longDescription" class="longDescription">
	The dazzle is in the details. With sweeping satin straps topped off by a rose and set on a glitter platform, the Slendor evening sandals have it all.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Satin upper</li>
  
    <li>Open-toe evening sandals with satin rose at vamp</li>
  
    <li>Zipper closure at back</li>
  
    <li>1&#034; glitter-covered platform, 4-1/2&#034; covered heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 130.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (335, N'Circa by Joan & David Shoes, Donnasue Pumps', N'<div id="longDescription" class="longDescription">
	Sensibility disguised by sophistication. The Donnasue mid-heel pumps from Circa by Joan & David are an essential style for workday ensembles.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Leather/stretch upper</li>
  
    <li>Pointed-toe mid-heel pumps with bow detail at vamp</li>
  
    <li>2&#034; covered heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 99.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (336, N'Enzo Angiolini Shoes, Showyou Pumps', N'<div id="longDescription" class="longDescription">
	Lend star power to your look. The Showyou peep-toe pumps by Enzo Angiolni sparkle with hundreds of rhinestone accents on luxe suede.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Suede upper</li>
  
    <li>Peep-toe platform pumps covered in rhinestones</li>
  
    <li>1&#034; covered platform, 4-1/2&#034; covered heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 160.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (337, N'Boutique 9 Shoes, Amalia Platform Pumps', N'<div id="longDescription" class="longDescription">
	Down-to-earth glamour girls, meet your match. The Amalia peep-toe pumps by Boutique 9 take a daring silhouette and bring it down a notch with espadrille and cork detailing.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Fabric upper</li>
  
    <li>Peep-toe pumps with espadrille detailing at platform</li>
  
    <li>1-1/4&#034; covered platform, 5-1/4&#034; colored cork heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 130.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (338, N'Hush Puppies Shoes, Effy Flats    ', N'<div id="longDescription" class="longDescription">
	Treat yourself to fashionable flats. The padded and flexible Effy flats by Hush Puppies gain a feminine touch from dainty floral perforations.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Leather upper</li>
  
    <li>Round-toe flats with floral perforations</li>
  
    <li>Extra padding at sole for comfort</li>
  
    <li>Man-made flex sole</li>
  
  
  

</ul>', 75.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (339, N'Isola Shoes, Notte Platform Pumps', N'<div id="longDescription" class="longDescription">
	A toast to the season''s most fetching shoes. The Notte platform pumps by Isola shine in patent leather with a dainty peep toe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Patent leather upper</li>
  
    <li>Peep-toe platform pumps</li>
  
    <li>1&#034; cork platform, 3-3/4&#034; cork heel</li>
  
    <li>Man-made sole</li>
  
    <li>Isola shoes feature Dual Density Comfort (a double layer of shock absorption), a scratch-resistant traction outsole and genuine leather footbed</li>
  
  
  

</ul>', 175.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (340, N'Isola Shoes, Dore Peep Toe Pumps', N'<div id="longDescription" class="longDescription">
	Shine bright. The Dore peep-toe pumps by Isola make patent leather even more eye-catching with gleaming metal accents.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Patent leather upper</li>
  
    <li>Peep-toepumps with grosgrain ribbon and metal embellishment at vamp</li>
  
    <li>3-1/4&#034; partially metal-covered heel</li>
  
    <li>Man-made sole</li>
  
    <li>Isola shoes feature Dual Density Comfort (a double layer of shock absorption), a scratch-resistant traction outsole and genuine leather footbed</li>
  
  
  

</ul>', 159.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (341, N'Sofft Shoes, Scafati Slingback Pumps', N'<div id="longDescription" class="longDescription">
	Perfectly poised. Patent leather lends a beautiful finish to the fashionable silhouette of the Scafati slingback pumps by Sofft.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Patent leather upper</li>
  
    <li>Peep-toe pumps with adjustable slingback strap</li>
  
    <li>1/2&#034; covered platform, 3&#034; stacked heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 110.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (342, N'Paris Hilton Shoes, Carla Boots', N'<div id="longDescription" class="longDescription">
	Buckle up and hold on tight. The Carla boots by Paris Hilton guarantee a wild ride with their buckled shaft and stiletto heel.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Man-made upper</li>
  
    <li>Round-toe tall boots with buckled straps around shaft</li>
  
    <li>Zipper closure at interior side</li>
  
    <li>Shaft: 17&#034; height, 6-1/2&#034; diameter</li>
  
    <li>1/2&#034; stacked platform, 4-1/4&#034; stacked and covered heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 139.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (343, N'Sperry Top-Sider Women''s Shoes, Bluefish Boat Shoes', N'<div id="longDescription" class="longDescription">
	Sperry Top-Sider makes over a classic men''s style with cute plaid and sequined fabric panels. The Bluefish boat shoes are your ticket to easy, warm-weather style.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Leather/fabric upper</li>
  
    <li>Round-toe boat shoes with contrast fabric at sides and lacing detail</li>
  
    <li>1&#034; rubber sole</li>
  
  
  

</ul>', 85.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (344, N'Donald J Pliner Shoes, Papina Slingback Pumps', N'<div id="longDescription" class="longDescription">
	Assert yourself with forward-looking fashion. The Papina pumps by Donald J Pliner re-imagine a classic slingback silhouette with unique metallic cork-finished leather.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Metallic cork finish leather upper</li>
  
    <li>Peep-toe pumps</li>
  
    <li>Slingback strap with elastic gore for comfort</li>
  
    <li>3&#034; stacked heel</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 225.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (345, N'Cole Haan Women''s Shoes, Dorian Rain Boots', N'<div id="longDescription" class="longDescription">
	Functional fashion never looked so good. The Dorian rain boots by Cole Haan promise warm, dry feet in a sleek moto boot silhouette.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Waterproof matte rubber upper</li>
  
    <li>Round-toe rain boots with detachable strap at ankle</li>
  
    <li>Fully padded leather and fabric sock lining </li>
  
    <li>1-1/2&#034; stacked heel</li>
  
    <li>Rubber sole</li>
  
  
  

</ul>', 228.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (346, N'Cole Haan Women''s Shoes, Air Tali Jewel Ballet Flats', N'<div id="longDescription" class="longDescription">
	Make your style a shining example. In either a smooth or metallic leather, the Air Tali ballet flats by Cole Haan sparkle with the addition of rhinestone accents at the toe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Nappa leather upper</li>
  
    <li>Round-toe ballet flats with crystal embellishment at vamp</li>
  
    <li>Elasticized topline</li>
  
    <li>Fully-padded leather sock lining</li>
  
    <li>Nike AIR technology for ultimate comfort</li>
  
    <li>Rubber sole</li>
  
  
  

</ul>', 198.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (347, N'Cole Haan Women''s Shoes, Air Bacara Ballet Flats', N'<div id="longDescription" class="longDescription">
	Make every step sparkle. The Air Bacara flats by Cole Haan feature the sweetest of details - from glittery gleam to a laced-up bow at back - in combination with the cushioning of Nike AIR technology.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Imported</li>
  
    <li>Glitter fabric upper</li>
  
    <li>Round-toe ballet flats</li>
  
    <li>Elasticized topline; lace-up detail tied in bow at back</li>
  
    <li>Fully-padded sock liner</li>
  
    <li>Nike AIR technology for ultimate comfort</li>
  
    <li>Man-made sole</li>
  
  
  

</ul>', 178.0000, NULL, 2, 3)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (348, N'7 For All Mankind Jeans, Stretch Boot Cut NY Dark Wash', N'<div id="longDescription" class="longDescription">
	Always chic and trendy, these boot-cut jeans from 7 For All Mankind are a wardrobe essential.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/elastane</li>
  
    <li>Machine washable</li>
  
    <li>Made in USA</li>
  
    <li>This item was previously identified in error as a clearance item. The price listed is the correct current price. </li>
  
    <li>Low rise: approx. 8 inches</li>
  
    <li>Slim fit through hips and thighs</li>
  
    <li>Boot cut leg opening</li>
  
    <li>Button closure with zip fly; belt loops at waistband</li>
  
    <li>Five pocket styling with signature 7 For All Mankind embroidery at back pockets</li>
  
    <li>Contrast stitching</li>
  
    <li>Whisker detail at hips</li>
  
    <li>Available in approx. inseams: 31&#034; (S), 34&#034; (R), 36&#034; (L)</li>
  
  
    
      <li><a class="bulletLinks" href="javascript:pop(''/r50x32_7jeans_popup.jsp'',''macys'',''width=605,scrollbars=yes,height=600'')">See all 7 For All Mankind fit descriptions</a></li>
    
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="http://www.macys.com/campaign/social?campaign_id=202&channel_id=1&bundle_entryPath=/women-home">What&#039;s New In Impulse</a></li>
    
  
  

</ul>', 159.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (349, N'MICHAEL Michael Kors Sausalito Jeans, Premiere Indigo Wash', N'<div id="longDescription" class="longDescription">
	Modern and versatile, this best-selling boot-cut jean from MICHAEL Michael Kors is a must-have for all seasons.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/spandex</li>
  
    <li>Machine washable </li>
  
    <li>Imported</li>
  
    <li>This item was previously identified in error as a clearance item. The price listed is the correct current price.</li>
  
    <li>Mid rise: approx. 9-1/4 inches</li>
  
    <li>Skinny fit through hips and thighs</li>
  
    <li>Boot cut leg opening</li>
  
    <li>Button closure with zip fly; belt loops</li>
  
    <li>Five pocket style with goldtone fabric logo placket at back pocket</li>
  
    <li>Available in approximate inseams: 31 inches (S); 33 inches (R)</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="/shop/product?ID=399002">Also available in Petites</a></li>
    
  
  

</ul>', 69.5000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (350, N'Joe''s Jeans Boot Cut Jeans, Honey Burke Wash ', N'<div id="longDescription" class="longDescription">
	Perfect for going out or hanging out, this boot-cut style from Joe''s Jeans is destined to be a favorite. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/elastane</li>
  
    <li>Machine washable </li>
  
    <li>Imported</li>
  
    <li>Low rise; approx. 8 inches</li>
  
    <li>Slim fit through hips and thighs</li>
  
    <li>Boot cut leg</li>
  
    <li>Button closure with zip fly; belt loops</li>
  
    <li>Five pocket style; logo at back pocket</li>
  
    <li>Faded leg</li>
  
    <li>Approximate inseam: 34 inches </li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="http://www.macys.com/campaign/social?campaign_id=202&channel_id=1&bundle_entryPath=/women-home">What&#039;s New In Impulse</a></li>
    
  
  

</ul>', 158.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (351, N'Not Your Daughter''s Jeans Pants, Barbara Bootcut Leg Velvet', N'<div id="longDescription" class="longDescription">
	Dress up your look instantly with these flattering bootcut pants from Not Your Daughter''s Jeans, rendered in super-soft velvet.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Made in USA</li>
  
    <li>Mid rise: approx. 9 inches </li>
  
    <li>Slim fit through hips and thighs </li>
  
    <li>Bootcut leg </li>
  
    <li>Zipper and button closure; belt loops</li>
  
    <li>Classic 5-pocket styling</li>
  
    <li>Allover velvet </li>
  
    <li>Tummy Tuck crisscross stretch effect flattens your tummy, lifts your buttocks and makes you look and feel one size smaller</li>
  
    <li>Approximate inseam: 32 inches </li>
  
    <li>In between sizes? We suggest ordering a size down.</li>
  
  
  

</ul>', 130.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (352, N'Miss Me Jeans, Bootcut Leg Studded Embroidered Faux Leather, Medium Blue Wash', N'<div id="longDescription" class="longDescription">
	Go bold in these Miss Me jeans, featuring a curve-hugging fit and blasted denim wash for a perfectly worn-in look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/Elastane?, trim: cotton/terylene</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Women&#039;s jeans </li>
  
    <li>Low rise: approx. 7 inches </li>
  
    <li>Slim, contoured fit through hips and thighs </li>
  
    <li>Bootcut leg </li>
  
    <li>Zipper and button closure </li>
  
    <li>Belt loops </li>
  
    <li>Classic 5-pocket styling; embroidered &amp; studded back pockets with fake leather trim </li>
  
    <li>Medium blue wash with blasting and distressing at legs</li>
  
    <li>Approximate inseam: 34 inches </li>
  
  
  

</ul>', 99.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (353, N'7 For All Mankind Jeans, Mid-Rise Boot Cut Los Angeles Dark Wash', N'<div id="longDescription" class="longDescription">
	7 for All Mankind refines their signature boot-cut jeans with a higher rise and a slimming dark wash.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Made in USA</li>
  
    <li>Mid rise: approx. 9 inches</li>
  
    <li>Slim fit through hips and thighs</li>
  
    <li>Boot cut leg opening</li>
  
    <li>Button closure with zip fly; belt loops at waistband</li>
  
    <li>Five-pocket styling with signature embroidery on back pockets</li>
  
    <li>Dark wash with subtle whiskering and blasting in legs</li>
  
    <li>Approximate inseam: 33 inches</li>
  
  
    
      <li><a class="bulletLinks" href="javascript:pop(''/r50x32_7jeans_popup.jsp'',''macys'',''width=605,scrollbars=yes,height=600'')">See all 7 For All Mankind fit descriptions</a></li>
    
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="http://www.macys.com/campaign/social?campaign_id=202&channel_id=1&bundle_entryPath=/women-home">What&#039;s New In Impulse</a></li>
    
  
  

</ul>', 165.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (354, N'Not Your Daughter''s Jeans, Marilyn Straight Leg Studded Jeans, Denim Wash', N'<div id="longDescription" class="longDescription">
	Look slimmer instantly with these figure-flattering jeans from Not Your Daughter''s Jeans. A dark wash and slim fit make them a match with anything from silky blouses to nubby cardigans!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Made in USA</li>
  
    <li>Women&#039;s jeans</li>
  
    <li>Mid rise: approx. 9-1/2 inches </li>
  
    <li>Slim fit through hips and thighs</li>
  
    <li>Straight leg </li>
  
    <li>Zipper and button closure; belt loops </li>
  
    <li>Classic 5-pocket styling; studded back pockets</li>
  
    <li>Dark wash without fading of whiskering for a clean look</li>
  
    <li>Tummy Tuck crisscross stretch effect flattens your tummy, lifts your buttocks and makes you look and feel one size smaller</li>
  
    <li>Approximate inseam: 33 inches </li>
  
    <li>In between sizes? We suggest ordering a size down.</li>
  
  
  

</ul>', 120.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (355, N'Not Your Daughter''s Jeans, Sheri Skinny Jeans, Glacier Bay Wash', N'<div id="longDescription" class="longDescription">
	Trade in the blues for shades of gray with these skinny jeans from Not Your Daughter''s Jeans!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Made in USA</li>
  
    <li>Women&#039;s skinny jeans </li>
  
    <li>Mid rise: approx. 9-1/2 inches </li>
  
    <li>Skinny fit through hips and thighs</li>
  
    <li>Skinny leg </li>
  
    <li>Zipper and button closure; belt loops </li>
  
    <li>Classic 5-pocket styling; studded back pockets</li>
  
    <li>Medium gray wash with slight fading at the thighs</li>
  
    <li>Tummy Tuck crisscross stretch effect flattens your tummy, lifts your buttocks and makes you look and feel one size smaller</li>
  
    <li>Approximate inseam: 30 inches </li>
  
    <li>In between sizes? We suggest ordering a size down.</li>
  
  
  

</ul>', 130.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (356, N'Style&co. Jeans, Tummy Control Slim Leg', N'<div id="longDescription" class="longDescription">
	Style&co. gets creative with colored wash that looks just right with tunics, sweaters and more! The tummy control panel is there for extra support, right where you need it.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>High rise: approx. 11 inches</li>
  
    <li>Slim, contoured fit through hips and thighs</li>
  
    <li>Skinny leg</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Classic 5-pocket styling</li>
  
    <li>Solid colored wash</li>
  
    <li>Tummy control panel holds you in</li>
  
    <li>Approximate inseam: 31 inches</li>
  
  
  

</ul>', 49.0000, 32.9900, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (357, N'Lucky Brand Jeans, Easy Rider Bootcut Leg Jeans, Ol Sun Shower Wash', N'<div id="longDescription" class="longDescription">
	The Easy Rider from Lucky Brand Jeans has a relaxed fit you''ll want to wear every day! The perfectly-faded lighter blue wash gives them a little retro appeal.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise: approx. 9 inches</li>
  
    <li>Straight fit through hips and thighs</li>
  
    <li>Straight leg</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Classic five pocket styling</li>
  
    <li>Light blue wash with fading, blasting and whiskering at hips and thighs</li>
  
    <li>Available in approx. inseams: 30 inches (S); 32 inches (R); 34 inches (L)</li>
  
    <li>Women&#039;s jeans</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 79.5000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (358, N'Levi''s Jeans, 512 Perfectly Slimming Bootcut, Midnight Star Wash', N'<div id="longDescription" class="longDescription">
	Perfectly slimming and perfectly faded ? what combo could be better? Levi''s classic 512 cut is an essential for every closet.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/Elastane?</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise: approx. 10 inches</li>
  
    <li>Slim fit through hips and thighs</li>
  
    <li>Bootcut leg</li>
  
    <li>Zipper fly with button closure; belt loops</li>
  
    <li>Five pocket styling with embroidery and studded detailing</li>
  
    <li>Tummy Control features a slimming panel</li>
  
    <li>Whiskering and fading </li>
  
    <li>Medium blue wash</li>
  
    <li>Inseam: approx. 32 inches</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 54.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (359, N'DKNY Jeans Soho Bootcut Jeans, Slate Wash', N'<div id="longDescription" class="longDescription">
	DKNY Jeans'' beloved Soho jeans are back with a new blue wash and just the right amount of fading. Great for everyday wear!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise: approx. 9-1/2 inches</li>
  
    <li>Straight fit through hips and thighs</li>
  
    <li>Bootcut leg</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Five pocket styling; two back patch pockets</li>
  
    <li>Dark blue wash has fading and blasting at thighs and seat; whiskering at fly </li>
  
    <li>Available in approx. inseams: 30 inches (S), 32 inches (R), 34 inches (L)</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 48.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (360, N'DKNY Jeans Boot Cut Jeans, Soho Stretch Black Rinse Wash', N'<div id="longDescription" class="longDescription">
	Basic boot cut jeans with a touch of stretch for the perfect fit, from DKNY Jeans.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise: approx. 9-1/2 inches</li>
  
    <li>Straight cut through hips and thighs</li>
  
    <li>Boot-cut leg opening</li>
  
    <li>Button closure with zip fly; belt loops at waistband</li>
  
    <li>Five-pocket styling with swirl embroidery and rivet detail at outlined back pockets</li>
  
    <li>Black rinse wash with contrast topstitching</li>
  
    <li>Available in approx. inseams: 30&#034; (S), 32&#034; (R), 34&#034; (L)</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="/shop/product?ID=515409">Also available in Petites</a></li>
    
  
  

</ul>', 48.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (361, N'BandolinoBlu Jeans, Mandie Classic Fit Straight Leg, Rinse Wash', N'<div id="longDescription" class="longDescription">
	The essential, clean and classic-fit jeans in a rinse wash: the Mandie from BandolinoBlu.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/spandex</li>
  
    <li>Machine wash</li>
  
    <li>Imported</li>
  
    <li>Mid rise: approx. 10-1/2 inches (9-7/8 inches for short)</li>
  
    <li>Relaxed fit through hips, seat and thighs</li>
  
    <li>Straight leg opening</li>
  
    <li>Wide belt loops</li>
  
    <li>Five pocket styling; embroidery at back pockets</li>
  
    <li>Available in approx. inseams: 29&#034; (S), 32&#034; (R)</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 48.0000, 29.9900, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (362, N'Tommy Hilfiger Jeans, Hope Bootcut, Chelsea Rinse', N'<div id="longDescription" class="longDescription">
	Tommy Hilfiger offers an American staple with these Hope bootcut jeans. Classic 5-pocket styling and a dark wash makes them a perfect match with anything from a button-front shirt to your favorite tee.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Mid rise; approx. 9-1/2 inches</li>
  
    <li>Straight fit through hips and thighs</li>
  
    <li>Bootcut leg</li>
  
    <li>Zipper and button closure</li>
  
    <li>Belt loops</li>
  
    <li>Classic 5-pocket styling </li>
  
    <li>Dark rinse without distressing for a clean look</li>
  
    <li>Embroidered TH logo at coin pocket </li>
  
    <li>Available in approx. inseams: (S) 30 inches; (L) 34 inches</li>
  
    <li>Women&#039;s jeans</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 69.5000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (363, N'Tommy Hilfiger Jeans, Freedom Bootcut Jeans, Leigh Wash', N'<div id="longDescription" class="longDescription">
	Tommy Hilfiger offers a classic pair of jeans in a refreshingly relaxed cut with this pair. A medium wash and bootcut leg makes them a great match with anything from tees to sweaters!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine wash</li>
  
    <li>Imported</li>
  
    <li>Low rise: approx. 8-1/2 inches</li>
  
    <li>Relaxed through hips and thighs</li>
  
    <li>Bootcut leg</li>
  
    <li>Zipper and button closure</li>
  
    <li>Belt loops</li>
  
    <li>Classic 5-pocket styling; flap pockets at back</li>
  
    <li>Whiskering at hips; fading at thighs</li>
  
    <li>Embroidered Tommy flag logo at hip</li>
  
    <li>Available in approx. inseams: (S) 30 inches; (R) 32 inches; (L) 34 inches</li>
  
    <li>Women&#039;s jeans</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 69.5000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (364, N'Levi''s Jeans, 515 Bootcut Leg, West Coast Wash', N'<div id="longDescription" class="longDescription">
	It doesn''t get more classic than a faded blue pair of 515 bootcuts from Levi''s! The ultimate weekend jeans. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise: approx. 9-7/8 inches</li>
  
    <li>Straight fit through hips and thighs</li>
  
    <li>Bootcut leg</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Classic five pocket styling</li>
  
    <li>Lighter blue wash with fading and whiskering at hips and thighs</li>
  
    <li>Approximate inseam: 32 inches</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 54.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (365, N'INC International Concepts Jeans, Curvy Fit Flare Leg Rhinestone Button, Dark Wash', N'<div id="longDescription" class="longDescription">
	A pair of flared jeans gets glowing with the help of rhinestone buttons! INC''s denim gives any outfit a glam touch!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise: approx. 8 inches</li>
  
    <li>Curvy, contoured fit through hips and thighs</li>
  
    <li>Flared leg</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Five pocket styling; back flap pockets with rhinestone button closures</li>
  
    <li>Dark wash with fading and whiskering at hips and thighs</li>
  
    <li>Contrast topstitching </li>
  
    <li>Available in approx. inseams: 31 inches (S); 32-1/2 inches (R)</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 69.5000, 49.9900, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (366, N'INC International Concepts Jeans, Flare Leg Rhinestone Button, Dark Wash', N'<div id="longDescription" class="longDescription">
	A pair of flared jeans gets glowing with the help of rhinestone buttons! INC''s denim gives any outfit a glam touch!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise: approx. 8 inches</li>
  
    <li>Slim, contoured fit through hips and thighs</li>
  
    <li>Flared leg</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Five pocket styling; back flap pockets with rhinestone button closures</li>
  
    <li>Dark wash with fading and whiskering at hips and thighs</li>
  
    <li>Contrast topstitching </li>
  
    <li>Available in approx. inseams: 30 inches (S); 33 inches (R)</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 69.5000, 49.9900, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (367, N'Levi''s Jeans, 512 Perfectly Slimming Tummy Control Straight Leg, Rich Indigo Wash', N'<div id="longDescription" class="longDescription">
	A gorgeously rich blue wash adds depth to Levi''s wildly-flattering 512 straight leg jeans!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise: 10 inches</li>
  
    <li>Slim fit through hips and thighs</li>
  
    <li>Straight leg</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Five pocket styling; back pockets with stud detailing</li>
  
    <li>Tummy control design</li>
  
    <li>Dark blue wash with some fading at hips and thighs</li>
  
    <li>Approximate inseam: 32 inches</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 54.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (368, N'Jessica Simpson Jean, Kiss Me Skinny Jeggings ', N'<div id="longDescription" class="longDescription">
	Adorable with any of the season''s tops or tunics, these Jessica Simpson jeggings are perfect for a sleek silhouette!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise: approx. 8 inches</li>
  
    <li>Skinny fit</li>
  
    <li>Skinny leg </li>
  
    <li>Zipper fly with a button closure</li>
  
    <li>5-pocket style, embroidered logo at back right pocket</li>
  
    <li>Waistband with belt loops</li>
  
    <li>Inseam: approx. 31 inches</li>
  
  
    
      <li><a class="bulletLinks" href="http://social.macys.com/mstylelab/">Check out the latest Junior trends!</a></li>
    
  
  

</ul>', 59.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (369, N'Tommy Hilfiger Jeans, Hope Boot Cut, Kristina Authentic Wash', N'<div id="longDescription" class="longDescription">
	Looking for boot cut jeans with a waistband low enough to be stylish yet high enough to prevent "spillage?" These classics from Tommy Hilfiger fit the bill, in a perfectly-weathered blue wash.  
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise: approx. 9 inches</li>
  
    <li>Straight fit through hips and thighs</li>
  
    <li>Boot cut leg</li>
  
    <li>Button and zip front closure</li>
  
    <li>Classic five pocket styling</li>
  
    <li>Medium blue wash has white contrast topstitching; some blasting at thighs</li>
  
    <li>Available in approximate inseams: 30 inches (S); 32 inches (R); 34 inches (L)</li>
  
    <li>Women&#039;s jeans</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=105&channel_id=1">The World of Tommy</a></li>
    
  
  

</ul>', 69.5000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (370, N'Levi''s Jeans, Curvy Boot Cut', N'<div id="longDescription" class="longDescription">
	These boot leg jeans by Levi''s are cut to complement a curvy figure, and feature a touch of stretch for comfort!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex </li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise: approx. 8-3/4 inches; higher rise in back for coverage</li>
  
    <li>Stretch fit; relaxed through hip and thigh</li>
  
    <li>Boot cut leg openings</li>
  
    <li>Belt loops</li>
  
    <li>Zip fly with one-button closure</li>
  
    <li>Classic five-pocket styling</li>
  
    <li>Approximate inseam: 32 inches</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="http://www.macys.com/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/women">Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (371, N'Levi''s Jeans, 529 Curvy Bootcut, Premium Indigo Wash', N'<div id="longDescription" class="longDescription">
	The 529 Curvy Bootcut jeans from Levi''s feature a stretch fit that flatters, with a rise that contours to your every curve.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise: approx. 8-7/8 inches</li>
  
    <li>Slim fit through hips and thighs</li>
  
    <li>Boot cut leg opening</li>
  
    <li>Button closure with zip fly; belt loops at waistband</li>
  
    <li>Five-pocket styling with signature embroidery on back pockets</li>
  
    <li>Dark wash with slight whiskering in hips</li>
  
    <li>Approximate inseam: 32 inches</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="http://www.macys.com/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/women">Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (372, N'Levi''s Jeans, 512 Perfectly Slimming Bootcut, Shadow Blue Wash', N'<div id="longDescription" class="longDescription">
	These Levi''s 512 bootcut jeans you know you''ll look good in, complete with a slimming tummy panel.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/elastane</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise: approx. 11 inches</li>
  
    <li>Slim fit through hips and thighs</li>
  
    <li>Boot cut leg opening</li>
  
    <li>Built-in tummy control panel</li>
  
    <li>Classic five-pocket styling</li>
  
    <li>Belt loops</li>
  
    <li>Available in approx. inseams: 30&#034; (S), 32&#034; (R), 34&#034; (L)</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="/shop/product?ID=320014">Also available in petites</a></li>
    
  
    
      <li><a class="bulletLinks" href="http://www.macys.com/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/women">Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (373, N'Levi''s Jeans, 545 Bootcut, Sky Wash', N'<div id="longDescription" class="longDescription">
	Broken in to perfection, the Levi''s 545 bootcut jeans automatically look like your favorite pair!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/elastane</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise: approx. 8-7/8 inches</li>
  
    <li>Slim fit through hips and thighs</li>
  
    <li>Boot cut leg opening</li>
  
    <li>Belt loops at waistband; button closure with zip fly</li>
  
    <li>Classic five-pocket styling</li>
  
    <li>Available in approx. inseams: 30&#034; (S), 32&#034; (R), 34&#034; (L)</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="http://www.macys.com/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/women">Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (374, N'INC International Concepts Jeans, Curvy Fit Bootcut Studded Pocket, Medium Wash', N'<div id="longDescription" class="longDescription">
	These studded and rhinestone-trimmed bootcut jeans from INC hug your curves like they were made just for you!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise: approx. 8 inches</li>
  
    <li>Contoured, curvier fit through hips and thighs</li>
  
    <li>Bootcut leg</li>
  
    <li>Button and zip front closure; belt loops</li>
  
    <li>Five pocket styling; pockets feature studs and rhinestone detailing</li>
  
    <li>Blue wash with fading at hips, thighs, knees and seat</li>
  
    <li>Light whiskering at hips and thighs</li>
  
    <li>Approximate inseam: 33 inches</li>
  
  
  

</ul>', 79.5000, 59.9900, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (375, N'Levi''s Jeans, Classic Bold Curve Straight Leg, Limitless Wash', N'<div id="longDescription" class="longDescription">
	You always come back to the classics! Levi''s Bold Curve jeans fit and flatter your figure, now with a perfectly-antiqued blue wash.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/elastane</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise: approx. 7-1/4 inches</li>
  
    <li>Slim fit through hips and thighs</li>
  
    <li>Straight leg</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Five pocket styling; back pockets have embroidery</li>
  
    <li>Dark blue wash with fading and whiskering at hips and thighs</li>
  
    <li>Approximate inseam: 32 inches</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 58.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (376, N'Silver Jeans, Tuesday Bootcut Medium Wash', N'<div id="longDescription" class="longDescription">
	Fade and whiskering add a perfect worn-in look to these Silver Tuesday bootcut jeans -- make them your denim staple! 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise: approx. 7-1/2 inches </li>
  
    <li>Straight fit </li>
  
    <li>Bootcut leg </li>
  
    <li>Zipper fly with a button closure </li>
  
    <li>5-pocket style, gold embroidered back patch pockets</li>
  
    <li>Fade at thighs and seat </li>
  
    <li>Dark wash </li>
  
    <li>Waistband with belt loops, buttoned extended tab</li>
  
    <li>Inseam: approx. 33 inches </li>
  
    <li>Women&#039;s jeans</li>
  
  
    
      <li><a class="bulletLinks" href="http://social.macys.com/mstylelab/">Check out the latest Junior trends!</a></li>
    
  
  

</ul>', 75.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (377, N'Lauren Jeans Co. Jeans, Lyn Classic Bootcut Manhattan Wash', N'<div id="longDescription" class="longDescription">
	A sleek bootcut silhouette is designed with a hint of stretch for comfort and a flattering fit.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/elastane</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Standard-rise belted waist, sleek hip</li>
  
    <li>Zip fly with button closure, five-pocket jean styling with signature metal rivets</li>
  
    <li>Belt not included </li>
  
    <li>Leather logo patch at back right waist</li>
  
    <li>Available in approx. inseams: 31&#034; and 33&#034;</li>
  
    <li>Women&#039;s jeans</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=259&channel_id=1&bundle_entryPath=/shop/stars_ralphlauren_her ">Lauren Holiday Gifts</a></li>
    
  
  

</ul>', 69.5000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (378, N'Calvin Klein Jeans, Skinny Stretch Jeans, Saturated Black Wash', N'<div id="longDescription" class="longDescription">
	Two great looks that look great together: black and denim! These skinnies from Calvin Klein Jeans are destined to be your new go-to pair. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/elastane</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise: approx. 9-1/8 inches</li>
  
    <li>Skinny fit through hips and thighs</li>
  
    <li>Straight leg</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Classic five pocket styling; back patch pockets have embroidery</li>
  
    <li>Contrast topstitching</li>
  
    <li>Saturated black wash; no fading or blasting</li>
  
    <li>Fabric has stretch</li>
  
    <li>Available in approx. inseams: 31 inches (R); 33 inches (L) </li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 49.5000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (379, N'BandolinoBlu Jeans, Arianna Flap Pocket Boot Cut, Saturated Black Wash', N'<div id="longDescription" class="longDescription">
	With a curvy stretch fit and stylish bootcut leg, these BandolinoBlus are sure to be your go-to pair. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise: approx. 10-1/4 inches (9-1/2 inches for short)</li>
  
    <li>Curvy fit through hips and thighs</li>
  
    <li>Bootcut leg opening</li>
  
    <li>Curved two-button waistband with belt loops; zip fly</li>
  
    <li>Five-pocket styling with embroidered back button-through flap pockets</li>
  
    <li>Saturated black wash with contrast topstitching</li>
  
    <li>Available in approx. inseams: 30-1/2&#034; (S), 32-1/2&#034; (R) </li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 48.0000, 29.9900, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (380, N'7 For All Mankind Jeans, Stretch Boot Cut NY Dark Wash', N'<div id="longDescription" class="longDescription">
	Always chic and trendy, these boot-cut jeans from 7 For All Mankind are a wardrobe essential.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/elastane</li>
  
    <li>Machine washable</li>
  
    <li>Made in USA</li>
  
    <li>This item was previously identified in error as a clearance item. The price listed is the correct current price. </li>
  
    <li>Low rise: approx. 8 inches</li>
  
    <li>Slim fit through hips and thighs</li>
  
    <li>Boot cut leg opening</li>
  
    <li>Button closure with zip fly; belt loops at waistband</li>
  
    <li>Five pocket styling with signature 7 For All Mankind embroidery at back pockets</li>
  
    <li>Contrast stitching</li>
  
    <li>Whisker detail at hips</li>
  
    <li>Available in approx. inseams: 31&#034; (S), 34&#034; (R), 36&#034; (L)</li>
  
  
    
      <li><a class="bulletLinks" href="javascript:pop(''/r50x32_7jeans_popup.jsp'',''macys'',''width=605,scrollbars=yes,height=600'')">See all 7 For All Mankind fit descriptions</a></li>
    
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="http://www.macys.com/campaign/social?campaign_id=202&channel_id=1&bundle_entryPath=/women-home">What&#039;s New In Impulse</a></li>
    
  
  

</ul>', 159.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (381, N'Levi''s Jeans, 505 Straight Leg, Blue Wave Wash', N'<div id="longDescription" class="longDescription">
	Levi''s 505 Straight Leg stretch jeans in a sleek dark wash--ready for weekdays and weekends.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/elastane</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid-rise: approx. 10 inches</li>
  
    <li>Stretch fit</li>
  
    <li>Straight leg opening</li>
  
    <li>Belt loops</li>
  
    <li>Zip fly with one-button closure</li>
  
    <li>Classic five-pocket styling</li>
  
    <li>Approximate inseam: 30 inches (S); 32 inches (R); 34 inches (L)</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
    
      <li><a class="bulletLinks" href="http://www.macys.com/campaign/social?campaign_id=163&channel_id=1&bundle_entryPath=/women">Levi&#039;s Shop</a></li>
    
  
  

</ul>', 54.0000, 39.9900, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (382, N'Miss Me Jeans, Bootcut Leg Studded Embroidered Faux Leather, Medium Blue Wash', N'<div id="longDescription" class="longDescription">
	Go bold in these Miss Me jeans, featuring a curve-hugging fit and blasted denim wash for a perfectly worn-in look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/Elastane?, trim: cotton/terylene</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Women&#039;s jeans </li>
  
    <li>Low rise: approx. 7 inches </li>
  
    <li>Slim, contoured fit through hips and thighs </li>
  
    <li>Bootcut leg </li>
  
    <li>Zipper and button closure </li>
  
    <li>Belt loops </li>
  
    <li>Classic 5-pocket styling; embroidered &amp; studded back pockets with fake leather trim </li>
  
    <li>Medium blue wash with blasting and distressing at legs</li>
  
    <li>Approximate inseam: 34 inches </li>
  
  
  

</ul>', 99.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (383, N'Style&co. Jeans, Tummy Control Embroidered Bootcut, Jewel Wash', N'<div id="longDescription" class="longDescription">
	Detailed embroidery featuring fancy fleur-de-lys designs set these Style&co. jeans apart! The tummy control panel gives you support right where you want it, too.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>High rise: approx. 11 inches</li>
  
    <li>Straight fit through hips and thighs</li>
  
    <li>Bootcut leg</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Classic 5-pocket styling; front coin pocket with embroidery and rhinestone studding</li>
  
    <li>Back patch pockets with detailed embroidery and rhinestone studding</li>
  
    <li>Dark blue wash has no fading or whiskering</li>
  
    <li>Tummy control panel holds you in</li>
  
    <li>Approximate inseam: 32 inches</li>
  
  
  

</ul>', 59.0000, 42.9900, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (384, N'Style&co. Jeans, Straight Leg Comfort Waistband, Rinse Wash', N'<div id="longDescription" class="longDescription">
	Dark blue and a relaxed, comfortable fit will make these Style&co. jeans your new  favorite pair!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise: approx. 9-5/8 inches</li>
  
    <li>Straight fit fit through hips and thighs</li>
  
    <li>Straight leg</li>
  
    <li>Button and zipper front closure; belt loops; tooled metal buttons</li>
  
    <li>Classic 5-pocket styling</li>
  
    <li>Comfort waistband with elastic insets</li>
  
    <li>Dark blue wash</li>
  
    <li>Approximate inseam: 29-1/2 inches</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 49.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (385, N'Calvin Klein Jeans, Straight Leg Fit Skinny Jeans, Rinse Wash', N'<div id="longDescription" class="longDescription">
	Skinny jeans get straightened out this season with this look from Calvin Klein Jeans. Dress them up with a fun blouse, or dress them down with an easy tee.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/elastane</li>
  
    <li>Machine wash</li>
  
    <li>Imported</li>
  
    <li>Low rise: approx. 8-1/2 inches</li>
  
    <li>Skinny fit through hips and thighs </li>
  
    <li>Straight leg</li>
  
    <li>Zipper and button fly closure</li>
  
    <li>Belt loops</li>
  
    <li>Classic 5-pocket styling</li>
  
    <li>Dark wash without distressing for a clean look</li>
  
    <li>Approximate inseam: 33 inches</li>
  
    <li>Women&#039;s skinny jeans</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 49.5000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (386, N'Levi''s Pants, 526 Slender Bootcut Corduroy ', N'<div id="longDescription" class="longDescription">
	Prepare for crisp days with these smart corduroy pants from Levi''s. Match them with chunky knits and boots for the coziest look of the season!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise: approx. 9-1/2 inches </li>
  
    <li>Slim, contoured fit through hips and thighs</li>
  
    <li>Bootcut leg</li>
  
    <li>Zipper and button closure </li>
  
    <li>Belt loops; removable belt included </li>
  
    <li>Classic 5-pocket styling with back flap pockets</li>
  
    <li>Thin wale corduroy</li>
  
    <li>Approximate inseam: 32 inches </li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 54.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (387, N'INC International Concepts Jeans, Curvy Fit Straight Leg Five Pocket, Dark Wash', N'<div id="longDescription" class="longDescription">
	INC''s version of the season''s hottest denim ??mini-flare straight leg jeans ? is just right for pairing with tunics, slouchy sweaters and silky blouses!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/rayon/polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise: approx. 8 inches</li>
  
    <li>Curvy, contoured fit through hips and thighs</li>
  
    <li>Straight leg with slight flare at ankle</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Classic five pocket styling</li>
  
    <li>Dark wash has no fading or whiskering </li>
  
    <li>Approximate inseam: 32-1/2 inches </li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 69.5000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (388, N'Style&co. Jeans, Straight Leg Natural Fit, Aged Indigo Wash', N'<div id="longDescription" class="longDescription">
	Your new everyday pair: Style&co.''s ultra-affordable jeans looks great in a relaxed, straight-leg fit and perfectly-faded blue wash!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>High rise: approx. 11 inches</li>
  
    <li>Relaxed fit through hips and thighs</li>
  
    <li>Straight leg</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Classic five pocket styling</li>
  
    <li>Medium blue wash has some fading at hips, thighs and seat</li>
  
    <li>Approximate inseam: 34 inches long</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 27.9800, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (389, N'Silver Jeans, Suki Surplus Bootcut Distressed Indigo', N'<div id="longDescription" class="longDescription">
	Distress details add a perfect worn-in look to these Silver Suki bootcut jeans -- make them your denim staple! 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise: approx. 7-1/2 inches </li>
  
    <li>Straight fit </li>
  
    <li>Bootcut leg </li>
  
    <li>Zipper fly with button closure </li>
  
    <li>5-pocket style, back buttoned flap pockets with embroidery</li>
  
    <li>Heavy fade &amp; whiskering at thighs and seat </li>
  
    <li>Medium wash </li>
  
    <li>Waistband with belt loops </li>
  
    <li>Inseam: approx. 33 inches </li>
  
    <li>Women&#039;s jeans</li>
  
  
    
      <li><a class="bulletLinks" href="http://social.macys.com/mstylelab/">Check out the latest Junior trends!</a></li>
    
  
  

</ul>', 85.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (390, N'Kut from the Kloth Jeans, Bootcut Topstitched Flap Pocket, Certain Wash', N'<div id="longDescription" class="longDescription">
	Try a little topstitching for a fresh look. Kut from the Kloth''s fun, flirty jeans make a good choice for date night or a weekend party!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Low rise: approx. 8 inches</li>
  
    <li>Straight fit through hips and thighs</li>
  
    <li>Bootcut leg</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Five pocket styling; back pockets have flap closure and embroidery</li>
  
    <li>Medium blue wash with fading and whiskering</li>
  
    <li>Allover contrast topstitching</li>
  
    <li>Approximate inseam: 32 inches long</li>
  
    <li>Women&#039;s jeans</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 79.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (391, N'INC International Concepts Jeans, Curvy Fit Bootcut Sequin Pocket, Mid Wash', N'<div id="longDescription" class="longDescription">
	INC''s most-beloved curvy fit bootcut jeans are back with a sassy addition: sequins sparkle on the back patch pockets!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise: approx. 9 inches</li>
  
    <li>Contoured, curvier fit through hips and thighs</li>
  
    <li>Bootcut leg</li>
  
    <li>Button and zip front closure; belt loops</li>
  
    <li>Five pocket styling</li>
  
    <li>Back patch pockets feature signature embroidery and sequin detailing</li>
  
    <li>Blue wash with fading at hips, thighs and seat</li>
  
    <li>Available in approx. inseams: 31 inches (S); 33 inches (R)</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 69.5000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (392, N'Lucky Brand Jeans, Lily Sweet N Straight Jeans, Ol Sunflower Wash', N'<div id="longDescription" class="longDescription">
	Lucky Brand Jeans'' Sweet N Straights fit just right ?  not too baggy, not too tight.  The lighter blue wash looks relaxed and vintage-inspired!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid rise: approx. 8-3/4 inches</li>
  
    <li>Slim fit through hips and thighs</li>
  
    <li>Skinny leg</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Classic five pocket styling; two back patch pockets wtih embroidery</li>
  
    <li>Lighter blue wash; fading and whiskering at hips and thighs</li>
  
    <li>Available in approx. inseams: 30 inches (S); 32 inches (R); 34 inches (L)</li>
  
    <li>Women&#039;s jeans</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 79.5000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (393, N'Lucky Brand Jeans Jeans, Sofia Bootcut, Ol Oak Wash', N'<div id="longDescription" class="longDescription">
	The Sofia bootcut from Lucky Brand Jeans are cut low for a hip-hugging fit! Pair them with a peasant top for a bohemian-inspired look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/elastane</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Low rise: approx. 8 inches</li>
  
    <li>Slim, contoured fit through hips and thigh</li>
  
    <li>Bootcut leg</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Classic five pocket styling</li>
  
    <li>Blue wash has fading and whiskering; contrast topstitching throughout</li>
  
    <li>Approximate inseam: 32 inches</li>
  
    <li>Women&#039;s jeans</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 99.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (394, N'Levi''s Jeans, Skinny Leg, Black Ink Wash', N'<div id="longDescription" class="longDescription">
	The perfect cross between denim and fitted black pants, these Levi''s skinny leg jeans will never do you wrong!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid-rise: approx. 9 inches</li>
  
    <li>Slim fit through hips and thighs</li>
  
    <li>Skinny leg</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Classic five-pocket styling</li>
  
    <li>Black wash</li>
  
    <li>Denim has some stretch for a great fit</li>
  
    <li>Approximate inseam: 33 inches</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 54.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (395, N'Levi''s Jeans, Skinny Leg, Night Storm Wash', N'<div id="longDescription" class="longDescription">
	Looking for a skinny leg but not a suction-worthy fit? Levi''s has got your perfect pair right here, in a "wear-everywhere" dark blue wash.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/Elastane?</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mid-rise: approx. 9 inches</li>
  
    <li>Slim fit through hips and thighs</li>
  
    <li>Skinny leg</li>
  
    <li>Button and zipper front closure; belt loops</li>
  
    <li>Classic five-pocket styling</li>
  
    <li>Dark blue wash with whiskering and fading</li>
  
    <li>Denim has some stretch for a great fit</li>
  
    <li>Approximate inseam: 31 inches</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=36&channel_id=1&bundle_entryPath=bodyType?id=3">See Denim Fit Guide</a></li>
    
  
  

</ul>', 54.0000, NULL, 2, 4)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (396, N'The North Face Jacket, Denali Zip Front Fleece', N'<div id="longDescription" class="longDescription">
	Constructed with recycled materials, the Denali by The North Face is a perfect piece for transitioning between seasons.  Lightweight yet cozy, it can be zipped into other North Face outerwear or can be worn alone.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Shell A:Recycled polyester/polyester.Shell B:Nylon</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Funnel collar</li>
  
    <li>Zip front closure</li>
  
    <li>Long sleeves with elastic cuffs to keep out the elements</li>
  
    <li>Welt pockets at side waist; single welt pocket at left chest</li>
  
    <li>Cinchable cord at hem</li>
  
    <li>Relaxed fit; contrast color chest</li>
  
    <li>Logo at left chest</li>
  
    <li>Zip-in compatible with other products from The North Face</li>
  
    <li>Lined with polar fleece</li>
  
    <li>Lightweight</li>
  
    <li>Hits at hip; approx. 26 inches from center back neckline</li>
  
  
  

</ul>', 165.0000, NULL, 2, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (397, N'The North Face Jacket, Denali Zip Front Hooded Fleece', N'<div id="longDescription" class="longDescription">
	Lightweight yet cozy, the Denali jacket can be zipped into other North Face outerwear or can be worn on its own. An attached, fleece-lined hood offers extra warmth.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Shell:recycled polyester/polyester; shell B; nylon</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Attached fleece-lined hood with cinchable drawstring pulls</li>
  
    <li>Zip front closure</li>
  
    <li>Long sleeves with elastic cuffs to keep out the elements</li>
  
    <li>Welt pockets at side waist; single welt pocket at left chest</li>
  
    <li>Cinchable cord at hem</li>
  
    <li>Slim fit; contrast color chest</li>
  
    <li>Logo at left chest</li>
  
    <li>Zip-in compatible with other products from The North Face</li>
  
    <li>Lightweight</li>
  
    <li>Hits at hip; approx. 26 inches long from center back neckline</li>
  
  
  

</ul>', 179.0000, NULL, 2, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (398, N'The North Face Jacket, Masonic Zip Front Hooded Fleece', N'<div id="longDescription" class="longDescription">
	The North Face offers high-performance technology with the Masonic hoodie! The lightweight, breathable polyester fleece has UV protection to keep harmful rays at bay while keeping you warm.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Hooded</li>
  
    <li>Zip front closure</li>
  
    <li>Long sleeves</li>
  
    <li>Pouch pockets at front waist</li>
  
    <li>Breathable fleece fabric provides ultraviolet protection factor of 30</li>
  
    <li>Fitted silhouette</li>
  
    <li>Logo at left chest</li>
  
    <li>Lightweight</li>
  
    <li>Hits at hip; approx. 26 inches long from center back neckline</li>
  
  
  

</ul>', 65.0000, NULL, 2, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (399, N'The North Face Jacket, Khumbu Zip Front Two-Tone Fleece', N'<div id="longDescription" class="longDescription">
	The Khumbu jacket by The North Face is a must-have for cold weather. Wear it alone on autumn days or layer it under a heavier coat for maximum warmth!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Funnel collar</li>
  
    <li>Zip front closure with windflap</li>
  
    <li>Long sleeves</li>
  
    <li>Zipper closure welt pockets at waist</li>
  
    <li>Can be integrated into other products from The North Face</li>
  
    <li>Contrast color sleeves and collar</li>
  
    <li>Logo at left chest</li>
  
    <li>Lightweight</li>
  
    <li>Hits at hip; approx. 25 inches long from center back neckline</li>
  
  
  

</ul>', 80.0000, NULL, 2, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (400, N'The North Face Jacket, Resolve Hooded Waterproof Lightweight Rain', N'<div id="longDescription" class="longDescription">
	Whatever the weather, be prepared in the Resolve jacket from The North Face. Lightweight and breathable, with a stowaway hood, this winner was made for unpredictable skies!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Nylon; body lining: polyester; sleeve and hood lining: nylon</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Attached hood is stored in collar for convenience</li>
  
    <li>Hidden placket zip front closure with velcro closure overlay</li>
  
    <li>Long sleeves with elastic cuffs to keep out the elements</li>
  
    <li>Welt pockets at side waist</li>
  
    <li>Cinchable cord at hem</li>
  
    <li>Mesh lined</li>
  
    <li>Logo at left chest</li>
  
    <li>Waterproof; lightweight</li>
  
    <li>Hits at hip; approx. 27 inches long from center back neckline</li>
  
  
  

</ul>', 80.0000, NULL, 2, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (401, N'The North Face Jacket, Apex Bionic Zip Front Lightweight ', N'<div id="longDescription" class="longDescription">
	The Apex Bionic jacket is made for changeable weather. An enhanced windproof design and a fleece interior keep you feeling warm; a streamlined silhouette keeps you looking cool!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/elastane</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Funnel collar</li>
  
    <li>Front zipper closure</li>
  
    <li>Long sleeves</li>
  
    <li>Zipper closure welt pockets at waist; single zip closure pocket at left chest</li>
  
    <li>Lined with mesh and fleece</li>
  
    <li>Enhanced windproof design</li>
  
    <li>Casual fit</li>
  
    <li>Logo at left chest</li>
  
    <li>Lightweight</li>
  
    <li>Unlined</li>
  
    <li>Hits at hip; approx. 25.5 inches long from center back neckline</li>
  
  
  

</ul>', 129.0000, NULL, 2, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (402, N'The North Face Jacket, Osito Zip Front Fleece', N'<div id="longDescription" class="longDescription">
	Silken fleece adds extra shine to the Osito jacket from The North Face. Layer it up to maximize warmth, or sport it with a tee on changeable days!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Zip front closure</li>
  
    <li>Long sleeves with hidden snap closures at cuffs</li>
  
    <li>Zipper closure pockets at waist</li>
  
    <li>Fleece has a silky smooth feel</li>
  
    <li>Cinchable cord at hem</li>
  
    <li>Logo at upper left chest</li>
  
    <li>Lined</li>
  
    <li>Lightweight</li>
  
    <li>Hits at hip; approx. 25.5 inches long from center back neckline </li>
  
  
  

</ul>', 99.0000, NULL, 2, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (403, N'On Que Jacket, Animal Print Zip Up Velour ', N'<div id="longDescription" class="longDescription">
	This so-soft velour jacket from On Que is a luxe must-have for casual days. The animal print gives it an on-trend touch, too!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Stand collar </li>
  
    <li>Zip-front closure </li>
  
    <li>Long sleeves </li>
  
    <li>Zipper pockets at waist</li>
  
    <li>Velour </li>
  
    <li>Allover multi animal print </li>
  
    <li>Easy fit </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 44.0000, NULL, 2, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (404, N'Style&co. Sport Top, Long Sleeve Velour Metallic Stripe Cowlneck ', N'<div id="longDescription" class="longDescription">
	This great look from Style&co. Sport combines lush velour fabric with a cozy cowlneck for sumptuous style. Metallic stripes add a dash of sparkle, too!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester/other</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Cowl neckline </li>
  
    <li>Pullover style</li>
  
    <li>Long sleeves </li>
  
    <li>Velour fabric with metallic stripes </li>
  
    <li>Patch pockets at hips</li>
  
    <li>Easy fit </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 49.0000, NULL, 2, 5)
GO
print 'Processed 400 total records'
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (405, N'DKNY Jeans Sweater, Long Sleeve Zip Up Knit Hoodie ', N'<div id="longDescription" class="longDescription">
	This oversized cardigan from DKNY Jeans offers coziness to any outfit thanks to plush chevron knit and a chunky exposed zipper. Pair it with your favorite leggings for easy weekend style.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic/wool</li>
  
    <li>Hand wash</li>
  
    <li>Imported</li>
  
    <li>Hooded V-neckline </li>
  
    <li>Zip-front closure </li>
  
    <li>Long sleeves </li>
  
    <li>Chevron knit at front </li>
  
    <li>Angled pockets at hips</li>
  
    <li>Relaxed fit; tunic length</li>
  
    <li>Hits below hip</li>
  
  
  

</ul>', 89.0000, NULL, 2, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (406, N'DKNY Jeans, Long Sleeve Cable Knit Hoodie ', N'<div id="longDescription" class="longDescription">
	A sumptuous cable-knit sweater in a relaxed hoodie design is a layering must-have from DKNY Jeans. Pair it with a leather jacket and jeans for essential downtown style.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic/wool</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Hood without drawstrings </li>
  
    <li>Pullover style; no closures </li>
  
    <li>Long sleeves </li>
  
    <li>Cable and ribbed knit throughout </li>
  
    <li>Easy fit </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 79.0000, NULL, 2, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (407, N'Nike Top, Pro Hyperwarm Long Sleeve Mock Turtleneck Tee', N'<div id="longDescription" class="longDescription">
	Stay comfy no matter where your workout takes you in this Nike athletic top. Featuring cozy Dri-FIT fabric with a brushed interior that wicks away moisture, this look keeps you warm and dry on those chilly morning jogs!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Zip-up mock turtleneck collar</li>
  
    <li>Pullover style </li>
  
    <li>Long sleeves with thumbholes </li>
  
    <li>Nike Swoosh at collar</li>
  
    <li>Seams at back</li>
  
    <li>Fitted silhouette </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 55.0000, NULL, 2, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (408, N'Lauren by Ralph Lauren Jacket, Britannia Long Sleeve Velour Embroidered Mock Turtleneck ', N'<div id="longDescription" class="longDescription">
	The epitome of casual chic, the full-zip mock turtleneck jacket from Lauren by Ralph Lauren is rendered in lustrous cotton-blend velour with a heritage-inspired embroidered crown crest at the chest. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Mock turtleneck collar</li>
  
    <li>Full-zip front with a gold-tone &#034;LRL&#034;-embossed metal pull</li>
  
    <li>Long-sleeved, with sewn cuffs and hem</li>
  
    <li>Metallic embroidered crown crest and &#034;Ralph Lauren&#034; banner scroll at the chest for an iconic flourish</li>
  
    <li>Angled welt pockets with tonal piping at the waist</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=259&channel_id=1&bundle_entryPath=/shop/stars_ralphlauren_her ">Lauren Holiday Gifts</a></li>
    
  
  

</ul>', 99.5000, 74.9900, 2, 5)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (409, N'Style&co. Sweater, Long Sleeve Studded Scarf Tunic Sweater', N'<div id="longDescription" class="longDescription">
	Studs add edge to a tunic sweater from Style&co. Wear it with or without the matching studded scarf!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>High neckline with studs</li>
  
    <li>Pullover styling</li>
  
    <li>Long sleeves</li>
  
    <li>Comes with removable studded scarf</li>
  
    <li>A-line silhouette</li>
  
    <li>Hits at thigh</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=45&channel_id=1&bundle_entryPath=bodytype/plussizes">Shop the Women&#039;s Dress Finder</a></li>
    
  
  

</ul>', 54.0000, 25.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (410, N'Style&co. Sweater, Three Quarter Sleeve Sequin Scarf Tunic Sweater', N'<div id="longDescription" class="longDescription">
	Style&co. adds some sparkle to a tunic dress with a detachable, coordinating sequined scarf! Pair with opaque tights for a classic and sophisticated look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Three quarter length sleeves with contrast trim at cuffs</li>
  
    <li>Comes with removable sequined scarf</li>
  
    <li>A-line silhouette</li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 54.0000, 25.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (411, N'Karen Scott Sweater, Long Sleeve Crewneck Cable Knit', N'<div id="longDescription" class="longDescription">
	Classic and casual: that''s the no-fuss style of this Karen Scott sweater. Pair it with flats and khakis for a look that works again and again!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Crew neckline</li>
  
    <li>Pullover style</li>
  
    <li>Long sleeves</li>
  
    <li>Allover cable-knit; ribbed trim and hem</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 44.0000, 21.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (412, N'Karen Scott Sweater, Long Sleeve V-Neck Cable Knit Henley', N'<div id="longDescription" class="longDescription">
	A classic henley shirt gets texturized with cable knit in this Karen Scott sweater. Pair it with dark jeans for a traditional look!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>V-neckline with henley button front placket</li>
  
    <li>Pullover style</li>
  
    <li>Long sleeves</li>
  
    <li>Ribbed trim; cable knit at front</li>
  
    <li>Hits at the hip</li>
  
  
  

</ul>', 44.0000, 21.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (413, N'Style&co. Sweater, Dolman Sleeve Cowl Neck Cable Knit', N'<div id="longDescription" class="longDescription">
	A slouchy fit and dolman sleeves give Style&co.''s sweater a feeling of relaxed elegance! The cable knit cowl adds a unique touch, too.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Cowl neckline is cable knit</li>
  
    <li>Pullover styling</li>
  
    <li>Dolman sleeves</li>
  
    <li>Piped seams at front</li>
  
    <li>Relaxed fit</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 54.0000, 23.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (414, N'Karen Scott Sweater, Long Sleeve Marled Shawl Collar ', N'<div id="longDescription" class="longDescription">
	This classic Karen Scott sweater comes in a simple silhouette you''ll wear season after season. Pair it with corduroys for a textural look that''s so cozy.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic/polyester</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Shawl collar </li>
  
    <li>Pullover style</li>
  
    <li>Long sleeves</li>
  
    <li>Allover marled yarn</li>
  
    <li>Easy fit</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 39.0000, 19.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (415, N'Karen Scott Sweater, Long Sleeve Shawl Collar Cable Knit', N'<div id="longDescription" class="longDescription">
	A shawl collar and cable knit lends a homespun look to this classic sweater from Karen Scott.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Shawl collar</li>
  
    <li>Pullover style</li>
  
    <li>Long sleeves</li>
  
    <li>Cable-knit pattern at front</li>
  
    <li>Easy fit</li>
  
    <li>Hits below hip</li>
  
  
  

</ul>', 44.0000, 21.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (416, N'Style&co. Sweater, Long Sleeve Fair Isle Open Front Cardigan', N'<div id="longDescription" class="longDescription">
	A traditional Fair Isle knit gets a modern makeover from Style&co.! The swingy, draped fit layers well with your favorite tees and turtlenecks, too.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Cascade collar</li>
  
    <li>Open front; no closures</li>
  
    <li>Long sleeves</li>
  
    <li>Fair Isle and marled knit patterns</li>
  
    <li>Relaxed, swing fit</li>
  
    <li>Asymmetrical hem is longest at front</li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 54.0000, 26.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (417, N'Charter Club Sweater, Long Sleeve Crewneck Cashmere ', N'<div id="longDescription" class="longDescription">
	Charter Club brings a classic cashmere sweater in go-with-anything colors! Match it with khakis or jeans for style that is effortlessly luxe.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cashmere</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Crew neckline</li>
  
    <li>Pullover style</li>
  
    <li>Long sleeves</li>
  
    <li>2-ply cashmere</li>
  
    <li>Fitted silhouette</li>
  
    <li>Hits at hip</li>
  
  
    
      <li><a class="bulletLinks" href="/shop/product?ID=597778">Also Available in Petite</a></li>
    
  
  

</ul>', 109.0000, 59.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (418, N'Charter Club Sweater, Long Sleeve V-Neck Henley', N'<div id="longDescription" class="longDescription">
	Goldtone hardware and a soft cotton blend offer a touch of luxury to this Charter Club sweater. Dress it up with slim black pants and flats.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/nylon</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>V-neckline with goldtone closures</li>
  
    <li>Pullover style with henley placket</li>
  
    <li>Long sleeves</li>
  
    <li>Fitted silhouette</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 49.0000, 37.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (419, N'Charter Club Sweater, Long Sleeve V-Neck Cashmere', N'<div id="longDescription" class="longDescription">
	The softest cashmere in a flattering V-neck silhouette makes this sweater from Charter Club a must-have. When you pair it with a belt and pencil skirt, it''s just so chic!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cashmere</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>V-neckline</li>
  
    <li>Pullover style</li>
  
    <li>Long sleeves</li>
  
    <li>Belt not included</li>
  
    <li>2-ply cashmere</li>
  
    <li>Fitted silhouette</li>
  
    <li>Hits at hip</li>
  
  
    
      <li><a class="bulletLinks" href="/shop/product?ID=597777">Also Available in Petite</a></li>
    
  
  

</ul>', 109.0000, 59.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (420, N'Charter Club Sweater, Long Sleeve Turtleneck Cashmere', N'<div id="longDescription" class="longDescription">
	Cozy up to this chic turtleneck from Charter Club. Made from 100% cashmere, it feels as good as it looks!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cashmere</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Turtleneck collar</li>
  
    <li>Pullover style</li>
  
    <li>Long sleeves</li>
  
    <li>2-ply cashmere</li>
  
    <li>Fitted silhouette</li>
  
    <li>Hits at hip</li>
  
  
    
      <li><a class="bulletLinks" href="/shop/product?ID=597779">Also Available in Petite</a></li>
    
  
  

</ul>', 109.0000, 59.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (421, N'Charter Club Sweater, Long Sleeve Cowlneck Cashmere', N'<div id="longDescription" class="longDescription">
	Super-soft cashmere and a cozy cowlneck add up to one great sweater by Charter Club! Pair it with khakis and flats for an everyday look with elegance.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cashmere</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Cowl neckline</li>
  
    <li>Pullover style</li>
  
    <li>Long sleeves</li>
  
    <li>2-ply cashmere</li>
  
    <li>Fitted silhouette</li>
  
    <li>Hits at hip</li>
  
  
    
      <li><a class="bulletLinks" href="/shop/product?ID=597784">Also Available in Petite</a></li>
    
  
  

</ul>', 139.0000, 89.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (422, N'Lauren by Ralph Lauren Sweater, Jillian Long Sleeve Turtleneck', N'<div id="longDescription" class="longDescription">
	Knit for a feminine fit in soft ribbed cotton, this versatile Lauren by Ralph Lauren turtleneck is a chic seasonal essential.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Fold-over turtleneck collar</li>
  
    <li>Our embroidered ?LRL? monogram accents the collar</li>
  
    <li>Self-starting collar, cuffs and hem</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=259&channel_id=1&bundle_entryPath=/shop/stars_ralphlauren_her ">Lauren Holiday Gifts</a></li>
    
  
  

</ul>', 59.5000, 39.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (423, N'Style&co. Sweater, Long Sleeve Pointelle Knit Button Down Cardigan ', N'<div id="longDescription" class="longDescription">
	This Style&co. cardigan offers pointelle knit and a lace peplum for super-cute style. Lend a handmade look to your favorite jeans and tees with this easy layering piece!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Body:acrylic; woven:cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Shawl collar with V-neckline</li>
  
    <li>Button-front closure </li>
  
    <li>Long sleeves </li>
  
    <li>Pointelle knit at bodice</li>
  
    <li>Eyelet lace peplum </li>
  
    <li>Relaxed fit </li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 59.0000, 29.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (424, N'Style&co. Sweater, Long Sleeve Fair Isle Knit  Scoopneck Tunic', N'<div id="longDescription" class="longDescription">
	On-trend Fair Isle knit joins a flattering A-line silhouette in this Style&co. sweater! It''s the perfect match with leggings for unfussy, everyday style.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline </li>
  
    <li>Pullover style </li>
  
    <li>Long sleeves </li>
  
    <li>Fair Isle knit at yoke and cuffs </li>
  
    <li>Tunic length; A-line silhouette</li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 54.0000, 26.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (425, N'NY Collection Sweater, Dolman Sleeve Oversized Tunic', N'<div id="longDescription" class="longDescription">
	NY Collection''s oversized tunic sweater is just the thing for casual days and nights! Pair it with a statement necklace for a dressier look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Hand wash</li>
  
    <li>Imported</li>
  
    <li>High neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Dolman sleeves</li>
  
    <li>Oversized fit</li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 48.0000, 24.0000, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (426, N'NY Collection Dress, Long Sleeve Cowl Neck Cable Knit Sweater Dress', N'<div id="longDescription" class="longDescription">
	NY Collection gets it right with a chic sweater dress, complete with a cowl neckline and a cabled knit!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Hand wash</li>
  
    <li>Imported</li>
  
    <li>Cowl neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Long sleeves</li>
  
    <li>Cable knit at front</li>
  
    <li>Easy fit</li>
  
    <li>Hits above knee</li>
  
  
  

</ul>', 54.0000, 44.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (427, N'NY Collection Dress, Long Sleeve Cowl Neck Belted Sweater Dress', N'<div id="longDescription" class="longDescription">
	A patterned knit looks sophisticated when combined with a thoroughly fashion-forward silhouette! Wear NY Collection''s dress with or without the coordinating belt. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Hand wash</li>
  
    <li>Imported</li>
  
    <li>Oversized cowl neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Long sleeves</li>
  
    <li>Removable belt at waist</li>
  
    <li>Sweater dress with patterned knit</li>
  
    <li>Hits above knee</li>
  
  
  

</ul>', 54.0000, 44.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (428, N'INC International Concepts Sweater, Long Sleeve Turtleneck Cable Knit A-Line Tunic', N'<div id="longDescription" class="longDescription">
	INC''s swingy tunic sweater gets its super-luxe look and feel from the softest fabrics, like angora and silk!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Silk/nylon/angora rabbit hair, Lycra?</li>
  
    <li>Dry clean</li>
  
    <li>Imported</li>
  
    <li>Turtleneck collar</li>
  
    <li>Pullover styling</li>
  
    <li>Long sleeves</li>
  
    <li>Cable knit</li>
  
    <li>A-line silhouette</li>
  
    <li>Vents at side hem</li>
  
    <li>Asymmetrical hem</li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 99.5000, NULL, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (429, N'INC International Concepts Sweater, Long Sleeve Ribbed Metallic Turtleneck ', N'<div id="longDescription" class="longDescription">
	A snug fit and metallic ribbed knit make INC''s turtleneck shine! Wear it with black pants for a dressy look, or keep it casual and pair with jeans. 
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Rayon/nylon/polyester/metallic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Turtleneck collar</li>
  
    <li>Pullover styling</li>
  
    <li>Long sleeves</li>
  
    <li>Allover ribbed metallic knit</li>
  
    <li>Fitted silhouette</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 45.5000, 39.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (430, N'Style&co. Sweater, Three Quarter Sleeve Colorblock Striped Cowl Neck Tunic', N'<div id="longDescription" class="longDescription">
	Get an on-trend look in this colorblocked Style&co. tunic! Pair it with leggings and boots for style that works all season long.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Rayon/nylon</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Cowl neckline </li>
  
    <li>Pullover style </li>
  
    <li>Three-quarter bell sleeves </li>
  
    <li>Colorblocked stripes </li>
  
    <li>Relaxed fit </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 49.0000, 29.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (431, N'Style&co. Sweater, Long Sleeve Funnel Neck A-Line Cardigan', N'<div id="longDescription" class="longDescription">
	A clean silhouette and a cute mixed-stitch knit make Style&co.''s cardigan sweater a winner!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Funnel neckline</li>
  
    <li>Button-front closure</li>
  
    <li>Three quarter length sleeves</li>
  
    <li>Patch pockets at hips</li>
  
    <li>Mixed stitch knit</li>
  
    <li>A-line silhouette</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 54.0000, 26.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (432, N'Style&co. Sweater, Three Quarter Sleeve Cowl Neck Tunic ', N'<div id="longDescription" class="longDescription">
	Punch up leggings with this cozy Style&co. tunic! A cowl neckline and bell sleeves make for laid-back style you''ll love.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/viscose/nylon</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Cowl neckline </li>
  
    <li>Pullover style </li>
  
    <li>Three-quarter bell sleeves </li>
  
    <li>Relaxed fit </li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 49.0000, 29.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (433, N'Style&co. Sweater, Long Sleeve Marled Knit Turtleneck', N'<div id="longDescription" class="longDescription">
	Build up your wardrobe with Style&co.''s essential turtleneck sweater! The affordable price makes it a can''t-miss piece for any closet.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/nylon</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Turtleneck collar</li>
  
    <li>Pullover styling</li>
  
    <li>Long sleeves</li>
  
    <li>Allover marled knit</li>
  
    <li>Easy fit</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 21.9800, NULL, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (434, N'Style&co. Sweater, Three Quarter Sleeve Cable Knit Cowl Neck Tunic', N'<div id="longDescription" class="longDescription">
	Texture and form: Style&co.''s tunic sweater features a wide cowl neckline and a classic cable knit.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Cowl neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Three quarter length sleeves</li>
  
    <li>Cable knit</li>
  
    <li>Pockets at hip</li>
  
    <li>Relaxed fit</li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 54.0000, NULL, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (435, N'Style&co. Sweater, Three Quarter Sleeve Cowl Neck Tunic', N'<div id="longDescription" class="longDescription">
	A wide cowl neckline and a poncho-like shape make Style&co.''s tunic look casual yet refined!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Contrasting cowl neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Three quarter length sleeves are wide; bell cuff</li>
  
    <li>Gradient color knit</li>
  
    <li>Relaxed fit</li>
  
    <li>Hits below hip</li>
  
  
  

</ul>', 54.0000, 35.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (436, N'Style&co. Sweater, Long Sleeve Marled Knit Coat', N'<div id="longDescription" class="longDescription">
	Cozy marled knit makes this sweater jacket from Style&co. standout! Perfect for layering all season long.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Polyester/acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Foldover collar</li>
  
    <li>Button-front closure</li>
  
    <li>Bell sleeves</li>
  
    <li>Allover marled knit fabric</li>
  
    <li>Empire waist; A-line silhouette</li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 69.0000, 45.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (437, N'Style&co. Sweater, Long Sleeve Turtleneck Colorblock', N'<div id="longDescription" class="longDescription">
	Style&co.''s sweater is a cool way to add a colorblocked look to your closet, and can be worn from nine-to-five to after-hours with ease.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/nylon</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Turtleneck collar</li>
  
    <li>Pullover styling</li>
  
    <li>Long sleeves</li>
  
    <li>Fitted silhouette</li>
  
    <li>Allover ribbed knit</li>
  
    <li>Colorblocked</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 21.9800, NULL, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (438, N'Style&co. Sweater, Three Quarter Sleeve Colorblock Marled Scarf Tunic Sweater', N'<div id="longDescription" class="longDescription">
	Style&co. puts a sophisticated spin on the colorblocking trend. Wear it with or without the matching scarf!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic/nylon/wool</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>High neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Three quarter length sleeves with contrasting cuffs</li>
  
    <li>Marled knit and colorblocking</li>
  
    <li>Detachable colorbocked scard included</li>
  
    <li>Sweater dress; A-line silhouette</li>
  
    <li>Hits above knee</li>
  
  
  

</ul>', 54.0000, 35.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (439, N'Style&co. Sweater, Long Sleeve Fair Isle Knit Ruffle Cardigan', N'<div id="longDescription" class="longDescription">
	Leave it to Style&co. to mix classic femininity with this season''s most important trend: Fair Isle knit!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic/cotton</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Ruffle collar</li>
  
    <li>Front tie closures</li>
  
    <li>Long sleeves</li>
  
    <li>Allover Fair Isle knit</li>
  
    <li>Ruffled trim </li>
  
    <li>Cutaway hem</li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 59.0000, 29.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (440, N'Style&co. Sweater, Long Sleeve Marled Knit Ruffle Cardigan', N'<div id="longDescription" class="longDescription">
	Lovely ruffles give Style&co.''s essential cardigan a feminine look. Layer it with everything from silky camisoles to turtlenecks!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Ruffle collar</li>
  
    <li>Open front; Front button closure</li>
  
    <li>Long sleeves</li>
  
    <li>Marled knit</li>
  
    <li>Ruffled trim </li>
  
    <li>Cutaway hem</li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 69.0000, 45.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (441, N'Style&co. Sweater, Three Quarter Sleeve Sequin Scarf Tunic Sweater', N'<div id="longDescription" class="longDescription">
	Style&co. adds some sparkle to a tunic dress with a detachable, coordinating sequined scarf! Pair with opaque tights for a classic and sophisticated look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Three quarter length sleeves with contrast trim at cuffs</li>
  
    <li>Comes with removable sequined scarf</li>
  
    <li>A-line silhouette</li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 54.0000, 25.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (442, N'Style&co. Sweater, Long Sleeve Studded Scarf Tunic Sweater', N'<div id="longDescription" class="longDescription">
	Studs add edge to a tunic sweater from Style&co. Wear it with or without the matching studded scarf!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>High neckline with studs</li>
  
    <li>Pullover styling</li>
  
    <li>Long sleeves</li>
  
    <li>Comes with removable studded scarf</li>
  
    <li>A-line silhouette</li>
  
    <li>Hits at thigh</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=45&channel_id=1&bundle_entryPath=bodytype/plussizes">Shop the Women&#039;s Dress Finder</a></li>
    
  
  

</ul>', 54.0000, 25.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (443, N'Style&co. Vest, Sleeveless Asymmetrical Button Sweater', N'<div id="longDescription" class="longDescription">
	A unique take on the classic sweater vest, from Style&co. Asymmetrical closures give this piece extra flair!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/acrylic/polyester/spandex</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Collarless neckline</li>
  
    <li>Asymmetrical button closure</li>
  
    <li>Sleeveless</li>
  
    <li>Patch pockets at hem</li>
  
    <li>Relaxed fit; wrap silhouette</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 49.0000, NULL, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (444, N'NY Collection Dress, Short Sleeve Cowl Neck Metallic Belted Sweater', N'<div id="longDescription" class="longDescription">
	A tunic dress looks even more chic with this fall''s favorite trend, colorblocking! NY Collection''s sweater can be worn with colorful tights ??even basic black leggings!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic/metallic</li>
  
    <li>Hand wash</li>
  
    <li>Imported</li>
  
    <li>Cowl neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Short sleeves</li>
  
    <li>Removable belt at waist</li>
  
    <li>Metallic-flecked spacedyed knit</li>
  
    <li>Fitted silhouette</li>
  
    <li>Hits above knee</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=45&channel_id=1&bundle_entryPath=bodytype/plussizes">Shop the Women&#039;s Dress Finder</a></li>
    
  
  

</ul>', 54.0000, 44.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (445, N'NY Collection Dress, Three Quarter Sleeve Cowl Neck Colorblock Sweater', N'<div id="longDescription" class="longDescription">
	A tunic dress looks even more chic with this fall''s favorite trend, colorblocking! NY Collection''s sweater can be worn with colorful tights ??even basic black leggings!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Hand wash</li>
  
    <li>Imported</li>
  
    <li>Cowl neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Three quarter length sleeves</li>
  
    <li>Colorblocked</li>
  
    <li>Fitted silhouette</li>
  
    <li>Hits above knee</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=45&channel_id=1&bundle_entryPath=bodytype/plussizes">Shop the Women&#039;s Dress Finder</a></li>
    
  
  

</ul>', 54.0000, 44.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (446, N'AGB Sweater,  Short Sleeve Belted Cowl Neck Tunic', N'<div id="longDescription" class="longDescription">
	Sophisticated and a little bit sassy, AGB''s belted tunic sweater hugs all the right curves!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Hand wash</li>
  
    <li>Imported</li>
  
    <li>Cowl neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Short sleeves are ruched</li>
  
    <li>Removable belt at waist</li>
  
    <li>Fitted silhouette</li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 54.0000, 39.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (447, N'Charter Club Sweater, Long Sleeve Open Front Tweed Cardigan', N'<div id="longDescription" class="longDescription">
	Wrap yourself in style with this look from Charter Club. A relaxed fit and tweed yarn make it a perfect match with jeans and a tee!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic/polyester/wool</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Draped front</li>
  
    <li>Open front; no closures</li>
  
    <li>Long sleeves </li>
  
    <li>Allover tweed yarn</li>
  
    <li>Relaxed fit</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 55.0000, 29.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (448, N'Charter Club Sweater, Long Sleeve Shawl Collar Tweed', N'<div id="longDescription" class="longDescription">
	Snuggle into this classic sweater from Charter Club! Look chic on crisp days when you match it with dark jeans and flats.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic/polyester/wool</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Shawl collar</li>
  
    <li>Pullover style</li>
  
    <li>Long sleeves</li>
  
    <li>Allover tweed yarn</li>
  
    <li>Ribbed cuffs and hem</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 55.0000, 29.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (449, N'Style&co. Dress, Three Quarter Sleeve Sequin Scarf Tunic Sweater', N'<div id="longDescription" class="longDescription">
	Style&co. adds some sparkle to a colorblocked tunic dress with a detachable, coordinating sequined scarf! Pair with leggings and boots to complete the look.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>High neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Three quarter length sleeves with contrast trim at cuffs</li>
  
    <li>Comes with removable sequined colorblocked scarf</li>
  
    <li>A-line silhouette</li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 54.0000, 35.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (450, N'Style&co. Dress, Short Sleeve Cowl Neck Colorblock Sweater', N'<div id="longDescription" class="longDescription">
	Inset space dyed knit panels give this classic tunic from Style&Co. a fresh look! Try it with leggings and your favorite pair of knee-high boots.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Cowl neckline</li>
  
    <li>Pullover styling</li>
  
    <li>Short sleeves</li>
  
    <li>Colorblocked spacedyed and solid knits</li>
  
    <li>A-line silhouette</li>
  
    <li>Hits at thigh</li>
  
  
    
      <li><a class="bulletLinks" href="/campaign/social?campaign_id=45&channel_id=1&bundle_entryPath=bodytype/plussizes">Shop the Women&#039;s Dress Finder</a></li>
    
  
  

</ul>', 49.0000, 29.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (451, N'Style&co. Sweater, Three Quarter Sleeve Marled Knit Tunic', N'<div id="longDescription" class="longDescription">
	A chic envelope neckline and a cozy marled knit equal a cute and casual look from Style&co.! Perfect with jeans or leggings, too.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Envelope neckline with button closure</li>
  
    <li>Pullover styling</li>
  
    <li>Three quarter length sleeves</li>
  
    <li>Patch pockets at hips</li>
  
    <li>Allover marled knit</li>
  
    <li>A-line silhouette</li>
  
    <li>Hits below hip</li>
  
  
  

</ul>', 49.0000, 29.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (452, N'Style&co. Sweater, Short Sleeve Spacedyed Knit Scarf Tunic', N'<div id="longDescription" class="longDescription">
	Style&co.''s spacedyed tunic comes with an attached colorblocked scarf for a perfectly-accessorized look!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Scoop neckline with attached scarf</li>
  
    <li>Pullover styling</li>
  
    <li>Short sleeves</li>
  
    <li>Allover spacedyed knit</li>
  
    <li>Scarf has solid and spacedyed colorblocked knits</li>
  
    <li>A-line silhouette</li>
  
    <li>Hits at thigh</li>
  
  
  

</ul>', 49.0000, 24.5000, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (453, N'Charter Club Sweater, Short Sleeve Button Front Cardigan', N'<div id="longDescription" class="longDescription">
	This Charter Club sweater comes in a modern silhouette you''ll love. Ribbed trim and boucle knit stitching throughout create cozy texture.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic/polyester/wool</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Crew neckline</li>
  
    <li>Button-front closure</li>
  
    <li>Short sleeves</li>
  
    <li>Ribbed sleeves and chest</li>
  
    <li>Allover boucle knit</li>
  
    <li>Easy fit</li>
  
  
  

</ul>', 54.0000, 29.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (454, N'Charter Club Sweater, Long Sleeve Cable Knit Shawl Collar', N'<div id="longDescription" class="longDescription">
	An allover cable-knit pattern and shawl collar combine for the coziest look of the season from Charter Club. Pair this sweater with anything from soft corduroys to crisp khakis!
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Cotton/nylon</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Shawl collar</li>
  
    <li>Pullover style</li>
  
    <li>Long sleeves</li>
  
    <li>Allover cable-knit pattern</li>
  
    <li>Fitted silhouette</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 49.0000, 37.9900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (455, N'Karen Scott Sweater, Long Sleeve Cable Knit Cardigan', N'<div id="longDescription" class="longDescription">
	This swingy cardigan by Karen Scott offers an easy silhouette that goes with anything from khakis to jeans! Cable-knit stitches lend a chic handmade touch to this must-have.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Crew neckline</li>
  
    <li>Button-front closure</li>
  
    <li>Long bell sleeves</li>
  
    <li>Cable-knit stitches throughout</li>
  
    <li>Swing silhouette</li>
  
    <li>Hits at hip</li>
  
  
  

</ul>', 49.0000, 24.4900, 2, 6)
INSERT [dbo].[Items] ([Id], [Name], [Description], [Price], [Discount], [DepartmentId], [CategoryId]) VALUES (456, N'Karen Scott Sweater, Three Quarter Sleeve Boucle Knit Shawl Cardigan ', N'<div id="longDescription" class="longDescription">
	This Karen Scott cardigan is made from lush boucle knit. Oversized, three-quarter sleeves and a relaxed fit make for a cozy look when paired with jeans and a henley.
</div>
<ul id="bullets" class="bullets">
  
  
    <li>Acrylic/wool</li>
  
    <li>Machine washable</li>
  
    <li>Imported</li>
  
    <li>Shawl collar</li>
  
    <li>Open front; no closures</li>
  
    <li>Three-quarter sleeves </li>
  
    <li>Allover boucle knit</li>
  
    <li>Relaxed fit</li>
  
    <li>Hits at hips</li>
  
  
  

</ul>', 49.0000, 24.4900, 2, 6)
SET IDENTITY_INSERT [dbo].[Items] OFF
/****** Object:  Table [dbo].[StoreItems]    Script Date: 12/03/2011 12:54:17 ******/
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
/****** Object:  Table [dbo].[Ratings]    Script Date: 12/03/2011 12:54:17 ******/
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
/****** Object:  Table [dbo].[Pictures]    Script Date: 12/03/2011 12:54:17 ******/
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
SET IDENTITY_INSERT [dbo].[Pictures] ON
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (2, 2, N'd48d64fa-6d90-4cbe-9520-d6240d6e9dd6')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (3, 3, N'f0c114ab-11b8-432b-b31b-a2c3cd6237da')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (4, 4, N'1a44b2f7-1011-4244-89ec-9c3d4504212e')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (5, 5, N'fd94b38c-3e14-43cb-8068-6b7ae68bacc9')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (6, 6, N'a812ac7e-7217-4f8c-994d-ba831fe7d75e')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (7, 7, N'9cd3092a-b0b1-4fc6-81c0-6ba90ef3db32')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (8, 8, N'13d0ef03-c43d-421a-bf7c-4afcc8cc494b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (9, 9, N'a05d4599-aa88-4569-a4ab-75433d5ab4fe')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (10, 10, N'01bbc6ed-a36f-4202-ab21-67ccf88680a7')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (11, 11, N'b4add808-aebc-4bb9-a0e9-803692407e0d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (12, 12, N'f9a8404b-ed45-4c01-b26d-28c13ec51964')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (13, 13, N'60f108c9-916d-4fc5-8fc1-83cbb1f1b496')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (14, 14, N'e52d822e-1229-43e5-9f4c-3ac5fcf54e9a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (15, 15, N'85966cc0-c5fa-44d9-8fcb-96b1fe40465c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (16, 16, N'e596bd86-ef51-4978-b8f6-776060c4df8e')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (17, 17, N'34b75216-0a66-47bd-b28f-50f350167e13')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (18, 18, N'26aebabb-e903-4889-bfda-458683a377c0')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (19, 19, N'97400f16-05d5-499d-b00d-581f80c25b22')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (20, 20, N'60a5feb4-b70c-4ef0-a675-96ea87865077')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (21, 21, N'f4813204-6f14-425e-8fcd-1695cfeafced')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (22, 22, N'1d849fe9-9a7b-451e-b80f-630c70ab3d47')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (23, 23, N'3c973df3-235a-4473-a78a-e697b38a0c95')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (24, 24, N'580cab8b-b918-4b21-9de3-d397aadc177a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (25, 25, N'fef95ba7-f2e7-4c28-b364-127c9c2abf84')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (26, 26, N'b3d6d774-96d3-4298-91d8-089469a1df76')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (27, 27, N'b5312b98-b3bc-4743-841f-d9d130c7a987')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (28, 28, N'1c9777f1-8845-46d4-b241-16808136c950')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (29, 29, N'e89dca52-d741-46e3-b977-6fb9939a2f60')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (30, 30, N'4ec60b0f-9a75-424a-878c-7ffb260776a5')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (31, 31, N'06a7bb02-cf98-4b48-b104-1eac8d50821b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (32, 32, N'7d27402d-1524-49a1-840e-ee6ef8427483')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (33, 33, N'edd90988-8b9d-4af6-a734-f672f9d5a25d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (34, 34, N'81f1a238-b3b3-4bd5-942a-789ae9da871c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (35, 35, N'c779960b-e994-4ab4-9425-1fa2fce5db37')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (36, 36, N'407f8309-d20e-441b-b43e-e0eff0513010')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (37, 37, N'68a5a728-cf62-4749-b688-ce291ff64e3c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (38, 38, N'a74e20bf-639e-4815-99bb-0bcaaa3b8573')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (39, 39, N'fe0751c7-3225-434d-a92e-208f86e7d874')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (40, 40, N'52fc3182-426a-49ed-960c-000414d3075f')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (41, 41, N'abd364b2-5ee9-4fb3-aeba-8544740b581b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (42, 42, N'e99c8af8-a956-47b9-88e2-84b4a32063ac')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (43, 43, N'e6b5a391-8d3d-49e1-ac3a-b2b6e3553a91')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (44, 44, N'7cd92d8c-98c1-45a3-8472-582cd04ae074')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (45, 45, N'5acd57e6-4a0c-430c-a308-fc78eed94c62')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (46, 46, N'c43176b3-9d19-4627-b850-658d59767ad6')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (47, 47, N'df7bf3b6-70c3-46b2-9617-63170199ca26')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (48, 48, N'227670ab-378f-4729-a6fb-5a7c39eb9984')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (49, 49, N'f93d60d7-833e-4d40-b612-d136443200ed')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (50, 50, N'3136b643-9d84-4296-bae2-42780dd387dc')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (51, 51, N'dbbd4f52-4572-42ea-9937-5dab283332df')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (52, 52, N'5ebb6fd9-b808-4203-9e1b-4babec4a15f2')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (53, 53, N'23b0091c-ca2d-4aa1-99a7-334f0c9491ba')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (54, 54, N'38f0be8d-c3ce-4a11-a790-e136dfc8de8a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (55, 55, N'52905aba-9f7a-4be5-a46c-1afcf533295a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (56, 56, N'aa1a8b98-549e-48a9-a3b9-daf531fa2c12')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (57, 57, N'7d004495-c073-4be6-b0d7-ff21dfaa2fd7')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (58, 58, N'0ffa5829-383c-4800-ab6e-d6c564af31ea')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (59, 59, N'5f1de004-f97b-4a26-aac9-85ba19c60fb0')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (60, 60, N'586a5d0e-dd0e-4ba8-9426-40215d6ff978')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (61, 61, N'eb091fda-5721-429b-9bb3-b1239d167dde')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (62, 62, N'f41d4373-e2c2-46bf-8eda-bdd6fa8819f3')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (63, 63, N'a86356b3-3313-4f97-9510-a9ca731a1cd6')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (64, 64, N'98e7dcda-6cdf-44df-b7c9-7f8cb97384fe')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (65, 65, N'd65748e4-96c6-435d-a0e2-e09e68c72edf')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (66, 66, N'423ffce4-c175-4a41-9225-5214588fecc2')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (67, 67, N'e4c93528-e0c2-44e2-8361-816a78ac99ec')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (68, 68, N'15355b1d-ee2b-4afa-b152-a06f1fcafaf3')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (69, 69, N'2ea063d9-09cf-467f-b2a8-767521f08c12')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (70, 70, N'e573e665-1bf7-4f86-92c0-5a5c87436830')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (71, 71, N'c879eabb-78a8-4a2d-8792-8d8734013daa')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (72, 72, N'5e4e211c-5c95-4c75-9fdb-4620085bc9f1')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (73, 73, N'00cc7b04-bc8a-420e-9dd0-c54f12362983')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (74, 74, N'c38b77dd-2277-470d-818b-86b5372a911d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (75, 75, N'2115b564-6686-4130-b84a-280efad0489d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (76, 76, N'f439823b-6c36-4b0a-be14-560ac881b2d1')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (77, 77, N'590b8b15-8928-4c58-8812-18a3d80eb5b8')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (78, 78, N'f1a942c7-7368-470c-8bf0-95feb068cf3e')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (79, 79, N'289c66ab-77e3-42a9-98dc-1b0b4aa8141a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (80, 80, N'1367df02-ea75-4e20-a0ac-2eb4f4d38025')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (81, 81, N'3f04f3f6-4256-4e88-bc04-ce47f4f295b3')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (82, 82, N'7d6cd3a6-3737-43c7-8c08-4f02bb7f02b5')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (83, 83, N'449f571c-28b7-4146-9aef-a020985829bf')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (84, 84, N'c5adb100-1480-4116-9d4d-1d1edcaffd21')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (85, 85, N'9e3d2348-8127-4265-a1e7-41e0c5fe008a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (86, 86, N'5751a9b1-f951-4417-92d7-864b3420df5f')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (87, 87, N'e51946ef-f1fa-4d66-9609-f817a7d2e7ac')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (88, 88, N'a8b875a6-0c73-4ecd-8ca2-49fd1260897a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (89, 89, N'62e228cb-f8ca-4f8e-bce0-bb9d01072a9c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (90, 90, N'6593ccb2-5e7a-432e-9cdc-c6c52e2d7bd5')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (91, 91, N'79109cc1-82fb-4184-ad63-38a0b6dd5da2')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (92, 92, N'5b494aa5-44b6-45ac-a17a-b621a3809844')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (93, 93, N'e3f53a20-33e7-4603-93f6-8f5e1eab7124')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (94, 94, N'7bb35dd2-d9d0-464a-998a-705821fc0e5a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (95, 95, N'11eec7a2-0599-45bb-b5d1-b4ea0e5134dc')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (96, 96, N'5c894a14-1294-4b34-810c-3e3f318fca16')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (97, 97, N'9d055c8c-6b8c-44b7-8a21-2fe72f6b3e27')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (98, 98, N'6032b59d-e893-4435-bfcb-5f42d9535d24')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (99, 99, N'b1b3e5a3-2e92-4c6e-8154-28182aeef1b2')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (100, 100, N'4157836d-b90d-456f-a4d8-4bc73ee7443b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (101, 101, N'12a7069d-2c0f-4425-a3bf-63b6e86ec401')
GO
print 'Processed 100 total records'
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (102, 102, N'9523c93c-20c3-4634-98e5-4a5e5906f525')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (103, 103, N'9c94ff6c-9fe5-453e-acbf-f9f86d3c2eab')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (104, 104, N'37aa3cc0-d742-4513-bc89-0ef2d9090241')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (105, 105, N'8e397cdd-cd3e-44df-8f84-902304538b5d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (106, 106, N'75721cfa-4de2-4c7a-a716-45bf3d178e94')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (107, 107, N'7c3f525a-3fda-4c88-a726-ddd70534ecb9')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (108, 108, N'6ac5c2ce-faed-48d0-b7f0-167b57f490d7')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (109, 109, N'8f5f3eb1-80de-4fa2-9ec8-96e2f0f9f261')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (110, 110, N'f1aebdfa-4c1b-4bd3-8049-3f9c800e3cfb')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (111, 111, N'e9aaeda7-afcf-452b-92be-62a5f83d9e81')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (112, 112, N'ff899b7a-a1bd-423d-9754-c3fa8c4e6dde')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (113, 113, N'afc38dd1-81d7-48a5-a644-fce41e1761df')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (114, 114, N'eccee727-97ea-4244-a211-c7920d8711eb')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (115, 115, N'fc416009-f95a-46a4-b39d-997cf0d6714d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (116, 116, N'316910c3-2695-4c09-91ae-98b6919a1b38')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (117, 117, N'ff79a280-eda0-4589-97ac-a18216308be8')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (118, 118, N'4822e75b-1710-4f8d-b2f4-bf980675ad93')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (119, 119, N'a8a7bab7-39e7-40b6-a461-c7c9c06b675a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (120, 120, N'3afd4eeb-4eb8-428f-80ff-0c23304e8d06')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (121, 121, N'd58c74e8-8a87-4bd9-a6c8-fa45be239b9d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (122, 122, N'1beb4c35-717d-4d64-8cfe-1e9d3ec30879')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (123, 123, N'0c542614-df52-4688-9afc-affc8deda637')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (124, 124, N'a5175c97-2284-4192-9787-d70750d5f9c2')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (125, 125, N'70d3bddb-6299-493f-bd65-183975dd065d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (126, 126, N'5ae3f967-173d-438f-ac98-ee792a5fc3ed')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (127, 127, N'c7aae32c-89cb-47a8-9014-a697e050fa75')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (128, 128, N'cb4cbabd-7bf8-4fed-b9e2-28271e8e747d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (129, 129, N'ae32e5b9-d231-40db-be0b-1fd1111414a2')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (130, 130, N'092aa0b8-181d-4444-b669-7c68095c73ba')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (131, 131, N'26ed5d86-6871-4070-979b-6f499c229be2')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (132, 132, N'7329322a-de47-434c-ae94-a35b40e44533')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (133, 133, N'16c24124-f829-48db-aa67-95319a521e88')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (134, 134, N'37d0cc31-2be5-41fd-a3d8-ad0ee7834569')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (135, 135, N'447d2bf4-1eff-4c2d-a4a5-5c9806910811')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (136, 136, N'7caf4346-2410-41e2-bf87-a49bd16787ce')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (137, 137, N'8fbd2d0e-6b71-4268-b35c-1f868bab2374')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (138, 138, N'8a1b0d73-581a-4db7-b626-9d04d5bd99d3')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (139, 139, N'bc1d8533-9abf-40ea-8b4b-cca63dfd81aa')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (140, 140, N'700d14f0-fbb8-4d92-aff7-a04872f2246c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (141, 141, N'e570d65b-03e3-4c04-b144-4dde5b0048a0')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (142, 142, N'e6dbfa24-92d7-47e5-974b-3a9c6c549637')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (143, 143, N'34cbccf8-073d-4cde-9d37-833ba7725139')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (144, 144, N'e4bd2242-3b6c-4755-939f-437928260070')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (145, 145, N'd1ac676c-0a4c-44dd-94a4-9e3b3e9a8260')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (146, 146, N'e1eff28e-a4d7-451d-b53a-bb27b07f665c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (147, 147, N'349b8fee-a1f6-4437-b3d9-4bd27e7a350a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (148, 148, N'17fc27f3-8fcd-414a-9c38-02c7a9deb7bd')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (149, 149, N'8b68b30b-7f09-46de-ab0c-d9e82e6f3be8')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (150, 150, N'd4935c10-fbb6-4c4c-b7ff-50e9bd3c071f')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (151, 151, N'c2bd44c0-39a0-4ad4-a611-d8e89d56572e')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (152, 152, N'09b16b76-d1bd-43d6-9bba-e67f6ed34fd3')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (153, 153, N'a6b9bafb-4945-48e8-adf9-8c7a431300b4')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (154, 154, N'22f89afd-1ecf-488b-aa2e-f39458a44fff')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (155, 155, N'ed77fb71-6657-4f30-8c16-ff96509b374e')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (156, 156, N'2f5cbc4a-4a50-4fc9-af16-362f2ce07348')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (157, 157, N'ffddc9fc-0f4f-401c-9c6f-f0f774468912')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (158, 158, N'e8ccf509-10d1-4e0a-a6ec-29dac4f94135')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (159, 159, N'87d365d2-7893-420c-8f42-343dace7f75d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (160, 160, N'7a060650-edc9-4166-ab9c-a6cae940bbc8')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (161, 161, N'48e3b58d-b9c9-4361-91c6-6bce6ffa8a93')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (162, 162, N'92e27f1d-110c-465b-b4d7-0e7ec9016564')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (163, 163, N'd26e7a79-d4bb-4b5d-accb-b70ffab19b60')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (164, 164, N'5adc9c5f-32e5-48a5-8243-3cc4077fd7f6')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (165, 165, N'9dfa3d62-60b1-4aa5-a508-4a498ca11796')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (166, 166, N'9e5085e1-f881-4a82-a85a-f0b699d6c7ab')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (167, 167, N'168646f4-f4c0-46a9-822b-377fd3374355')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (168, 168, N'0c3dae4d-476c-4711-9cac-969ce1821999')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (169, 169, N'd0b13dc4-2451-4727-bcab-7d8b6a40d8e5')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (170, 170, N'21f82c85-7bc6-4ed7-a218-5fadabdcf3ec')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (171, 171, N'4a493ff0-346e-425f-9807-be8bf3875b58')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (172, 172, N'dd2a1fde-6609-4cf0-87ea-e251ac6a0690')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (173, 173, N'928225f4-73f6-4152-82bd-8121391cc99c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (174, 174, N'8b417c38-67d8-4f1f-9d15-67920ea3066b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (175, 175, N'499f5892-2fd3-4e40-9436-a14a74df8cc0')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (176, 176, N'a06640ca-7caa-4c35-86c3-0df5f6b9d02d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (177, 177, N'84c736aa-d276-4a1b-b89e-72e8d35369ba')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (178, 178, N'b49dc2dd-f19a-493b-ad4f-94132a6b51fc')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (179, 179, N'7baf389a-391b-4159-bcc2-4c3b4a28edb8')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (180, 180, N'b056a467-7922-4109-b3b4-ef814d28f593')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (181, 181, N'5a84b3ad-e28f-47a5-b2a0-4f511b7a8935')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (182, 182, N'3758d763-a125-4292-a4ee-aebe48987c5f')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (183, 183, N'7893a5d6-ced7-4379-8be5-fcec0a411ac2')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (184, 184, N'2101126a-82d6-4150-bb34-f6ac22ae979c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (185, 185, N'b2a8fe9f-e616-4f6c-9b06-b1392f21cda7')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (186, 186, N'2351f86e-09b9-4dea-ad00-f2e3632d2d2b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (187, 187, N'742d5687-2a26-4355-8aea-a488e4d9d19d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (188, 188, N'16c86120-d819-4ecf-b4f4-e0ea5a826587')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (189, 189, N'912d80b7-1e87-4e62-a970-3cfa56dec979')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (190, 190, N'4aea7b46-0344-4b8a-9e6f-ba5e461505f6')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (191, 191, N'07bd88c9-79c0-45cc-ad3e-f178fe11091a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (192, 192, N'991bcfe3-fa24-4d2f-bace-bb134f6aad0d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (193, 193, N'80d82096-4489-4965-93e5-e61ee6c52598')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (194, 194, N'3d647642-fdab-4de0-8dd5-f333c1aa1ac1')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (195, 195, N'73662dc9-b6d8-4b98-a1d2-2365d61c6d8a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (196, 196, N'4d5c6e34-7462-46fe-856a-1aeebb97bd76')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (197, 197, N'7f970e82-d174-4164-a968-ec197ef4742e')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (198, 198, N'c9e82406-5561-4aa2-98ff-7cdd1729acfe')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (199, 199, N'38dd6078-de5d-41e0-9d52-12c9f20dee1e')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (200, 200, N'c0b610aa-503e-4487-8e5e-419501f664a6')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (201, 201, N'0c79c998-a9f0-48c6-9df0-e34e924e940b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (202, 202, N'6b67fd49-2278-49ea-9608-0593c5782a8e')
GO
print 'Processed 200 total records'
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (203, 203, N'afe604c7-47c4-4101-ae7a-f6a387e1656c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (204, 204, N'0557471b-f039-4e88-82ce-89aac765df71')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (205, 205, N'fb54b5fc-0fcc-414c-97cd-184df09b75f8')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (206, 206, N'48d6f06e-b660-46b4-b1d2-0450abb6a997')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (207, 207, N'af323a59-0ed1-4953-b61d-5027ddd48759')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (208, 208, N'9c51f3dd-9da0-48ac-8a49-549504e2adf4')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (209, 209, N'9883908d-1295-4f8f-a514-66afb3b523b4')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (210, 210, N'22f5931d-65a2-438e-8233-127ed50d0a8a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (211, 211, N'ec915419-bb54-4b95-bd94-674ef1917a11')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (212, 212, N'e739a067-fb59-4724-9ffa-5f943dc73874')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (213, 213, N'd53dab9d-0079-492c-8caf-c58324eeb27b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (214, 214, N'35212449-3e2d-4451-978f-0a060f01c814')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (215, 215, N'51dc289b-19b8-4723-bf77-59f52752c746')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (216, 216, N'6dae8e9f-1e92-4aae-bcfe-e6bb646b6838')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (217, 217, N'2335ebd2-fff6-4ffd-9e83-c101e4e479f6')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (218, 218, N'9dcb5035-84bf-48bb-82b3-b1e11c5a9a52')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (219, 219, N'ad2429b2-dcf1-4ef0-9ef8-01f47519762f')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (220, 220, N'8b5cd5a8-61d7-457c-8fd5-021d380c1ea1')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (221, 221, N'b1ab1e24-3bd8-4b04-bd7e-0daa5713bff4')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (222, 222, N'2bd1b748-98e1-4eda-ab38-60cca4eb8925')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (223, 223, N'52e1dc19-b99d-49ef-bc69-2b91e4ad9d7b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (224, 224, N'ff39280f-646b-4cd9-8c73-b131759d4b77')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (225, 225, N'4e681bd6-2d43-42c6-8b10-f775731fcaad')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (226, 226, N'ccbe325c-6e08-4294-b991-354c96a761ee')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (227, 227, N'c2f9e978-f02c-4004-ac6e-49c2ed542d26')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (228, 228, N'3d63f7e4-b3e5-46d3-af32-3955e5c45460')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (229, 229, N'5d0034a9-99e3-4e59-b997-0bd88c290e1f')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (230, 230, N'3de5b11d-1e72-4726-991e-51c96191c321')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (231, 231, N'c3a41e56-aa13-4740-9c55-dd3dfb94ea94')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (232, 232, N'2423ae7b-8655-4f24-9b26-9ef5c5e79224')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (233, 233, N'7abaeff5-83ca-4596-9c9a-869a50690bfe')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (234, 234, N'd520d0f3-da17-43b5-83f2-435d66aef6fb')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (235, 235, N'621b1463-f202-4763-bb5c-88a18c7dfb38')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (236, 236, N'edd12e11-82cd-471c-b746-3eaec94ff422')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (237, 237, N'6c0e0a6f-73a5-4570-8ece-e3e9f36da460')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (238, 238, N'4a385b2f-6992-429b-9203-ae0b35fe476c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (239, 239, N'7f68e89c-a128-4019-b559-17b2bf9de38f')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (240, 240, N'51d69eb6-ce18-4eb7-8331-4dec492eb3f7')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (241, 241, N'4fe57bce-6593-4c04-96b4-d6ed56836e73')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (242, 242, N'66087f48-bc42-49b4-947b-2b1426026bb9')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (243, 243, N'f0de7b8c-80b8-4f01-bb1c-35b20fb362d8')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (244, 244, N'6d093c69-78e0-4a49-ac3e-0d4f43bfb641')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (245, 245, N'76daf3e9-1141-4476-912c-68d5f3d362c7')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (246, 246, N'227c0ca5-eee4-4d5a-a324-e96f75842760')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (247, 247, N'f059da0f-2601-4402-88cf-338dc8f570ee')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (248, 248, N'd24f53d9-da5e-4273-8bc9-21e2ff37a0e8')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (249, 249, N'9ea8aab2-72b9-4b79-946d-d2fd6721bc5f')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (250, 250, N'7eca97bf-11c2-49b4-be7f-5344ff5d4bb8')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (251, 251, N'91acc1a4-3ac9-447c-8668-7cd0d5573056')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (252, 252, N'a34e99c4-72d2-40b2-a20e-b66581fe890c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (253, 253, N'06b9ebce-b9d0-4967-a46c-0d9b96ad5585')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (254, 254, N'db3d5965-6ad6-445e-af72-8fe0a3354891')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (255, 255, N'adb94e44-4b24-405e-849e-233f542a272a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (256, 256, N'cfc2cf29-0b35-414f-9c0f-698dda7cab37')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (257, 257, N'f7de2188-91fe-4c1d-be0e-7f69f5bbef8a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (258, 258, N'ed648d02-55a7-47bb-8e85-7e3f1402b8ea')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (259, 259, N'2cf12459-a8cb-445f-9cf1-0df7aee1760b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (260, 260, N'324037dd-6718-477f-9300-20876352fc49')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (261, 261, N'de61319e-e13b-4748-b5f9-b4c0f3f409c2')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (262, 262, N'd917969d-ebca-47b5-9ff2-3cd101194f0f')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (263, 263, N'885041bf-b34d-4870-b0ac-4bc1af578426')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (264, 264, N'7c5708c2-31a6-4f4e-bcd2-bf9902e04366')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (265, 265, N'78e80f3b-af8c-4ca1-85b8-73b35235ffb4')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (266, 266, N'2bb37fb7-e090-4fda-b113-52213551b4d9')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (267, 267, N'2d32192a-4813-49aa-b121-615a1cf5a97f')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (268, 268, N'e064e63a-dcf5-406b-9450-ec9c2108df12')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (269, 269, N'83262b80-f5be-4aaf-b1e3-c29280065f8a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (270, 270, N'735c2816-f72e-46ed-8209-61c1b945a28d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (271, 271, N'cb3b879b-7465-4f46-802b-4c0c73b107c2')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (272, 272, N'2348569e-e943-4132-8373-9e1d9e43efe4')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (273, 273, N'650d6454-8a21-4e77-8057-a309a8e22709')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (274, 274, N'17f8b745-f58b-4091-a604-d42bb16d5577')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (275, 275, N'6085fbba-7765-4aa8-8c79-d4487c554c31')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (276, 276, N'529fb0d3-bf2c-457c-a5ee-60e23a507bff')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (277, 277, N'b7c3bf96-1027-43c0-a8cf-e68da9b3912a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (278, 278, N'739f70e2-6345-4bce-9be2-fea0aade3dff')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (279, 279, N'c77bed88-7995-420c-8750-7153d0ce05bc')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (280, 280, N'36c6aad2-c28d-4d86-a059-77fedca37ebb')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (281, 281, N'52caa674-ef9d-4cd4-bedf-10f706dd83ff')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (282, 282, N'26a99261-9640-49e1-9cd1-4832b1460c37')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (283, 283, N'db237cf3-9566-4f73-8a03-d6edaf897bfa')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (284, 284, N'e02da6fd-2fc4-417f-bff8-f675d8d573cf')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (285, 285, N'903532a0-31d6-4a1f-9bf5-435a86bbce10')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (286, 286, N'6bd4ec22-9c4a-4b0a-a800-0f233ab9e3bc')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (287, 287, N'c304f3d8-c40b-476d-82f8-daa7472f43bb')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (288, 288, N'fcdf0505-5519-4a1a-bc84-da02310db222')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (289, 289, N'f8b78b54-f580-47b0-a314-27b23f30459c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (290, 290, N'49d21478-6bf2-485f-806c-4c20f289e038')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (291, 291, N'857ebd64-e270-4604-9529-2a55ef73004e')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (292, 292, N'0bccd5b1-3ba7-4172-ab95-5a4c0f96d3af')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (293, 293, N'c7a165e6-3851-4d0c-b5b4-ed0962aaffc0')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (294, 294, N'569b1cd1-7c57-4878-b3a9-ca11dd528cea')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (295, 295, N'86e9bb9e-2309-4e6b-ac40-b6b5fb506b67')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (296, 296, N'7b8504a6-54d6-4370-b73d-dfaf69a284bb')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (297, 297, N'c1581481-9adb-4bc8-b03f-f5ec1c12bfce')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (298, 298, N'e118c9b4-2089-4ad4-9e26-b4f5e40574ea')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (299, 299, N'c57e14e0-c7dd-4f55-9d66-58ccebbcc729')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (300, 300, N'f421948b-7049-4cc6-86e3-45fc6775d873')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (301, 301, N'36b48416-df16-42f7-b0cf-17fa2c8de263')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (302, 302, N'54df9946-0344-4b1e-8844-7b1d15dc3552')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (303, 303, N'678d6a97-7779-48d9-918d-b249ba8247c9')
GO
print 'Processed 300 total records'
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (304, 304, N'43adbde6-d8dd-4b97-bed2-46d77c1c2e3c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (305, 305, N'565dbefb-08c6-4a7b-9c4f-8b4df8aec4a8')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (306, 306, N'e2d4b157-5e56-42ea-87e3-c21c2d579829')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (307, 307, N'39ac9c88-775b-434c-abfa-a1354350527f')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (308, 308, N'8e5decd3-df8a-4899-99fc-71b4ca55c560')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (309, 309, N'7873e124-93d1-4010-824f-2dafd6b47603')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (310, 310, N'eaff7a59-a398-4f5b-868f-443ba6edd61a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (311, 311, N'c499d50d-06a6-4283-90a8-08c572823339')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (312, 312, N'9c05631c-fe32-438c-915f-4ecb0907accf')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (313, 313, N'5c442cb1-5886-49a9-8fa6-9bf102d6d21d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (314, 314, N'0444aaa7-387a-4223-ac89-1acdc6e58cec')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (315, 315, N'8dce567f-0615-4797-898b-910ad9f66e65')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (316, 316, N'42fab25c-d4ca-4cda-8113-8a935915811d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (317, 317, N'96ec01f3-493f-4af5-8fc4-fc13ff7e8da9')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (318, 318, N'3b4c2bd7-ac54-4369-9021-da08ebc3ca03')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (319, 319, N'5c48ae0f-96d7-43f8-bdc0-607010584c12')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (320, 320, N'43b5e3ce-d073-4c4b-8e3c-6309d026f9f5')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (321, 321, N'63486c10-e7b6-4c40-a07c-631f80fd6121')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (322, 322, N'aae16c61-e8e3-4bba-abf0-aaeed386a74f')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (323, 323, N'b08997ef-dd38-454c-b52d-6ab119642aa6')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (324, 324, N'f68686a6-3176-4b2f-ab72-8b8748bce4d9')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (325, 325, N'00890af1-05ef-426e-96fc-ad3ddd6c5b33')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (326, 326, N'7a787154-0616-4b54-a49d-82c8121131f8')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (327, 327, N'cdcb3e5c-75d1-4c03-b97a-c2e52d94b0c3')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (328, 328, N'c5e71ef2-a1e5-4a00-9edc-3bd546e63c9c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (329, 329, N'97efd92e-7267-48e7-bc68-43465de640fa')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (330, 330, N'3400dda7-068f-4d12-9163-7eca1f75a9fa')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (331, 331, N'ca98a1b7-8dc9-44cd-a6bb-663646142f36')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (332, 332, N'09ba5b34-c13f-4074-a06f-541b5495970b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (333, 333, N'8e05b638-cf9c-4245-a93b-64108475422b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (334, 334, N'12df2d4d-a199-4a1a-ba0a-656c1b31711c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (335, 335, N'519dd78e-7a34-4a6c-9308-412a44242388')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (336, 336, N'88982992-040c-45c2-bd13-6e173469a533')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (337, 337, N'38ea1d19-35ab-493c-9de5-36cc57c8b7a2')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (338, 338, N'764e4d81-442f-46a6-9ed0-12016177ebdf')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (339, 339, N'9f12f11c-1fee-4a8d-b895-df4250ec9bf5')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (340, 340, N'fb0fb383-953b-43fc-9ef4-2e5e8dc896c8')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (341, 341, N'7450f4fb-9b29-496f-92ee-052b4913a497')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (342, 342, N'30736352-9834-4dbd-a2e6-10305ede43f7')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (343, 343, N'f42639a2-1ee7-4b86-9b09-386b33baaaeb')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (344, 344, N'b1316203-76f1-44e8-b906-fd5da3801f4a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (345, 345, N'c6a43a2a-10eb-4d86-bb9d-b60c556165bd')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (346, 346, N'04344b25-ddb2-442c-b1a0-e1251023df23')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (347, 347, N'de433e52-04f3-4a07-89d6-c6e19c5145ca')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (348, 348, N'4f94efc2-0320-44ec-b17f-51ce9e527e40')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (349, 349, N'70b8d13b-cd10-4f16-ae05-288e8a57b4bc')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (350, 350, N'21ff7d65-90cf-477c-a6b8-e39d3aced836')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (351, 351, N'e52984e1-5661-455c-b7a4-8007fcf9f209')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (352, 352, N'4e2f8fce-c65a-432e-99c0-b23357e9cc1f')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (353, 353, N'6dab269e-df31-4cbf-bf55-345726f5c6d1')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (354, 354, N'294bc75e-378f-45e8-9cce-5f0a54e5f12b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (355, 355, N'eb44744c-8fcf-4319-b65d-5fe5efdc0eff')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (356, 356, N'8d9e5f70-424e-4ec2-ad53-02eaeec6d885')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (357, 357, N'35e0567d-554e-4866-a198-642e343fa197')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (358, 358, N'be8888cb-5af4-4086-bb7b-d5e3a2d78743')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (359, 359, N'41418802-38c1-4ca4-aacf-62b230ab5b1e')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (360, 360, N'7b9cd69c-160d-4380-9dea-9c625cc48746')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (361, 361, N'9a64bc8c-5f04-4f88-af65-68eaa0c0d46c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (362, 362, N'b6a58a2e-6695-42cb-87ab-6f76193c7c02')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (363, 363, N'234021fb-f8e1-4e29-b273-550a3ecb4b11')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (364, 364, N'48042bca-e485-470e-9209-563300d1a447')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (365, 365, N'629e2618-c200-4c89-8b5e-8d36255d5a62')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (366, 366, N'810c5563-01a3-4766-b173-296fd2c81c7a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (367, 367, N'2442071f-0777-4ffa-b362-028d559377d4')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (368, 368, N'104bc411-b939-4fff-b7c9-b7b395636d91')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (369, 369, N'2cb6928d-2ec1-4580-afba-f3cb47f138b4')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (370, 370, N'b3286ec3-1930-4a95-96a7-09532e9685bc')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (371, 371, N'2edad03f-6658-40a7-9441-046c43d9505b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (372, 372, N'24d047d9-235a-4fa8-b8bc-d54e166b18ca')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (373, 373, N'bea9a618-78bb-4651-9e35-9ffac61c7ea3')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (374, 374, N'db7a2b50-728e-487a-950a-1d4ae6f865a9')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (375, 375, N'bc4f4c38-fb69-45cf-b1b7-fbbd370d7cba')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (376, 376, N'6bb2a8f9-f7fb-4364-b0e7-5a678bbc4a46')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (377, 377, N'06b437ac-0859-41ab-98d6-a993c206e664')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (378, 378, N'c2e4bd9c-4e12-492c-8fa3-a4f5ee6657d1')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (379, 379, N'2efaf7fc-3e22-45d4-9936-0bf3fde5dc15')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (380, 380, N'f14e126c-abab-47e6-824b-e744eccc549d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (381, 381, N'b74887a2-9de4-4897-91d1-b77d328b4d1e')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (382, 382, N'703ddbdc-3f17-47a7-bc63-66871bf5d14f')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (383, 383, N'3ab7fc07-c506-4ce5-bd2a-d3fc121e3e0c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (384, 384, N'132d6be7-78eb-481f-bb51-5e5fbdf09947')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (385, 385, N'6b0f4555-395c-4932-ab59-8585e3071227')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (386, 386, N'6981979f-4969-409a-9fc9-546f683790fa')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (387, 387, N'094624b1-96b2-4646-b484-6119ea546ff4')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (388, 388, N'41f9559a-015d-4f1f-a299-66246ff90189')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (389, 389, N'fd577320-b5fb-45c8-84dd-7f92eb784728')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (390, 390, N'084a0a53-243d-4857-9821-123f97f9f901')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (391, 391, N'0b825f82-954f-477a-81c5-7f023c9f0a24')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (392, 392, N'7705a3b0-a719-4f3f-b0b8-e39cecb20c09')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (393, 393, N'652e1d6b-371d-4898-9e16-414f155943bf')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (394, 394, N'bab2964e-af80-4587-87ea-c6fb1570212e')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (395, 395, N'e6144f34-4de6-4de9-b57e-829c07efea88')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (396, 396, N'96a03b57-9dcd-4c62-9dd3-b733f55f5ad4')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (397, 397, N'522c5c09-96e2-47c9-a0ba-c1f121e0c5c3')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (398, 398, N'5532ce76-27a8-4a49-8457-09b551626c47')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (399, 399, N'58f08066-eca2-4d8f-b02e-f260c4629dd0')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (400, 400, N'76d0c010-f286-4ca5-a9b2-3d0edba1c748')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (401, 401, N'b6318b25-c220-4683-b0f8-d9d576bcd009')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (402, 402, N'da40f0ee-6571-45d4-831b-d3e2b3f7f13f')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (403, 403, N'ff90dc22-69a5-4484-bdf3-15b18ea56f5e')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (404, 404, N'cc4bd45a-296e-4d71-af50-3e1a8b7d52e9')
GO
print 'Processed 400 total records'
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (405, 405, N'1700b3ff-5e77-4741-aaaf-d82426e30002')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (406, 406, N'c51d8bb2-9d80-4555-aa5e-5c94a6efa53b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (407, 407, N'8b4df04e-bfc9-42b3-a3b9-e3eefd974082')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (408, 408, N'17ed14ee-5f95-48b1-bac3-b6bd5a821e74')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (409, 409, N'99b96c4b-4765-43fb-86c3-c0996d1189c6')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (410, 410, N'a640e51a-f5e2-49df-915d-000355077000')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (411, 411, N'd22141b2-5148-4fb6-82f3-f34900be26cd')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (412, 412, N'8ac85585-5062-4562-9a31-5889c6c6d53a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (413, 413, N'3829cb1f-40d7-4876-9715-1a1efc30eccf')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (414, 414, N'4baeb3d5-0d27-43d4-86d9-b1b01359d10d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (415, 415, N'f4278d45-a867-478b-bdbe-a48accdae556')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (416, 416, N'c50125e6-8a8c-45d7-9ceb-0064d3408f5e')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (417, 417, N'9413ccf2-b910-41aa-a0c3-0697e84e423a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (418, 418, N'0566f4f9-46eb-45d6-a1c6-f832df7ed16b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (419, 419, N'09b3e9d7-a00e-4221-8633-af9079d28cad')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (420, 420, N'1fd54896-9d0c-4c25-b796-0fdc10ffbb77')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (421, 421, N'b2d7869c-5aed-4f33-bbaa-ba7c6b1d8033')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (422, 422, N'e1da10a6-9f3c-4052-a699-d14b4502f3be')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (423, 423, N'e258ba4f-21a0-4600-98e7-ebd3538475ed')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (424, 424, N'f37ff80f-782a-406a-b8a5-0e3e058948b3')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (425, 425, N'e90c2329-d9c0-45e8-bbe2-f18ead92a2ef')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (426, 426, N'fdfe2907-0515-48e9-8772-6392cac955a7')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (427, 427, N'54610980-9d14-423e-8557-300a5cfcb19a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (428, 428, N'7e78b866-4176-42af-8834-cc2d51bd392c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (429, 429, N'a1ff4bd0-323f-4f68-9762-0a57e45ad542')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (430, 430, N'fc4f63cc-1102-4a79-afbc-cb1cf102271e')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (431, 431, N'72715933-35e6-4aeb-a175-016aec5cb059')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (432, 432, N'd3093066-fc36-4e1d-8445-f47bd68f4e98')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (433, 433, N'ff12208d-e8fb-4d9a-8117-cd0d6a9271b8')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (434, 434, N'a23abef1-4483-40f8-9c09-3ead30e7a188')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (435, 435, N'bd2c7526-5872-43ba-96fd-523f57e0e967')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (436, 436, N'c5c01bd2-8355-4c31-8480-e19b3c500386')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (437, 437, N'c90a161b-d736-4cba-9cce-bb66f5381052')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (438, 438, N'ceb87860-3a8d-4ec2-974b-3f5f2a30e524')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (439, 439, N'075a044a-8102-4a1c-b6b2-8cf97f4836e7')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (440, 440, N'8efdcf10-9f41-4839-a21a-5250f859a46c')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (441, 441, N'11306b17-8853-46b3-9db6-6ea421b19deb')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (442, 442, N'b5d6120f-53d8-4ea2-a363-e7f749e902bf')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (443, 443, N'b2ca13d0-3f67-4ce3-9062-39df731717df')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (444, 444, N'117c3cd7-46a3-4848-8ba9-de33a627eefd')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (445, 445, N'459b03dc-c03a-4568-bee4-21ce02de10d3')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (446, 446, N'f86acdaf-5867-420b-906a-5cc0ecf4d29b')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (447, 447, N'd59e8a62-1460-4928-b054-197b9cca9125')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (448, 448, N'5b03f8be-fbf7-4795-b229-e2e2c5fa1e5d')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (449, 449, N'2b7590da-fb38-4e2d-995c-81fd76a48a2f')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (450, 450, N'f727c2b8-578e-461c-9b98-3af74c291fde')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (451, 451, N'5572b136-84dd-4417-929f-e3b7019e1d61')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (452, 452, N'4e388cb5-7457-4402-8840-f2358373f1ba')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (453, 453, N'b5bc0603-ba13-4233-9bcd-f74c34462e75')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (454, 454, N'57abe8dd-9c26-488c-9d94-fae1939efedd')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (455, 455, N'f80250e9-062c-4441-8764-5dfc765af03a')
INSERT [dbo].[Pictures] ([Id], [ItemId], [Path]) VALUES (456, 456, N'c97824d2-70ff-4123-bad2-ecac44461125')
SET IDENTITY_INSERT [dbo].[Pictures] OFF
/****** Object:  Table [dbo].[Comments]    Script Date: 12/03/2011 12:54:17 ******/
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
/****** Object:  Table [dbo].[OrderItems]    Script Date: 12/03/2011 12:54:17 ******/
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
/****** Object:  View [dbo].[ItemView]    Script Date: 12/03/2011 12:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ItemView]
AS
SELECT dbo.Items.Id, dbo.Items.Name, dbo.Departments.Name AS Department, 
      dbo.Categories.Name AS Category, dbo.Pictures.Path
FROM dbo.Categories INNER JOIN
      dbo.Departments ON dbo.Categories.Id = dbo.Departments.Id INNER JOIN
      dbo.Items ON dbo.Categories.Id = dbo.Items.CategoryId AND 
      dbo.Departments.Id = dbo.Items.DepartmentId INNER JOIN
      dbo.Pictures ON dbo.Items.Id = dbo.Pictures.ItemId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Categories"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 217
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Departments"
            Begin Extent = 
               Top = 6
               Left = 255
               Bottom = 95
               Right = 434
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Items"
            Begin Extent = 
               Top = 6
               Left = 472
               Bottom = 125
               Right = 651
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Pictures"
            Begin Extent = 
               Top = 6
               Left = 689
               Bottom = 110
               Right = 868
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ItemView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ItemView'
GO
/****** Object:  Default [DF_Users_Name]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Users_Street]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Street]  DEFAULT ('') FOR [Street]
GO
/****** Object:  Default [DF_Users_City]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_City]  DEFAULT ('') FOR [City]
GO
/****** Object:  Default [DF_Users_State]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_State]  DEFAULT ('') FOR [State]
GO
/****** Object:  Default [DF_Users_ZipCode]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_ZipCode]  DEFAULT ('') FOR [ZipCode]
GO
/****** Object:  Default [DF_Users_Country]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Country]  DEFAULT ('') FOR [Country]
GO
/****** Object:  Default [DF_Stores_Name]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Stores_Address]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_Address]  DEFAULT ('') FOR [Address]
GO
/****** Object:  Default [DF_Stores_HasIndoor]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_HasIndoor]  DEFAULT ((0)) FOR [HasIndoor]
GO
/****** Object:  Default [DF_Stores_HasOutdoor]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_HasOutdoor]  DEFAULT ((0)) FOR [HasOutdoor]
GO
/****** Object:  Default [DF_Stores_HasStreet]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_HasStreet]  DEFAULT ((0)) FOR [HasStreet]
GO
/****** Object:  Default [DF_Stores_TaxRate]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF_Stores_TaxRate]  DEFAULT ((0)) FOR [TaxRate]
GO
/****** Object:  Default [DF_Departments_Name]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Categories_Name]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Orders_Time]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Time]  DEFAULT (getdate()) FOR [Time]
GO
/****** Object:  Default [DF_Orders_Price]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Price]  DEFAULT ((-1)) FOR [Price]
GO
/****** Object:  Default [DF_Items_Name]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Items_Description]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_Description]  DEFAULT ('') FOR [Description]
GO
/****** Object:  Default [DF_Ratings_Rate]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Ratings] ADD  CONSTRAINT [DF_Ratings_Rate]  DEFAULT ((0)) FOR [Rate]
GO
/****** Object:  Default [DF_Comments_Title]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF_Comments_Title]  DEFAULT ('') FOR [Title]
GO
/****** Object:  Default [DF_Comments_Text]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF_Comments_Text]  DEFAULT ('') FOR [Text]
GO
/****** Object:  Default [DF_OrderItems_Quantity]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF_OrderItems_Quantity]  DEFAULT ((-1)) FOR [Quantity]
GO
/****** Object:  Default [DF_OrderItems_Price]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF_OrderItems_Price]  DEFAULT ((-1)) FOR [Price]
GO
/****** Object:  ForeignKey [FK_Orders_Users]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
/****** Object:  ForeignKey [FK_Items_Categories]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Categories]
GO
/****** Object:  ForeignKey [FK_Items_Departments]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Departments]
GO
/****** Object:  ForeignKey [FK_StoreItems_Items]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[StoreItems]  WITH CHECK ADD  CONSTRAINT [FK_StoreItems_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[StoreItems] CHECK CONSTRAINT [FK_StoreItems_Items]
GO
/****** Object:  ForeignKey [FK_StoreItems_Stores]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[StoreItems]  WITH CHECK ADD  CONSTRAINT [FK_StoreItems_Stores] FOREIGN KEY([StoreId])
REFERENCES [dbo].[Stores] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StoreItems] CHECK CONSTRAINT [FK_StoreItems_Stores]
GO
/****** Object:  ForeignKey [FK_Ratings_Items]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Items]
GO
/****** Object:  ForeignKey [FK_Ratings_Users]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Users]
GO
/****** Object:  ForeignKey [FK_Pictures_Items]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Pictures]  WITH CHECK ADD  CONSTRAINT [FK_Pictures_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Pictures] CHECK CONSTRAINT [FK_Pictures_Items]
GO
/****** Object:  ForeignKey [FK_Comments_Items]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Items]
GO
/****** Object:  ForeignKey [FK_Comments_Users]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users]
GO
/****** Object:  ForeignKey [FK_OrderItems_Items]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Items]
GO
/****** Object:  ForeignKey [FK_OrderItems_Orders]    Script Date: 12/03/2011 12:54:17 ******/
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders]
GO
