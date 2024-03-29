USE [master]
GO
/****** Object:  Database [J3.L.P0013]    Script Date: 10/1/2019 7:29:09 PM ******/
CREATE DATABASE [J3.L.P0013]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'J3.L.P0013', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\J3.L.P0013.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'J3.L.P0013_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\J3.L.P0013_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [J3.L.P0013] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [J3.L.P0013].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [J3.L.P0013] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [J3.L.P0013] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [J3.L.P0013] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [J3.L.P0013] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [J3.L.P0013] SET ARITHABORT OFF 
GO
ALTER DATABASE [J3.L.P0013] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [J3.L.P0013] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [J3.L.P0013] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [J3.L.P0013] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [J3.L.P0013] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [J3.L.P0013] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [J3.L.P0013] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [J3.L.P0013] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [J3.L.P0013] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [J3.L.P0013] SET  DISABLE_BROKER 
GO
ALTER DATABASE [J3.L.P0013] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [J3.L.P0013] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [J3.L.P0013] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [J3.L.P0013] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [J3.L.P0013] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [J3.L.P0013] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [J3.L.P0013] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [J3.L.P0013] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [J3.L.P0013] SET  MULTI_USER 
GO
ALTER DATABASE [J3.L.P0013] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [J3.L.P0013] SET DB_CHAINING OFF 
GO
ALTER DATABASE [J3.L.P0013] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [J3.L.P0013] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [J3.L.P0013] SET DELAYED_DURABILITY = DISABLED 
GO
USE [J3.L.P0013]
GO
/****** Object:  Table [dbo].[AddressAndContact]    Script Date: 10/1/2019 7:29:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressAndContact](
	[AddressID] [int] NOT NULL,
	[Address] [text] NULL,
	[Telephone] [nvarchar](50) NULL,
	[Email] [text] NULL,
	[imagePath] [nvarchar](50) NULL,
	[openingHours] [text] NULL,
 CONSTRAINT [PK_Find Us] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Introduction]    Script Date: 10/1/2019 7:29:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Introduction](
	[ID] [int] NOT NULL,
	[imagePath] [nvarchar](50) NULL,
 CONSTRAINT [PK_Introduction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuAndprice]    Script Date: 10/1/2019 7:29:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuAndprice](
	[MenuID] [int] NOT NULL,
	[Menu Name] [nvarchar](50) NULL,
	[Information Food] [text] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/1/2019 7:29:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Noidung] [text] NULL,
	[imagePath] [nvarchar](50) NULL,
	[MenuID] [int] NULL,
 CONSTRAINT [PK_Home] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[AddressAndContact] ([AddressID], [Address], [Telephone], [Email], [imagePath], [openingHours]) VALUES (1, N'<p>The Sushi Restaurant</p>
<p>New York, NY, USA</p>', N'12345', N'your-email@your-email.com', N'3.png', N'<p>Monday Closed</p>
<p>Tuesday 12 - 22</p>
<p>Wednesday 12 - 22</p>
<p>Thursday 12 - 22</p>
<p>Friday 11 - 23</p>
<p>Saturday 11 - 23</p>
<p>Sunday 11 - 22</p>')
INSERT [dbo].[Introduction] ([ID], [imagePath]) VALUES (1, N'1.jpg')
INSERT [dbo].[MenuAndprice] ([MenuID], [Menu Name], [Information Food], [Price]) VALUES (1, N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', 15)
INSERT [dbo].[MenuAndprice] ([MenuID], [Menu Name], [Information Food], [Price]) VALUES (2, N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', 20)
INSERT [dbo].[MenuAndprice] ([MenuID], [Menu Name], [Information Food], [Price]) VALUES (3, N'Eodem modo typi, qui nunc nobis videntur.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', 25)
INSERT [dbo].[Product] ([productID], [Title], [Noidung], [imagePath], [MenuID]) VALUES (1, N'24 types of sushi rolls', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'2.jpg', 1)
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_MenuAndprice] FOREIGN KEY([MenuID])
REFERENCES [dbo].[MenuAndprice] ([MenuID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_MenuAndprice]
GO
USE [master]
GO
ALTER DATABASE [J3.L.P0013] SET  READ_WRITE 
GO
