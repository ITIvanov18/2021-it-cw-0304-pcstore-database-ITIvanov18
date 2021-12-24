USE [master]
GO
/****** Object:  Database [pc_store_itivanov18]    Script Date: 24.12.2021 г. 18:23:34 ******/
CREATE DATABASE [pc_store_itivanov18]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pc_store_itivanov18', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\pc_store_itivanov18.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pc_store_itivanov18_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\pc_store_itivanov18_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pc_store_itivanov18].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pc_store_itivanov18] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET ARITHABORT OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pc_store_itivanov18] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pc_store_itivanov18] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pc_store_itivanov18] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pc_store_itivanov18] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [pc_store_itivanov18] SET  MULTI_USER 
GO
ALTER DATABASE [pc_store_itivanov18] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pc_store_itivanov18] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pc_store_itivanov18] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pc_store_itivanov18] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pc_store_itivanov18] SET DELAYED_DURABILITY = DISABLED 
GO
USE [pc_store_itivanov18]
GO
/****** Object:  Table [dbo].[products_itivanov18]    Script Date: 24.12.2021 г. 18:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_itivanov18](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[YearOfManufacture] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[AvailableUnits] [int] NOT NULL,
	[Discount] [decimal](18, 0) NOT NULL,
	[PriceWithDiscount] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_products_itivanov18] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[products_itivanov18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount], [PriceWithDiscount]) VALUES (1, N'Pavel', N'HesBurger', N' BBQ Burger', 2021, CAST(10 AS Decimal(18, 0)), 1000, CAST(30 AS Decimal(18, 0)), CAST(24 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_itivanov18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount], [PriceWithDiscount]) VALUES (2, N'Zyzz', N'Rogue', N'FRACTIONAL PLATES', 1969, CAST(200 AS Decimal(18, 0)), 914628, CAST(0 AS Decimal(18, 0)), CAST(11 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_itivanov18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount], [PriceWithDiscount]) VALUES (3, N'Stracimir', N'Whirlpool', N'IntelliFresh 360 L', 2021, CAST(3000 AS Decimal(18, 0)), 500000, CAST(15 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_itivanov18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount], [PriceWithDiscount]) VALUES (4, N'Issac', N'John Deere', N'6R', 2021, CAST(56479 AS Decimal(18, 0)), 9999, CAST(8 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_itivanov18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount], [PriceWithDiscount]) VALUES (5, N'Ivan', N'Toyota', N'Supra', 1994, CAST(80000 AS Decimal(18, 0)), 3, CAST(10 AS Decimal(18, 0)), CAST(72000 AS Decimal(18, 0)))
GO
INSERT [dbo].[products_itivanov18] ([Id], [Name], [Manufacturer], [Model], [YearOfManufacture], [Price], [AvailableUnits], [Discount], [PriceWithDiscount]) VALUES (6, N'Kostadin', N'Jaguar', N'XF', 2019, CAST(40000 AS Decimal(18, 0)), 25431, CAST(5 AS Decimal(18, 0)), CAST(38000 AS Decimal(18, 0)))
GO
USE [master]
GO
ALTER DATABASE [pc_store_itivanov18] SET  READ_WRITE 
GO
