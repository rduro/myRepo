USE [master]
GO

/****** Object:  Database [lunardb]    Script Date: 12/31/2021 10:50:11 AM ******/
DROP DATABASE [lunardb]
GO

/****** Object:  Database [lunardb]    Script Date: 12/31/2021 10:50:11 AM ******/
CREATE DATABASE [lunardb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'lunardb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\lunardb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'lunardb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\lunardb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [lunardb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [lunardb] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [lunardb] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [lunardb] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [lunardb] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [lunardb] SET ARITHABORT OFF 
GO

ALTER DATABASE [lunardb] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [lunardb] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [lunardb] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [lunardb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [lunardb] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [lunardb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [lunardb] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [lunardb] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [lunardb] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [lunardb] SET  DISABLE_BROKER 
GO

ALTER DATABASE [lunardb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [lunardb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [lunardb] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [lunardb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [lunardb] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [lunardb] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [lunardb] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [lunardb] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [lunardb] SET  MULTI_USER 
GO

ALTER DATABASE [lunardb] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [lunardb] SET DB_CHAINING OFF 
GO

ALTER DATABASE [lunardb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [lunardb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [lunardb] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [lunardb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [lunardb] SET QUERY_STORE = OFF
GO

ALTER DATABASE [lunardb] SET  READ_WRITE 
GO

USE [lunardb]
GO
ALTER TABLE [dbo].[Partnumber] DROP CONSTRAINT [DF_Partnumber_ID]
GO
ALTER TABLE [dbo].[Limits] DROP CONSTRAINT [DF_Limits_TimeStamp]
GO
ALTER TABLE [dbo].[Limits] DROP CONSTRAINT [DF_Limits_ID]
GO
/****** Object:  Table [dbo].[Partnumber]    Script Date: 12/31/2021 7:50:04 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Partnumber]') AND type in (N'U'))
DROP TABLE [dbo].[Partnumber]
GO
/****** Object:  Table [dbo].[Limits]    Script Date: 12/31/2021 7:50:04 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Limits]') AND type in (N'U'))
DROP TABLE [dbo].[Limits]
GO
USE [master]
GO
/****** Object:  Database [lunardb]    Script Date: 12/31/2021 7:50:04 AM ******/
DROP DATABASE [lunardb]
GO
/****** Object:  Database [lunardb]    Script Date: 12/31/2021 7:50:04 AM ******/
CREATE DATABASE [lunardb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'lunardb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\lunardb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'lunardb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\lunardb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [lunardb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [lunardb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [lunardb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [lunardb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [lunardb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [lunardb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [lunardb] SET ARITHABORT OFF 
GO
ALTER DATABASE [lunardb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [lunardb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [lunardb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [lunardb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [lunardb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [lunardb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [lunardb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [lunardb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [lunardb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [lunardb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [lunardb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [lunardb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [lunardb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [lunardb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [lunardb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [lunardb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [lunardb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [lunardb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [lunardb] SET  MULTI_USER 
GO
ALTER DATABASE [lunardb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [lunardb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [lunardb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [lunardb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [lunardb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [lunardb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [lunardb] SET QUERY_STORE = OFF
GO
USE [lunardb]
GO
/****** Object:  Table [dbo].[Limits]    Script Date: 12/31/2021 7:50:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Limits](
	[ID] [uniqueidentifier] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[ErrorCodes] [varchar](50) NOT NULL,
	[LowLimit] [numeric](18, 3) NULL,
	[HighLimit] [numeric](18, 3) NULL,
	[Comparator] [varchar](10) NULL,
	[Units] [varchar](10) NULL,
	[StringComp] [varchar](50) NULL,
	[Models] [varchar](50) NOT NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_Limits] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partnumber]    Script Date: 12/31/2021 7:50:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partnumber](
	[ID] [uniqueidentifier] NOT NULL,
	[PartNumberRegex] [varchar](255) NOT NULL,
	[Model] [varchar](10) NOT NULL,
	[Suffix] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Partnumber] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Limits] ([ID], [TimeStamp], [ErrorCodes], [LowLimit], [HighLimit], [Comparator], [Units], [StringComp], [Models]) VALUES (N'31b3f1ab-26d9-48fa-bd50-1b5b0bd58541', CAST(N'2021-12-21T14:20:02.430' AS DateTime), N'LimitCode2', 10.0, 20.0, N'GELE', N'Amps', NULL, N'0A,0B,0C')
INSERT [dbo].[Limits] ([ID], [TimeStamp], [ErrorCodes], [LowLimit], [HighLimit], [Comparator], [Units], [StringComp], [Models]) VALUES (N'6974b6ec-368b-4157-8250-6ea3170a4750', CAST(N'2021-12-21T14:17:50.983' AS DateTime), N'Sample1', 5.0, 15.0, N'GTLE', N'Vdc', NULL, N'0A')
INSERT [dbo].[Limits] ([ID], [TimeStamp], [ErrorCodes], [LowLimit], [HighLimit], [Comparator], [Units], [StringComp], [Models]) VALUES (N'b3fe3c6a-c067-473d-a9f5-8f66ab39582e', CAST(N'2021-12-21T14:17:12.400' AS DateTime), N'A0001243', 5.0, 10.0, N'GELE', N'C', NULL, N'0A,0C')
INSERT [dbo].[Limits] ([ID], [TimeStamp], [ErrorCodes], [LowLimit], [HighLimit], [Comparator], [Units], [StringComp], [Models]) VALUES (N'7fcc4ead-ebc2-41b7-9084-b5d14eafeeee', CAST(N'2021-12-21T14:20:30.533' AS DateTime), N'A0001243', 10.0, 20.0, N'GELE', N'C', NULL, N'0C,0B')
INSERT [dbo].[Limits] ([ID], [TimeStamp], [ErrorCodes], [LowLimit], [HighLimit], [Comparator], [Units], [StringComp], [Models]) VALUES (N'ad0af5c2-2fe7-4ff1-a8e1-c0c5faf8b20d', CAST(N'2021-12-21T14:57:14.250' AS DateTime), N'A0001243', 5.0, 10.0, N'GELE', N'C', NULL, N'0C')
GO
INSERT [dbo].[Partnumber] ([ID], [PartNumberRegex], [Model], [Suffix]) VALUES (N'fa4f72a4-5e99-4093-956d-40a0ba740e36', N'^(P:)(\w{2}-\w{6})(R:)(\w{2})(S:)((\w{3})(\d{2})(\d{2})(\d{5}))$', N'0A', N'B1  ')
INSERT [dbo].[Partnumber] ([ID], [PartNumberRegex], [Model], [Suffix]) VALUES (N'54d08a76-3c8c-49c7-9978-941d39cdbd69', N'^(S:\w{3}\d{2}\d{2}(\d{4}|[[:xdigit:]]{4}))(P:(\d{8})(\w{1,2})(\d{6})(\d{3}))$', N'0C', N'A2  ')
INSERT [dbo].[Partnumber] ([ID], [PartNumberRegex], [Model], [Suffix]) VALUES (N'a382ead5-775e-4515-9346-9721282186ab', N'^J(\d{11,13}):K(\d{11,13})$', N'0B', N'A1  ')
GO
ALTER TABLE [dbo].[Limits] ADD  CONSTRAINT [DF_Limits_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[Limits] ADD  CONSTRAINT [DF_Limits_TimeStamp]  DEFAULT (getdate()) FOR [TimeStamp]
GO
ALTER TABLE [dbo].[Partnumber] ADD  CONSTRAINT [DF_Partnumber_ID]  DEFAULT (newid()) FOR [ID]
GO
USE [master]
GO
ALTER DATABASE [lunardb] SET  READ_WRITE 
GO
