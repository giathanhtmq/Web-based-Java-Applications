USE [master]
GO
/****** Object:  Database [JavaWebDB]    Script Date: 12/19/2019 10:57:44 PM ******/
CREATE DATABASE [JavaWebDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JavaWebDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\JavaWebDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'JavaWebDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\JavaWebDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [JavaWebDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JavaWebDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JavaWebDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JavaWebDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JavaWebDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JavaWebDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JavaWebDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [JavaWebDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [JavaWebDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JavaWebDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JavaWebDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JavaWebDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JavaWebDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JavaWebDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JavaWebDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JavaWebDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JavaWebDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JavaWebDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JavaWebDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JavaWebDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JavaWebDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JavaWebDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JavaWebDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JavaWebDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JavaWebDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JavaWebDB] SET  MULTI_USER 
GO
ALTER DATABASE [JavaWebDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JavaWebDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JavaWebDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JavaWebDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [JavaWebDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [JavaWebDB]
GO
/****** Object:  Table [dbo].[ChitietDDH1]    Script Date: 12/19/2019 10:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietDDH1](
	[maDDH] [int] NOT NULL,
	[ProID] [nvarchar](50) NOT NULL,
	[soluongDDH] [int] NULL,
 CONSTRAINT [PK_ChitietDDH1] PRIMARY KEY CLUSTERED 
(
	[maDDH] ASC,
	[ProID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 12/19/2019 10:57:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[maDDH] [int] NOT NULL,
	[maKH] [nvarchar](50) NULL,
	[totalPrice] [int] NULL,
	[dateSale] [date] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[maDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/19/2019 10:57:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [nvarchar](50) NOT NULL,
	[tenKH] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/19/2019 10:57:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProID] [nvarchar](50) NOT NULL,
	[ProName] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[Path] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 12/19/2019 10:57:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[fullname] [nvarchar](50) NULL
) ON [PRIMARY]

GO
INSERT [dbo].[ChitietDDH1] ([maDDH], [ProID], [soluongDDH]) VALUES (1, N'1', 1)
INSERT [dbo].[ChitietDDH1] ([maDDH], [ProID], [soluongDDH]) VALUES (1, N'2', 1)
INSERT [dbo].[ChitietDDH1] ([maDDH], [ProID], [soluongDDH]) VALUES (2, N'1', 1)
INSERT [dbo].[DonDatHang] ([maDDH], [maKH], [totalPrice], [dateSale]) VALUES (1, N'1', 2100, CAST(N'2019-07-22' AS Date))
INSERT [dbo].[DonDatHang] ([maDDH], [maKH], [totalPrice], [dateSale]) VALUES (2, N'2', 100, CAST(N'2019-07-22' AS Date))
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [diachi], [email]) VALUES (N'1', N'abc', N'sadasda', N'giathanhtmq@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [diachi], [email]) VALUES (N'2', N'thanh', N'thanh', N'giathanhtmq@gmail.com')
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Path], [Status]) VALUES (N'1', N'Tinh yeu', 100, N'1.jpg', 1)
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Path], [Status]) VALUES (N'2', N'Thoi gian', 2000, N'2.jpg', 1)
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Path], [Status]) VALUES (N'3', N'Suc khoe', 3000, N'3.jpg', 1)
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Path], [Status]) VALUES (N'4', N'Ban be', 1, N'4.jpg', 1)
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Path], [Status]) VALUES (N'5', N'testws1', 1000, N'5.jpg', 1)
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Path], [Status]) VALUES (N'6', N'testws2', 1000, N'6.jpg', 1)
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Path], [Status]) VALUES (N'7', N'testws3', 1234, N'5.jpg', 1)
INSERT [dbo].[User] ([username], [password], [fullname]) VALUES (N'a', N'b', N'dd')
ALTER TABLE [dbo].[ChitietDDH1]  WITH CHECK ADD  CONSTRAINT [FK_ChitietDDH1_DonDatHang] FOREIGN KEY([maDDH])
REFERENCES [dbo].[DonDatHang] ([maDDH])
GO
ALTER TABLE [dbo].[ChitietDDH1] CHECK CONSTRAINT [FK_ChitietDDH1_DonDatHang]
GO
ALTER TABLE [dbo].[ChitietDDH1]  WITH CHECK ADD  CONSTRAINT [FK_ChitietDDH1_Product] FOREIGN KEY([ProID])
REFERENCES [dbo].[Product] ([ProID])
GO
ALTER TABLE [dbo].[ChitietDDH1] CHECK CONSTRAINT [FK_ChitietDDH1_Product]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
USE [master]
GO
ALTER DATABASE [JavaWebDB] SET  READ_WRITE 
GO
