USE [master]
GO
/****** Object:  Database [dbUIGrid]    Script Date: 5/4/2016 8:42:51 AM ******/
CREATE DATABASE [dbUIGrid] ON  PRIMARY 
( NAME = N'dbUIGrid', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\dbUIGrid.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbUIGrid_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\dbUIGrid_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbUIGrid].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbUIGrid] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbUIGrid] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbUIGrid] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbUIGrid] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbUIGrid] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbUIGrid] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbUIGrid] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbUIGrid] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbUIGrid] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbUIGrid] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbUIGrid] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbUIGrid] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbUIGrid] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbUIGrid] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbUIGrid] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbUIGrid] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbUIGrid] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbUIGrid] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbUIGrid] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbUIGrid] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbUIGrid] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbUIGrid] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbUIGrid] SET RECOVERY FULL 
GO
ALTER DATABASE [dbUIGrid] SET  MULTI_USER 
GO
ALTER DATABASE [dbUIGrid] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbUIGrid] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbUIGrid', N'ON'
GO
USE [dbUIGrid]
GO
/****** Object:  Table [dbo].[tblProducts]    Script Date: 5/4/2016 8:42:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProducts](
	[ProductID] [int] NOT NULL,
	[ProductTitle] [nvarchar](256) NULL,
	[Type] [nvarchar](50) NULL,
	[Price] [numeric](18, 2) NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblProducts] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (1, N'Ape Lifestyle Cotton Casual T-Shirt - Gray', N'Clothing', CAST(270.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (2, N'Cotton Casual Short Sleeve Polo - White', N'Clothing', CAST(790.50 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (3, N'Cotton Casual Shirt - Sky Blue and White Stripe', N'Clothing', CAST(1555.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (4, N'Cotton Mix Casual Panjabi - Thistle and Gray Stripe', N'Clothing', CAST(2458.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (5, N'Cotton Mix Casual Panjabi - Black and Purple Stripe', N'Clothing', CAST(2458.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (6, N'Cotton Casual Shirt - Red and White Check', N'Clothing', CAST(1735.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (7, N'Kingstar TITANS 1 i19 Smartphone 8GB - White', N'Smartphone', CAST(6300.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (8, N'MyCell Spider A4 Smartphone 8GB – White', N'Smartphone', CAST(7770.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (9, N'HTC One M9S Nano-SIM Smartphone 16GB - Silver', N'Smartphone', CAST(26900.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (10, N'WE X1 Smartphone 16GB – Silver', N'Smartphone', CAST(18600.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (11, N'Microsoft Lumia 540 Smartphone 8GB – Cyan', N'Smartphone', CAST(13999.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (12, N'BlackBerry Z10 Smartphone 16GB - White', N'Smartphone', CAST(18000.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (13, N'Ape Lifestyle Cotton Casual T-Shirt - Gray', N'Clothing', CAST(270.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (14, N'Cotton Casual Short Sleeve Polo - White', N'Clothing', CAST(790.50 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (15, N'Cotton Casual Shirt - Sky Blue and White Stripe', N'Clothing', CAST(1555.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (16, N'Cotton Mix Casual Panjabi - Thistle and Gray Stripe', N'Clothing', CAST(2458.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (17, N'Cotton Mix Casual Panjabi - Black and Purple Stripe', N'Clothing', CAST(2458.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (18, N'Cotton Casual Shirt - Red and White Check', N'Clothing', CAST(1735.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (19, N'Kingstar TITANS 1 i19 Smartphone 8GB - White', N'Smartphone', CAST(6300.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (20, N'MyCell Spider A4 Smartphone 8GB – White', N'Smartphone', CAST(7770.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (21, N'HTC One M9S Nano-SIM Smartphone 16GB - Silver', N'Smartphone', CAST(26900.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (22, N'WE X1 Smartphone 16GB – Silver', N'Smartphone', CAST(18600.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (23, N'Microsoft Lumia 540 Smartphone 8GB – Cyan', N'Smartphone', CAST(13999.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
INSERT [dbo].[tblProducts] ([ProductID], [ProductTitle], [Type], [Price], [CreatedOn]) VALUES (24, N'BlackBerry Z10 Smartphone 16GB - White', N'Smartphone', CAST(18000.00 AS Numeric(18, 2)), CAST(N'2016-05-03 23:35:08.483' AS DateTime))
USE [master]
GO
ALTER DATABASE [dbUIGrid] SET  READ_WRITE 
GO
