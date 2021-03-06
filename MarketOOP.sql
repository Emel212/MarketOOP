USE [master]
GO
/****** Object:  Database [MarketOOP]    Script Date: 23.12.2021 17:09:35 ******/
CREATE DATABASE [MarketOOP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MarketOOP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\MarketOOP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MarketOOP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\MarketOOP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MarketOOP] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MarketOOP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MarketOOP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MarketOOP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MarketOOP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MarketOOP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MarketOOP] SET ARITHABORT OFF 
GO
ALTER DATABASE [MarketOOP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MarketOOP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MarketOOP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MarketOOP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MarketOOP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MarketOOP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MarketOOP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MarketOOP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MarketOOP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MarketOOP] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MarketOOP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MarketOOP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MarketOOP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MarketOOP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MarketOOP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MarketOOP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MarketOOP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MarketOOP] SET RECOVERY FULL 
GO
ALTER DATABASE [MarketOOP] SET  MULTI_USER 
GO
ALTER DATABASE [MarketOOP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MarketOOP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MarketOOP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MarketOOP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MarketOOP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MarketOOP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MarketOOP', N'ON'
GO
ALTER DATABASE [MarketOOP] SET QUERY_STORE = OFF
GO
USE [MarketOOP]
GO
/****** Object:  Table [dbo].[BirimTipleri]    Script Date: 23.12.2021 17:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BirimTipleri](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_BirimTipleri] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Borclular]    Script Date: 23.12.2021 17:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Borclular](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nchar](10) NULL,
	[Soyadi] [nchar](10) NULL,
	[TelNo] [nchar](15) NULL,
	[Adres] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](150) NULL,
 CONSTRAINT [PK_Borclular] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kasa]    Script Date: 23.12.2021 17:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kasa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](100) NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Kasa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 23.12.2021 17:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](150) NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 23.12.2021 17:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PersonelID] [int] NULL,
	[KasaID] [int] NULL,
	[Tarih] [date] NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odeme]    Script Date: 23.12.2021 17:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odeme](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BorcluID] [int] NULL,
	[Tarih] [datetime] NULL,
 CONSTRAINT [PK_Odeme] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OdemeDetay]    Script Date: 23.12.2021 17:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OdemeDetay](
	[OdemeID] [int] NOT NULL,
	[SatisID] [int] NOT NULL,
	[OdenenTutar] [money] NULL,
	[Odendi] [bit] NULL,
 CONSTRAINT [PK_OdemeDetay] PRIMARY KEY CLUSTERED 
(
	[OdemeID] ASC,
	[SatisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odemeler]    Script Date: 23.12.2021 17:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odemeler](
	[id] [nchar](10) NULL,
	[BorcluID] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personeller]    Script Date: 23.12.2021 17:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personeller](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[Unvan] [nvarchar](50) NULL,
	[Adres] [nvarchar](50) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](150) NULL,
	[Fotograf] [image] NULL,
	[Sifre] [nvarchar](15) NULL,
 CONSTRAINT [PK_Personeller] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satis]    Script Date: 23.12.2021 17:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satis](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NULL,
	[SatisTarihi] [date] NULL,
 CONSTRAINT [PK_Satis] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatisDetay]    Script Date: 23.12.2021 17:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatisDetay](
	[SatisID] [int] NOT NULL,
	[UrunID] [int] NOT NULL,
	[Adet] [int] NULL,
	[Fiyat] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tedarikciler]    Script Date: 23.12.2021 17:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tedarikciler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[SirketAdi] [nvarchar](50) NULL,
	[Telefon] [nvarchar](20) NULL,
	[Adres] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Tedarikciler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 23.12.2021 17:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Barkod] [nvarchar](60) NULL,
	[UrunAdi] [nvarchar](150) NULL,
	[SatisFiyat] [smallmoney] NULL,
	[BirimAlisFiyati] [smallmoney] NULL,
	[BirimTipID] [int] NULL,
	[SatisFiyati_2] [smallmoney] NULL,
	[SatisFiyati_3] [smallmoney] NULL,
	[Kdv] [smallmoney] NULL,
	[KdvOrani] [float] NULL,
	[KategoriID] [int] NULL,
	[StokMiktari] [int] NULL,
	[KritikStokMiktari] [int] NULL,
	[TedarikciID] [int] NULL,
	[Ozel_Kod1] [int] NULL,
	[Ozel_Kod2] [int] NULL,
	[UrunResmi] [varbinary](max) NULL,
	[SonKullanmaTarihi] [date] NULL,
	[Cinsi] [nvarchar](50) NULL,
	[Sinifi] [nvarchar](50) NULL,
	[BedenNo] [int] NULL,
	[Sonlandi] [bit] NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Urunler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BirimTipleri] ON 

INSERT [dbo].[BirimTipleri] ([id], [Adi], [Aktif]) VALUES (1, N'Adet', 1)
INSERT [dbo].[BirimTipleri] ([id], [Adi], [Aktif]) VALUES (2, N'Kg', 1)
INSERT [dbo].[BirimTipleri] ([id], [Adi], [Aktif]) VALUES (3, N'gr', 1)
INSERT [dbo].[BirimTipleri] ([id], [Adi], [Aktif]) VALUES (4, N'Lt', 1)
INSERT [dbo].[BirimTipleri] ([id], [Adi], [Aktif]) VALUES (5, N'birim', 1)
INSERT [dbo].[BirimTipleri] ([id], [Adi], [Aktif]) VALUES (6, N'ml', 1)
SET IDENTITY_INSERT [dbo].[BirimTipleri] OFF
GO
SET IDENTITY_INSERT [dbo].[Borclular] ON 

INSERT [dbo].[Borclular] ([id], [Adi], [Soyadi], [TelNo], [Adres], [Aciklama]) VALUES (12, N'Esra      ', N'Al        ', N'(999) 999-7777 ', N'dşwdşd', N'-')
INSERT [dbo].[Borclular] ([id], [Adi], [Soyadi], [TelNo], [Adres], [Aciklama]) VALUES (1015, N'Selim     ', N'Kaplan    ', N'(565) 545-4545 ', N'-', N'-')
INSERT [dbo].[Borclular] ([id], [Adi], [Soyadi], [TelNo], [Adres], [Aciklama]) VALUES (1016, N'Gürkan    ', N'Sahin     ', N'(545) 454-5454 ', N'-', N'-')
SET IDENTITY_INSERT [dbo].[Borclular] OFF
GO
SET IDENTITY_INSERT [dbo].[Kasa] ON 

INSERT [dbo].[Kasa] ([id], [Adi], [Aciklama], [Aktif]) VALUES (1, N'Ana Kasa', N'Market kasası', 1)
INSERT [dbo].[Kasa] ([id], [Adi], [Aciklama], [Aktif]) VALUES (2, N'2.Kasa', N'Satis Kasası', 1)
SET IDENTITY_INSERT [dbo].[Kasa] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategoriler] ON 

INSERT [dbo].[Kategoriler] ([id], [Adi], [Aktif]) VALUES (1, N'KuruYemiş', 1)
INSERT [dbo].[Kategoriler] ([id], [Adi], [Aktif]) VALUES (2, N'İçecekler', 1)
INSERT [dbo].[Kategoriler] ([id], [Adi], [Aktif]) VALUES (3, N'Meşrubat', 1)
INSERT [dbo].[Kategoriler] ([id], [Adi], [Aktif]) VALUES (4, N'Meyve/Sebze', 1)
INSERT [dbo].[Kategoriler] ([id], [Adi], [Aktif]) VALUES (5, N'Genel', 1)
INSERT [dbo].[Kategoriler] ([id], [Adi], [Aktif]) VALUES (1006, N'Kozmetik', 1)
SET IDENTITY_INSERT [dbo].[Kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (24, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (25, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (26, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (27, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (28, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (29, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (30, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (31, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (32, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (33, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (34, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (35, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (36, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (37, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (38, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (39, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (40, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (41, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (42, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (43, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (44, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (45, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (46, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (47, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (48, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (49, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (50, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (51, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (52, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (53, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (54, 2, 1, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (55, 2, 1, CAST(N'2021-08-12' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (56, 2, 1, CAST(N'2021-08-12' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (57, 2, 1, CAST(N'2021-08-12' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (58, 2, 1, CAST(N'2021-08-12' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (59, 4, 1, CAST(N'2021-08-13' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (60, 4, 1, CAST(N'2021-08-13' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (61, 4, 1, CAST(N'2021-08-13' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (62, 4, 1, CAST(N'2021-08-13' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (63, 4, 1, CAST(N'2021-08-13' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (64, 4, 1, CAST(N'2021-08-14' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (65, 4, 1, CAST(N'2021-08-14' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (66, 4, 1, CAST(N'2021-08-14' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (67, 4, 1, CAST(N'2021-08-14' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (68, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (69, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (70, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (71, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (72, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (73, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (74, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (75, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (76, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (77, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (78, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (79, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (80, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (81, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (82, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (83, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (84, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (85, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (86, 4, 1, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (87, 4, 1, CAST(N'2021-08-20' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (88, 4, 1, CAST(N'2021-08-20' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (89, 4, 1, CAST(N'2021-08-29' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (90, 4, 1, CAST(N'2021-08-29' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (91, 4, 1, CAST(N'2021-08-29' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (92, 4, 1, CAST(N'2021-08-29' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (93, 4, 1, CAST(N'2021-08-31' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (94, 4, 1, CAST(N'2021-08-31' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (95, 4, 1, CAST(N'2021-08-31' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (96, 4, 1, CAST(N'2021-08-31' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (97, 4, 1, CAST(N'2021-09-06' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (98, 4, 1, CAST(N'2021-12-02' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (99, 4, 1, CAST(N'2021-12-02' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (100, 4, 1, CAST(N'2021-12-02' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (101, 4, 1, CAST(N'2021-12-03' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (102, 4, 1, CAST(N'2021-12-03' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (103, 4, 1, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (104, 4, 1, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (105, 4, 1, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (106, 4, 1, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (107, 4, 1, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (108, 4, 1, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (109, 4, 1, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (110, 4, 1, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (111, 4, 1, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (112, 4, 1, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (113, 4, 1, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (114, 4, 1, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (115, 4, 1, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (116, 4, 1, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (117, 4, 1, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (1098, 4, 1, CAST(N'2021-12-08' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (1099, 4, 1, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (1100, 4, 1, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (1101, 4, 1, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (1102, 4, 1, CAST(N'2021-12-16' AS Date))
GO
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (1103, 4, 1, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (1104, 4, 1, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (1105, 4, 1, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (1106, 4, 1, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (1107, 4, 1, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Kullanici] ([id], [PersonelID], [KasaID], [Tarih]) VALUES (1108, 4, 1, CAST(N'2021-12-16' AS Date))
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
GO
SET IDENTITY_INSERT [dbo].[Odeme] ON 

INSERT [dbo].[Odeme] ([id], [BorcluID], [Tarih]) VALUES (5, 12, CAST(N'2021-09-01T16:33:15.317' AS DateTime))
INSERT [dbo].[Odeme] ([id], [BorcluID], [Tarih]) VALUES (1008, 1015, CAST(N'2021-12-03T14:12:11.487' AS DateTime))
INSERT [dbo].[Odeme] ([id], [BorcluID], [Tarih]) VALUES (1009, 1016, CAST(N'2021-12-03T14:14:48.040' AS DateTime))
SET IDENTITY_INSERT [dbo].[Odeme] OFF
GO
INSERT [dbo].[OdemeDetay] ([OdemeID], [SatisID], [OdenenTutar], [Odendi]) VALUES (5, 1104, 27.0000, 1)
INSERT [dbo].[OdemeDetay] ([OdemeID], [SatisID], [OdenenTutar], [Odendi]) VALUES (1008, 1103, 32.0000, 1)
INSERT [dbo].[OdemeDetay] ([OdemeID], [SatisID], [OdenenTutar], [Odendi]) VALUES (1009, 1102, 12.0000, 0)
GO
SET IDENTITY_INSERT [dbo].[Personeller] ON 

INSERT [dbo].[Personeller] ([id], [Adi], [Soyadi], [Unvan], [Adres], [Telefon], [Aciklama], [Fotograf], [Sifre]) VALUES (2, N'Selma', N'Aygün', N'Müdür', N'solfk', N'(444) 444-4444', N'1.bölge', NULL, N'123456')
INSERT [dbo].[Personeller] ([id], [Adi], [Soyadi], [Unvan], [Adres], [Telefon], [Aciklama], [Fotograf], [Sifre]) VALUES (3, N'Bahar', N'Açel', N'Muhasebeci', N'a1s1', N'(565) 656-5656', N'2.bölge', NULL, N'123456')
INSERT [dbo].[Personeller] ([id], [Adi], [Soyadi], [Unvan], [Adres], [Telefon], [Aciklama], [Fotograf], [Sifre]) VALUES (4, N'Emre', N'Yücel', N'Kasiyer', N'a1s1', N'(259) 644-4444', N'1.bölge', NULL, N'123456')
SET IDENTITY_INSERT [dbo].[Personeller] OFF
GO
SET IDENTITY_INSERT [dbo].[Satis] ON 

INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1048, 27, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1049, 28, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1050, 29, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1051, 30, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1052, 31, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1053, 37, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1054, 38, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1055, 39, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1056, 40, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1057, 44, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1058, 45, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1059, 47, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1060, 49, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1061, 50, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1062, 51, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1063, 52, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1064, 53, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1065, 54, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1066, 55, CAST(N'2021-08-12' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1067, 56, CAST(N'2021-08-12' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1068, 57, CAST(N'2021-08-12' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1069, 58, CAST(N'2021-08-12' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1070, 59, CAST(N'2021-08-13' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1071, 60, CAST(N'2021-08-13' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1072, 61, CAST(N'2021-08-13' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1073, 62, CAST(N'2021-08-13' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1074, 63, CAST(N'2021-08-13' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1075, 64, CAST(N'2021-08-14' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1076, 65, CAST(N'2021-08-14' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1077, 66, CAST(N'2021-08-14' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1078, 67, CAST(N'2021-08-14' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1079, 68, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1080, 69, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1081, 70, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1082, 71, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1083, 72, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1084, 73, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1085, 74, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1086, 75, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1087, 76, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1088, 77, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1089, 78, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1090, 79, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1091, 80, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1092, 81, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1093, 82, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1094, 83, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1095, 84, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1096, 85, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1097, 86, CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1098, 87, CAST(N'2021-08-20' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1099, 88, CAST(N'2021-08-20' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1100, 89, CAST(N'2021-08-29' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1101, 90, CAST(N'2021-08-29' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1102, 91, CAST(N'2021-08-29' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1103, 92, CAST(N'2021-08-29' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1104, 93, CAST(N'2021-08-31' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1105, 94, CAST(N'2021-08-31' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1106, 95, CAST(N'2021-08-31' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1107, 96, CAST(N'2021-08-31' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1108, 97, CAST(N'2021-09-06' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1109, 98, CAST(N'2021-12-02' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1110, 99, CAST(N'2021-12-02' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1111, 100, CAST(N'2021-12-02' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1112, 101, CAST(N'2021-12-03' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1113, 102, CAST(N'2021-12-03' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1114, 103, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1115, 104, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1116, 105, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1117, 106, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1118, 107, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1119, 108, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1120, 109, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1121, 110, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1122, 111, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1123, 112, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1124, 113, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1125, 114, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1126, 115, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1127, 116, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (1128, 117, CAST(N'2021-12-04' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (2109, 1098, CAST(N'2021-12-08' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (2110, 1099, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (2111, 1100, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (2112, 1101, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (2113, 1102, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (2114, 1103, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (2115, 1104, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (2116, 1105, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (2117, 1106, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (2118, 1107, CAST(N'2021-12-16' AS Date))
INSERT [dbo].[Satis] ([id], [KullaniciID], [SatisTarihi]) VALUES (2119, 1108, CAST(N'2021-12-16' AS Date))
SET IDENTITY_INSERT [dbo].[Satis] OFF
GO
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1072, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1073, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1074, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1075, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1081, 6, 2, 24.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1082, 7, 1, 10.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1065, 4, 2, 68014.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1083, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1100, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1100, 7, 1, 10.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1100, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1101, 8, 1, 5.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1101, 4, 1, 2.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1101, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1104, 7, 1, 10.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1104, 8, 1, 5.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1104, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1105, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1105, 4, 1, 2.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1106, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1106, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1107, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1107, 7, 1, 10.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1107, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1111, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1111, 7, 1, 25.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1111, 8, 1, 5.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1112, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1112, 7, 1, 25.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1112, 8, 1, 5.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1114, 7, 1, 25.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1114, 8, 1, 5.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1114, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1115, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1115, 7, 1, 25.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1115, 8, 1, 5.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1115, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1116, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1116, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1117, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1117, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1118, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1118, 4, 1, 2.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1118, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1118, 7, 1, 25.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1119, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1120, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1121, 4, 1, 2.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1122, 4, 1, 2.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1123, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1124, 7, 1, 25.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1125, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1126, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1127, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1127, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1127, 8, 1, 5.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1127, 7, 1, 25.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1128, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1128, 7, 1, 25.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1128, 8, 1, 5.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1128, 16, 1, 1.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2109, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2109, 8, 1, 5.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2109, 7, 1, 25.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2110, 4, 1, 2.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2110, 7, 1, 25.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2110, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2111, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2111, 7, 1, 25.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2111, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2112, 4, 1, 2.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2112, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2112, 16, 1, 1.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2112, 15, 1, 150.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2113, 4, 1, 2.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2113, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2113, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2113, 7, 1, 25.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2113, 8, 1, 5.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2114, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2114, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2114, 7, 1, 25.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2114, 8, 1, 5.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2114, 18, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2115, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2116, 3, 1, 15.0000)
GO
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2116, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2117, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2117, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2117, 7, 1, 25.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2118, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (2119, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1072, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1080, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1098, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1098, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1098, 16, 1, 1.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1099, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1099, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1099, 16, 1, 1.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1102, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1102, 7, 1, 10.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1102, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1103, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1103, 8, 1, 5.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1103, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1108, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1108, 7, 1, 10.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1108, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1076, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1077, 7, 1, 10.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1078, 8, 1, 5.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1079, 7, 1, 10.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1095, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1095, 7, 1, 10.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1095, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1096, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1096, 7, 1, 10.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1096, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1097, 3, 1, 15.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1097, 7, 1, 10.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1097, 8, 1, 5.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1097, 6, 1, 12.0000)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Adet], [Fiyat]) VALUES (1097, 4, 2, 8.0000)
GO
SET IDENTITY_INSERT [dbo].[Tedarikciler] ON 

INSERT [dbo].[Tedarikciler] ([id], [Adi], [Soyadi], [SirketAdi], [Telefon], [Adres], [Mail], [Aktif]) VALUES (1, N'Baran', N'Korkmaz', N'Deneme San.Tic.Ltd.Sti', N'257856150', N'Denme12.Sk A cad', N'deneme@gmail.com', 1)
INSERT [dbo].[Tedarikciler] ([id], [Adi], [Soyadi], [SirketAdi], [Telefon], [Adres], [Mail], [Aktif]) VALUES (2, N'asb', N'dlp', N'aşdlddd.De.San.Ltd.Sti', N'123456', N'123dkdk', N'l@gmail.com', 1)
INSERT [dbo].[Tedarikciler] ([id], [Adi], [Soyadi], [SirketAdi], [Telefon], [Adres], [Mail], [Aktif]) VALUES (3, N'Bilge', N'Oz', N'Ilk.De.San.Ltd.Sti', N'123dkdk', N'd@gmail.com', N'123456', 1)
INSERT [dbo].[Tedarikciler] ([id], [Adi], [Soyadi], [SirketAdi], [Telefon], [Adres], [Mail], [Aktif]) VALUES (1009, N'Selim', N'Gür', N'Karayel.De.San.Ltd.Şti', N'A154-Blok_C', N'Selim@Karayel.com', N'123456789', 1)
SET IDENTITY_INSERT [dbo].[Tedarikciler] OFF
GO
SET IDENTITY_INSERT [dbo].[Urunler] ON 

INSERT [dbo].[Urunler] ([id], [Barkod], [UrunAdi], [SatisFiyat], [BirimAlisFiyati], [BirimTipID], [SatisFiyati_2], [SatisFiyati_3], [Kdv], [KdvOrani], [KategoriID], [StokMiktari], [KritikStokMiktari], [TedarikciID], [Ozel_Kod1], [Ozel_Kod2], [UrunResmi], [SonKullanmaTarihi], [Cinsi], [Sinifi], [BedenNo], [Sonlandi], [Aktif]) VALUES (3, N'1234567892112', N'Elseve sac bakım kremi', 15.0000, 3.0000, 1, 1.0000, 5.0000, 0.1500, 0.01, 5, 21, 12, 1, 6, 6, 0xFFD8FFE000104A46494600010101006000600000FFE100224578696600004D4D002A00000008000101120003000000010001000000000000FFDB0043000201010201010202020202020202030503030303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080074003C03012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA47385A5A6C9F70D0022BD2AC808AF9DFF00681D4BC7DF072D575793C6167AAD86ADACFD9ADECBFB25AD5AC6070EC17CD49FF78CBB40DC5467AF15E6E3F6F9D3F4BF8A361E1AD4349F152B5EC0D2FDAED75A12AAB0C71E53229C1C8E779C67BD74470EE4B9A2CEAA7849CD5E1A9F68799F3629D5E63F03FE23CDE2EF13EAD63E75D4F6B6B6F05C426E18348BBDA40464751F28FF0026BD3AB19C1C1D99CF28B8BB30A28A2A490A6BFDDA7535FEED007CBBFB7FF8D753BBD73C3BE13D3D74B88295D66496EC49FBD01A58846AC99F2F1F7B7147CF4C0EB5F1D78BB4986D3F681D1AFB50F16787EC24584A7D923B1D42773D3F8C4217D7B1E95F57FEDB9F37ED05A1A83F37F610C7B7FA44B5F1CFC768947C70D17E6FBC5B1F4AF5B0C97B356F33E8B2D85A9E87DBDFB3B78B64D0BE266972477D6B7F6BE26B74B4F292D244316034AB2798CC3DC6DF2F9CE770C60FD455F1C7C12B8587E2278100CFFC7DAA7FE426AFB1C702B9B1C973A7E478F8B8DA760A28A2B88E51A64C1A699861BB606695BAD7CE9FB7EF8DEFBC3965E15D36D61B7BA8B5C96EA16824D525D3E49A4558D9151E346CB6379C36D18079AF1388F3CA593E5D5332AE9B8D349B4BCDA5FA9DF9660278DC4C70D4DD9CBF457FD0E3FF006DD97CEFDA1BC3E61DD22B686433463705FF00487C671D3BFE46BE41F8EC113E32E92D2AE1FE7D87D3D6B83FDA27C39E0EF1CF8E239F58F0BFC46D2BC45A1ACB6506A5A378AA5F3210CC19C233641DC421DD807E5C64D7936A3F027C41E26792E23F1FF8FAEE191C9B28355F104CD7A23F42508418C7A0271DEBE232CF1B729A9493AB4E51ED7EB7F4BFA9FB0E0FC34C6D3A319B969F2EBDB53F4F7E095A5E5B78D3C13793413ADA437F18927284471FCAC396E83F3EF5F6889D59411F303DC1E2BF05BC0BF0B3C23A3F8BFC3FE24D6B4DF8A9E28F13F871CCF697379E28324304850C656352B9F2D94B0DA4904139CF15FA17FB1578AF547F8A5E196B7D334FD034BD7EDE4924B75D62E2EA5997C8322AF94635894820B124E7E438079C674BC64C063733A58085192F68D4549DAD76FEFF00C0F03893C3BC660A8BC4D49AB4537AF5B6BDD9F6FA3EF14EA6C5D3F0A757EAC7E5C34F39AF977FE0A496FBF4FF000ACB961F678F5293E5FBC310C64E3D0950C33EF5F517F1D7CE7FF0503B35B9B1F07EEE449757911FA1B476FF00D92BF3FF0015237E15C62FEEAFFD2A27D2708CB9737A2DF77FFA4B3F3BBE31FC4AD3748D32DF5AD6AF63D3A3D40195DCC6F22A9581A69BEE0242A2C52B331F95563C9E0579C5A4B349A1EB179178ED85BE9D771D93C36F68D730C7288A692645988776764DB2BEC2440B09DC155D488FF692F875A6F8FBE0568B6BAF5AB5F7D96E6E9A088347B8B37DA216C6F23FE58CAEB95F981604608C8F1CD23E13D8DB785354D56EAEAF2E2EADAF1AF0CF2184C6D2C30944924FDD80CE04B20576F993736C29B9B3FCCBC3B94606780E67524A57B3D22D6FA5AE9E8D75EF73FAB31D1C54A9C634D2B2E5B3BB5A5B5BEA7D13F0DBE25689E20D72E2CEDFC41A76B772B6F0DD116285A3B78E50EE8CCEA59023AF11EE605846D8DC55B1F6C7EC2176759F8C960CDF32D9DC5D5BC67F87115B345C7A72AC3DEBF31FF64DF82FA0F867C4906A162AB6B7890FD86353B59962334B2ED52C0B2A869DD70A40DA154821171FA71FF04E6B663E37D3E63D5AF754931FEF3DC67FA575E5795E1E8F1860A9E1A4E4B9E176D24F76DE8B4E88F99E3EA957FB16A3AE927695ACEFA347DD51714EA45EB4B5FD9E7F2A8D3C5780FEDE907FC537E0F9B1F2C7AD18B3E9E65B4CBFD6BDF99722BC47F6E7B4597E1A68B331DAB6BAE5B316FEEEE0EA3F5603F1AF87F12A9F3F0BE357FD3B93FBB53DEE1795B35A0FFBCBFC8FCDCF1FF87349BFF86DA4B6A9A5FF006A436EEF3A46B0F99246C59983AF4C1192323919AF109BE1AF866E7C3976B63A4DAE9B35E44FE5CB22242D6E41DA99DCC42EDDB9DA78036FA0AFA03E27E8B71078221B4997FD1EEB4B091B633F3797F37EB8F7FCABC8BC25F0CB52BAF070B2B587ED37DE5B4BE5C4C0C80CD22F960AF5CB8191D8E09070091FCB3E1E52962F072F65465565197D994968EEF65A68D1FD6988A908E1E129D68C13EF14FF001657FD993E1369BE136B7BBDDA5DC4D737B1F94E91469340A42AED20331E76E7279C902BF41FFE09A3179FE2EB2EA5BEC9A85C1CF6FDF47FFC78D7C47F0B3E16EB1F0A3E2EDC689ADC30DADD89AD2F4C50CCB2285924CA9DCBC72A3F4AFB9BFE098F632278DE656460967E1C594311C31B8B85057EABF66C9FF7C57D1E534DCF8F70B4650707196B16DB69C60DBDF6F43E2F8FDC23C3F2709F32B68D24AF76BB7A9F6B03914522D2D7F5D9FCC2349AF1FF00DB86D05D7C02BE761F2DADEDA5D37B0499589FFC76BD8ABCFBF6A7D1D75DF807E23B76FBAD0293C7401D49FD335F3DC5986F6F92E2A8FF003539AFFC959E964D5BD963E8D4ED28FE68F843C6DA6F9769E0BC46CD22EAF61090BD7FE3FEDD0E3E809AF5897F65AF0D6BFAB437F369B6F15C5BF9AE27123ACE5D9D4928D9C863F36E20827B9E2B93866B5B0D6BC1926A122DB817E2E653270A812E2191C9E3B67A77AF70B3F8E3F0E6C6C57CDF1E783D7C98965761AA465429E3793D3693DFA57F38FD19B36C061F2DC750C6D4845AA89AE6695D7BCB4BF45E47EBDC638AC55B0EB0FCDB4F64DEF2DB43E35F8C9E0F87C27FB5FEA16D035D49143A7D849BE799A66C84DC72CDC9FCEBEB4FF826EE9DE4DD78999979B4B3B1B75F605AE1CFF4AF9FFE3C6B3A4F8D3F685BED4F47D52C357D3E6B38BCA9ECE4F3222522C30CF4EA08AFA8FF00E09FDA1B69FE1AF13DC372D2EA31C04FFD73881FFD9EBA386DD3C6F89F56B5169C20EAB4D3BA7A349A7DB5DCE9E30C4C970B5184FE27182D77DD3D57C8FA181E6969AAB8A757F539F830561FC4DD35759F875AE5A32EE171613A600EA4C6D8ADCA86F614B9B668E450D1C836303DC1E08AE7C551F6D42749FDA4D7DEAC694A7C9353ECD33F2DFE2A7C42BCB1B8FEDC6B5BCFB1E9E9E6B2BDC476A91B31DB2067959635E541F9D80E9EB5F36EAB6B67AD5EFDA34F8352B8B6BD722729E27B66BB8E492595818951D94E5766D01D7201C0C6F2DF407C64B06F829E31BED3EF752B86BF86778DACFECB20B9700FDF51BF05718E5430031EB5E677DF17745BDB78D6487475926660FF006C8CACC08624EE4F2589638CF04E3EB915FC1397E12A65D5E74E953BCB99C5B575B3D6EBBEE7F5360B038BC7D1A7384172A49A7F89D37C07D68EB9058D9E9F6771F67D3522B52E6FE0BA6D8EAFF7BC976C1C056F980DC18119C1C7E927EC54824F849717822923FB7EAB77200E304857F2D4FE2101AFCD9F845E39D1FE290586C7549BCC6CE205B329E630FBDB429F9B1C64FF00F5C57EA67ECE5E0E9BC0BF08344D3EE3CDFB52C4659BCC4D8FB9CEEE464907A70791DF9AFD6BC15CB9FF006EE2312E3CBCB0D53BEF26BABEF667E77E2556AF4F0B4F0F888F2C9BDBC97E9A9DDA9CD2D3529D5FD487E321432EF5C1E9451401CEF8E7E13F85FE275B476FE25F0E683E22B7889648F53D3E2BC4427B8122B015CDC9FB1EFC269A1F2DFE18F801A2E3F76DE1FB529C7FB3B314515CB3C25094AF2826FD11D14F175E9C796136979368D4F047ECF5E01F85F74D71E19F04F847C3B71270D2699A3DBDA3B7D4C680F61F95760B12A9E051456B4E8C21F0452F45633A95673779B6FD47018A28A2B5333FFFD9, CAST(N'2021-04-02' AS Date), N'63', N'2', 6, 0, 1)
INSERT [dbo].[Urunler] ([id], [Barkod], [UrunAdi], [SatisFiyat], [BirimAlisFiyati], [BirimTipID], [SatisFiyati_2], [SatisFiyati_3], [Kdv], [KdvOrani], [KategoriID], [StokMiktari], [KritikStokMiktari], [TedarikciID], [Ozel_Kod1], [Ozel_Kod2], [UrunResmi], [SonKullanmaTarihi], [Cinsi], [Sinifi], [BedenNo], [Sonlandi], [Aktif]) VALUES (4, N'1234567892111', N'Snickers', 2.0000, 3.0000, 1, 3.0000, 2.0000, 0.0600, 0.01, 5, 0, 50, 1, 23, 65, 0xFFD8FFE000104A46494600010101006000600000FFE100224578696600004D4D002A00000008000101120003000000010001000000000000FFDB0043000201010201010202020202020202030503030303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080074003C03012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA47385A5A6C9F70D0022BD2AC808AF9DFF00681D4BC7DF072D575793C6167AAD86ADACFD9ADECBFB25AD5AC6070EC17CD49FF78CBB40DC5467AF15E6E3F6F9D3F4BF8A361E1AD4349F152B5EC0D2FDAED75A12AAB0C71E53229C1C8E779C67BD74470EE4B9A2CEAA7849CD5E1A9F68799F3629D5E63F03FE23CDE2EF13EAD63E75D4F6B6B6F05C426E18348BBDA40464751F28FF0026BD3AB19C1C1D99CF28B8BB30A28A2A490A6BFDDA7535FEED007CBBFB7FF8D753BBD73C3BE13D3D74B88295D66496EC49FBD01A58846AC99F2F1F7B7147CF4C0EB5F1D78BB4986D3F681D1AFB50F16787EC24584A7D923B1D42773D3F8C4217D7B1E95F57FEDB9F37ED05A1A83F37F610C7B7FA44B5F1CFC768947C70D17E6FBC5B1F4AF5B0C97B356F33E8B2D85A9E87DBDFB3B78B64D0BE266972477D6B7F6BE26B74B4F292D244316034AB2798CC3DC6DF2F9CE770C60FD455F1C7C12B8587E2278100CFFC7DAA7FE426AFB1C702B9B1C973A7E478F8B8DA760A28A2B88E51A64C1A699861BB606695BAD7CE9FB7EF8DEFBC3965E15D36D61B7BA8B5C96EA16824D525D3E49A4558D9151E346CB6379C36D18079AF1388F3CA593E5D5332AE9B8D349B4BCDA5FA9DF9660278DC4C70D4DD9CBF457FD0E3FF006DD97CEFDA1BC3E61DD22B686433463705FF00487C671D3BFE46BE41F8EC113E32E92D2AE1FE7D87D3D6B83FDA27C39E0EF1CF8E239F58F0BFC46D2BC45A1ACB6506A5A378AA5F3210CC19C233641DC421DD807E5C64D7936A3F027C41E26792E23F1FF8FAEE191C9B28355F104CD7A23F42508418C7A0271DEBE232CF1B729A9493AB4E51ED7EB7F4BFA9FB0E0FC34C6D3A319B969F2EBDB53F4F7E095A5E5B78D3C13793413ADA437F18927284471FCAC396E83F3EF5F6889D59411F303DC1E2BF05BC0BF0B3C23A3F8BFC3FE24D6B4DF8A9E28F13F871CCF697379E28324304850C656352B9F2D94B0DA4904139CF15FA17FB1578AF547F8A5E196B7D334FD034BD7EDE4924B75D62E2EA5997C8322AF94635894820B124E7E438079C674BC64C063733A58085192F68D4549DAD76FEFF00C0F03893C3BC660A8BC4D49AB4537AF5B6BDD9F6FA3EF14EA6C5D3F0A757EAC7E5C34F39AF977FE0A496FBF4FF000ACB961F678F5293E5FBC310C64E3D0950C33EF5F517F1D7CE7FF0503B35B9B1F07EEE449757911FA1B476FF00D92BF3FF0015237E15C62FEEAFFD2A27D2708CB9737A2DF77FFA4B3F3BBE31FC4AD3748D32DF5AD6AF63D3A3D40195DCC6F22A9581A69BEE0242A2C52B331F95563C9E0579C5A4B349A1EB179178ED85BE9D771D93C36F68D730C7288A692645988776764DB2BEC2440B09DC155D488FF692F875A6F8FBE0568B6BAF5AB5F7D96E6E9A088347B8B37DA216C6F23FE58CAEB95F981604608C8F1CD23E13D8DB785354D56EAEAF2E2EADAF1AF0CF2184C6D2C30944924FDD80CE04B20576F993736C29B9B3FCCBC3B94606780E67524A57B3D22D6FA5AE9E8D75EF73FAB31D1C54A9C634D2B2E5B3BB5A5B5BEA7D13F0DBE25689E20D72E2CEDFC41A76B772B6F0DD116285A3B78E50EE8CCEA59023AF11EE605846D8DC55B1F6C7EC2176759F8C960CDF32D9DC5D5BC67F87115B345C7A72AC3DEBF31FF64DF82FA0F867C4906A162AB6B7890FD86353B59962334B2ED52C0B2A869DD70A40DA154821171FA71FF04E6B663E37D3E63D5AF754931FEF3DC67FA575E5795E1E8F1860A9E1A4E4B9E176D24F76DE8B4E88F99E3EA957FB16A3AE927695ACEFA347DD51714EA45EB4B5FD9E7F2A8D3C5780FEDE907FC537E0F9B1F2C7AD18B3E9E65B4CBFD6BDF99722BC47F6E7B4597E1A68B331DAB6BAE5B316FEEEE0EA3F5603F1AF87F12A9F3F0BE357FD3B93FBB53DEE1795B35A0FFBCBFC8FCDCF1FF87349BFF86DA4B6A9A5FF006A436EEF3A46B0F99246C59983AF4C1192323919AF109BE1AF866E7C3976B63A4DAE9B35E44FE5CB22242D6E41DA99DCC42EDDB9DA78036FA0AFA03E27E8B71078221B4997FD1EEB4B091B633F3797F37EB8F7FCABC8BC25F0CB52BAF070B2B587ED37DE5B4BE5C4C0C80CD22F960AF5CB8191D8E09070091FCB3E1E52962F072F65465565197D994968EEF65A68D1FD6988A908E1E129D68C13EF14FF001657FD993E1369BE136B7BBDDA5DC4D737B1F94E91469340A42AED20331E76E7279C902BF41FFE09A3179FE2EB2EA5BEC9A85C1CF6FDF47FFC78D7C47F0B3E16EB1F0A3E2EDC689ADC30DADD89AD2F4C50CCB2285924CA9DCBC72A3F4AFB9BFE098F632278DE656460967E1C594311C31B8B85057EABF66C9FF7C57D1E534DCF8F70B4650707196B16DB69C60DBDF6F43E2F8FDC23C3F2709F32B68D24AF76BB7A9F6B03914522D2D7F5D9FCC2349AF1FF00DB86D05D7C02BE761F2DADEDA5D37B0499589FFC76BD8ABCFBF6A7D1D75DF807E23B76FBAD0293C7401D49FD335F3DC5986F6F92E2A8FF003539AFFC959E964D5BD963E8D4ED28FE68F843C6DA6F9769E0BC46CD22EAF61090BD7FE3FEDD0E3E809AF5897F65AF0D6BFAB437F369B6F15C5BF9AE27123ACE5D9D4928D9C863F36E20827B9E2B93866B5B0D6BC1926A122DB817E2E653270A812E2191C9E3B67A77AF70B3F8E3F0E6C6C57CDF1E783D7C98965761AA465429E3793D3693DFA57F38FD19B36C061F2DC750C6D4845AA89AE6695D7BCB4BF45E47EBDC638AC55B0EB0FCDB4F64DEF2DB43E35F8C9E0F87C27FB5FEA16D035D49143A7D849BE799A66C84DC72CDC9FCEBEB4FF826EE9DE4DD78999979B4B3B1B75F605AE1CFF4AF9FFE3C6B3A4F8D3F685BED4F47D52C357D3E6B38BCA9ECE4F3222522C30CF4EA08AFA8FF00E09FDA1B69FE1AF13DC372D2EA31C04FFD73881FFD9EBA386DD3C6F89F56B5169C20EAB4D3BA7A349A7DB5DCE9E30C4C970B5184FE27182D77DD3D57C8FA181E6969AAB8A757F539F830561FC4DD35759F875AE5A32EE171613A600EA4C6D8ADCA86F614B9B668E450D1C836303DC1E08AE7C551F6D42749FDA4D7DEAC694A7C9353ECD33F2DFE2A7C42BCB1B8FEDC6B5BCFB1E9E9E6B2BDC476A91B31DB2067959635E541F9D80E9EB5F36EAB6B67AD5EFDA34F8352B8B6BD722729E27B66BB8E492595818951D94E5766D01D7201C0C6F2DF407C64B06F829E31BED3EF752B86BF86778DACFECB20B9700FDF51BF05718E5430031EB5E677DF17745BDB78D6487475926660FF006C8CACC08624EE4F2589638CF04E3EB915FC1397E12A65D5E74E953BCB99C5B575B3D6EBBEE7F5360B038BC7D1A7384172A49A7F89D37C07D68EB9058D9E9F6771F67D3522B52E6FE0BA6D8EAFF7BC976C1C056F980DC18119C1C7E927EC54824F849717822923FB7EAB77200E304857F2D4FE2101AFCD9F845E39D1FE290586C7549BCC6CE205B329E630FBDB429F9B1C64FF00F5C57EA67ECE5E0E9BC0BF08344D3EE3CDFB52C4659BCC4D8FB9CEEE464907A70791DF9AFD6BC15CB9FF006EE2312E3CBCB0D53BEF26BABEF667E77E2556AF4F0B4F0F888F2C9BDBC97E9A9DDA9CD2D3529D5FD487E321432EF5C1E9451401CEF8E7E13F85FE275B476FE25F0E683E22B7889648F53D3E2BC4427B8122B015CDC9FB1EFC269A1F2DFE18F801A2E3F76DE1FB529C7FB3B314515CB3C25094AF2826FD11D14F175E9C796136979368D4F047ECF5E01F85F74D71E19F04F847C3B71270D2699A3DBDA3B7D4C680F61F95760B12A9E051456B4E8C21F0452F45633A95673779B6FD47018A28A2B5333FFFD9, CAST(N'2021-04-02' AS Date), N'5', N'd', 8, 1, 1)
INSERT [dbo].[Urunler] ([id], [Barkod], [UrunAdi], [SatisFiyat], [BirimAlisFiyati], [BirimTipID], [SatisFiyati_2], [SatisFiyati_3], [Kdv], [KdvOrani], [KategoriID], [StokMiktari], [KritikStokMiktari], [TedarikciID], [Ozel_Kod1], [Ozel_Kod2], [UrunResmi], [SonKullanmaTarihi], [Cinsi], [Sinifi], [BedenNo], [Sonlandi], [Aktif]) VALUES (6, N'1234567892119', N'lkf', 12.0000, 12.0000, 1, 3.0000, 2.0000, 0.1200, 0.01, 2, 45, 56, 1, 25, 100, 0xFFD8FFE000104A46494600010101006000600000FFE100224578696600004D4D002A00000008000101120003000000010001000000000000FFDB0043000201010201010202020202020202030503030303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108006F006F03012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA28AF90FFE0A03FF000540BDFD8CFE31683E09D1FC07FF000976A5AC6943569269355FB1C7046D3490A22A889CBB168DC9E571F2FDECF1CB8DC750C25275F112E58AEBAF5F4397198DA384A4EBE225CB15BBD7AE9D0FAF28AF80B4AFF82B7FC58D5605923FD9DF5F2AD8C18DEEE65C7AEE5B63C73F5E0F078CCE7FE0ACBF16016DDFB3BF8854738C9BEC93C63FE5D381D7DF8E9CD79B1E24CB5ABAAABF1FF23CF8F1165CD5D555F8FF0091F7B515F04B7FC159FE2B03C7ECF9AE9E87937A0F6FFA75EB4B1FFC1587E2D4A0E3F678F100E401FF001FA73EFF00F1EBD074F5E9C7A3FF0058F2DFF9FABF1FF21FFAC197FF00CFD5F89F7AD15F075B7FC1567E2CCB71B65FD9EFC411C393F3AADF3311CE3E5FB281CF1DF8F7AB4FFF000552F89AB1FCBF017C4ACD9C00D05EAFE3FEA0FB71F5F4198FF59B2DFF009F9F83FF00227FD62CBBFE7E7E0FFC8FB9E8AF84E7FF0082AB7C5301BC9FD9FF00C44FCFCA5D6F57233DF16C71C7D7D3DE923FF82AAFC57643FF0018F7E21DDB7B7DB08278FF00A76E9D79F61C73C1FEB365B7B7B4FC1FF90E3C4397BFF979F83FF23EEDA2BE171FF054BF8B0F27CBFB3DF899A3E39F2EF33EFC7D9FFAD66F8BBFE0AFBF107C236FE65CFC10D4AD940CB1BEBA96CC0FA178B9A25C4D96455E5557DCFF00C825C4597462E72AAADF3FF23EFAA2BE72FF00827A7EDEF27EDC5A1F8A24BCF0A9F0AEA1E17B88219625BEFB5C770B3090AB03B10A9062705707B1CF240FA36BD7C2E2A9622946BD1778CB54FB9E9E1B134F114A35A8BBC65AA615F987FF000584D1E3D53F6DDD1772E5A3F87AD20E3A79777752FF00EC95FA795F9A9FF0560E7F6EAD1D7D7E1ADD7FE877F5F39C6914F28A89F97E68F9EE318A9653522FCBF347C9FA7C925836EB7924B76FEF44C633F98AD51E34D71540FEDCD6B0BD3FD3A5FF00E2AB26DFFD5D487A57F332A928FC2CFE678D59AD9B3E86FD923E063FC6EF0AEADA9EB7AA6B92799A9C1A3694835D7B3F3E665DD390DB5FE74F36D76EE1B3F78DC3918127C77F06787F4AD23584F0DF8CB4BD2A4F0E6BEBA4F9F26A9AAC5F6A85E3B82BE634FB9259C9B72C4C211179C6E592311F45FB277ED03E17F047C26F0ED9B6A5A4D8EB5E1DB9BBB9B8B5D4666B65BA99E591E1B847D85182A9814AE77E6DC8C00558F9CF886F3C199F088B5F1A68979278775D975EBE8AEB4DD44DBEA1316B6090EE58373C423B6C16214E67971C618FE8F81A796FD4210AD285E4B56DA52BBB3D1B7BA6DA7BE91B687EFD9160785E59152A78EAF4D54A915CD2E68A9A6DB9357777171D23B796C43E0BFD9D7E2778F357D4AC74FD63FD274DD62E34275975C64135D40504AB19CFCCAA648FE6E01DC319E71DC6ABFB067C54D1BC227549BC67A5798BB11AD3FB5AED5848D82C824318898A0C92558AF1C1395CF47F097F683F863E00D434C0FE265B4B7B7B79DE70961A8DC6FBD9A4964798BB43BD94968949C16DB1F0BDABD3BC75FB7D7C2ED6B44D2AC63F1425C7D937BBF95A4EA08A49707196811B9181903D79ACF0F96E50A8B756BA72B7FCFD56BE9B6AB6BEF6D6DB1E6E5FC37C2AB0F178CC72736BDEB568D937FCBA26EDB6A9A7BDBA1F338FD99BC6D6BA5C775A9F8F74DB05B9B97B5B744D42F6F1E774119600411BE31E6C6307925B8CE0D703F10344D7BC0D059DC2F8B1B5AD3AFA49A08AEEC6F2E9544D108DA489D2658DD5956689B3B4A9120DAC4860BF4D7C4DFDABFE1EFC4BD7B43BA9FC67AA598D26CCDB472C367A83DC5BDC1691A3B8123A973B24789D8EEDC5623B4676A9F9CBE2FEA1A2CDE0BF0E59697E24D275A9B4FBBBF69E2D3ED6F618C2CDE4324EE6E2DE1DD2B6C68DB1BB096F07BD79B9A617034B0F3961AAA9356B5A69B7AC6FA733EEF65D3D4F3F8A327E19C3E533AD9662B9EB45C6CBDAA6DA72B3D34BD97F2AD37DAE7113EBBA8DD2ED9352D4241E8F75237F335D1FECF1E1AB7F10FC78F0AC17112491FF0068C5349919DE10EFC1F5E5457275DFFECB8E22F8EBA1B37F0484E7D3835F2F81973E269A9EBEF2FCCFCB72FBCF17494DDD732FCD1F4DFF00C109EC7C8D0FE255C60FFA54FA7B93EA7379FE7F0AFBFABE33FF0082437849BC07A078934A9976DE43A669535D29EA92CB26A12321F75DDB3FE015F6657F5070E5274F2BA107BA8A3FA8F25C2CB0F80A3466AD28C6375D9DB55F7857E6A7FC15754C9FB77E8EA3AFFC2B7B93F86FD44FF4AFD2BAFCE8FF00829FF8726D77F6DC82E2D57CD974BF865733CF103F3B42CDA9299147708DB7763901C1E8188E2E308B9655512F2FCD1C1C554A5532DA9182BBD1FDCD37F85D9F1DDBFF00AA5FA53EA3B63FB95E739191526DDD5FCBC7F2E9B1E0AF006A9E3EBC9A2D3A1B758ED544973757775159DADA21380D2CD2B2C6809E80B65B04004F15A1E2CF839E22F06F883FB36EB4F59A769ADADE292D278EEADE692E63F32DD5658C942644F980CE76F3D2ABBE8FA86A7E14D26D6C6DAE6EA09E692668E08CB869F3B06E03B851804F405BD4D761E021A4FC37B7D12F6FA6D3AE24D3AF6FF50B816B788659248EDD52DE04C1FBC24DEDBF180586091835E8470D0B28C93BE8DBBE9676E96E975D7A33ECB0DC394E528D3ACA5156A729546ED14A6A2EC972BBF2A9A6DDFECB7657471775E09B9BFF0019DC68FA0DAEA3AFCB0B32442CED9E792EBCBF964911101631EE0C41C70B8CF39AE82DFC1578DF0D347B1B64892E3C40D3EBD7B2CD20862B4B0B676B586491DB844F37ED79CFDE26200331507B0D2FE367857C157B25C26B17D797567AE586AF69169B686DA2B8B2B357FB2E94ECECA61447F2DDCAAC8A4F23CC750D579FE27F883E23E9AD7161F0EEFF00519A4B3D30DDDEDC190580B9B3F31BCC38444103CB2B4C627931E66092C06DAE8A785C3ABFBFABBE895FF2BEFB6BDFCB5E8C3E5597AAB38AAB794B995A09CACAFB271E7DD2E5D6FA49BE89CB92BAF8051787FC37AB43A96AD612F8957564D1F4FB2B3696551322BBCFE63145403698886DC42AB396018053E7DAC6990E9C626B799EE22933B6529B56419C0651D769C1233C9183819C0EE3C57E3FD42CEF2EA4B9D4B478AEA6D425D48DAE8CA972D0CF2841266E5B7A80DB14B6D794B10430C1C570579A85C6A6E0CD2C93367E50493827B01DBD80AE7C44A824E308EBB2FBEF77AEFBADBB6C73E6D2CA2851950A149FB4B593EABDE4EEFDE7EF5B9A2EF14EDCBA46CEF0138AFA7BFE09D3FB34EA5E2DF1CD8F8D752B77B7D12CD9858075C7F684A320B8FF00A66841E7A33F033B58541FB247EC31FF0009D5FC1AE78E15ADF4A8C878347DC566BDF43391CC71FF00B03E76EFB07DEFA57E22FED59E19F845E3FD27C0BA2CF637BE31B8458934BB231B7F615B797959678D7FD5AED0A238F196CA9C04E6BEAB86387A4EAC3178AD126ACBABD777E5E5BBF4DFEF3C3CF0DF1556B4731CC20D28EB083DDB5B4A4BA456E93D5F5D3479BFF04CED5D753F8B1F17E347122E9EDA55A120E7E7537C5C7D4312A7DD4D7D7D5F9F3FF0416BC7D43C2BE3EB892592E26B88F4A96496462CF2331BE2CCC4F2589C924F24D7E8357EF592B6F054EFDBF567EAF3BFB49A9749497DD2682BF34FFE0AD7A9CFE15FDB97C2FAF69773AA59788345F035C5CE9F3E9F208E78DC2EA837027230324105704360E412B5FA595F969FF05BDBBB3B1FDAAB456BBB59351593E1FDF22D98DC12621351386C7DE18C8DB9F4FC673BFF00747EABF3475E5E93C5D24D7DA5F99E1D6DFB5D7C25F894593E226876BE01F1049D759F0BDFC125BDCBFF007AE34EC9D84F563072CC7EEAD57B4B3F0BF88757D3D741F1D787754D2F52BB8ECD350984968B6C646C07B84652D0A019259B000049E057CAC9F14353D1E01F645F0FF85A151C25AC09E701F48C120FFBC456BF80FC53ADEBBE26D36FEFADFC47E22D163BA8CDE7DA5FECB69243B86F1BC9DB9DB9C10C082011CD7E2B98E4D85AF19492E59EBAC7BFA6CD9F599CF82BC3599CFEB13C3BA6DBBB707CB7F97C3767BE59FC62F0FF00863E22378453C49A0EAB6DA96AD6FA4DDDCE95A9C573E6432361AE20058232AE0A9690A6095FE1259799F19FED45F0DFE1B7C62FECD9ADFC5DAFF86AD6D58CF22C11E9B712DC1DC1635694944DBF2160431C8718030D563C07E0CF08781F50F1C5F785743D264B3B1D7AC62B3BB92CD1A47B6952F58AF96E0B43137951AECC925A19492159547C9FF1EFE15C7F0C7E236AF66B25B5BE9724E66D3E7B8BA8E20F6F20F3235DCE40675560AD8CE1908F71CF83E1BC1D454DD4949FBBB3F777EAD5AE9EFD55BB686947C22E18A5469AA986E754E3CAB9E537A3F79B69C924EEDBD12B7E5F5F7C09FDAD354F8A8B750F8775CF1959DD69E13CD823BC9D14EEE3F76D1B90C01E0E318C8EC41AE3FC75FB77C7E1FF008C0969E22D3354F1B69FA1DE3C3A8C17FABC8AD70E99564473BD936B75241395C631D7C4BF619FDB4358FD93FE355C6A3E0DD6B46FB76AD62D6178C6C9AE4410096295994C81406DD1A80C378E7243600AF2DF107C4DD2F52D42EEEAE6CF55324D234B7172B72272CCC4E5D838DC589249CC99249E6BD0FF005428B9CA32E6706B48DDAB5F4DD34FD3AA3C1C9FC23C8B0B98D5C5E2A4EAE1DDBD9D29CA528C1FDABEBEF7F754AF6EB76933EC7F03FED4DE14F1DF853C4727F64EAF67E2486569F4BD3EDAE524B4485DC2A44D24A15E428580246D760576AB9DDB7B1F84FF00B49F8374AD12EF57BED5A1D175ED22ECC53E917763742F1200ABBAE77B44B1C6031914A310E0464FCD9C57C71F089ECFE255BDBE97A14924F7D7D7EB14BF698D60E5B688C11B982A8CC84B640C139185CD7D15F04FC45AC7887E10F8A60D0BC39E03D7AE356D7DB583AA6AFA5CF0DE5FC24148C17F31B679D1812B02A41770C40C05112E1DC3E1AD3A29A9732DDA7A75F893E9DACFB3BEA7D750F0EF8668E27EB584C1C232D1F3474E5D97BB7BC55FC95F7B33EA68BF6E8D6FC59E1CF27C07AAE92B66570F7969729737447B1071167E858638615CEFECC7E17D1EF7F695D2352D4742B75D5EE2E2495F518C15B896460C59DA41F3331249258924E49AF94ADBE18782FE22F8A5ACE6D1354F859E37872E834FB8F2E39B1D5E22B8465FF742115ED7FB271F89FF0008FF00680F0DDBEA17D67E3AF0DB5C04370EBE56A16EBCE093FC5F8EE3EE2BE870D14AA46DDD1F4957034A8509C68E974FD5E9DFAFDE7DDBFF000442D2A1D23C37E388E192699045A62ACD2A80F300D7D82480371ED9C7507D2BEEFAF823FE085FE20B3F14F83FC71A958ACB1DADF26973224836BA645D8208EC410411CF23D315F7BD7E91947FB9C3D3F53F119E95277FE697FE94C2BF30BFE0B15E09D4FE29FEDCBE12F0D6931DD4D79A9780EF225586232C80BA6A68022039662D81818CE064E3A7E9ED7E677FC162FE245C7C22FDAEFC3FE22B30CF7DA7F80AF9A04591A3662135066F9874CAAB0CE73F4AE6E22725819B82BBD2CBBEBB7CCE8CBE55238BA4E92BCB995BD7A1F0578C7C31E15FD98669B4DD412DF49F115A131CCBA85B1BCD5D241FF4C48FDC9FA845F7EF5E97A8FEC7BE07F17FECD1A2FC45F1D7C42D52EB4FF1569C2EE18CDD2411E9E5B70114A8A773B0C61963914060C99CAE4F15FB4778E3C1FF00B725A785FC4EB2DF687E3A4B98349BF96F2C25FF0089B5998DB6B19C2F972490320456621D966DA7E58E30BCDF887F62AF18F8A7529F4BF07DB788F58F0DE9DB24961861B8B9B7B495C124BEC0510B618F3827E63EB5F8756C557C660555E7960F965EF5D479959EC9BF76CF46A5AA6BEE3F7274E75E8C1D4A8E9D46FDEE65B5B7B5FF000D75373C07F16BC35A1782ACAC7C38F69AD4369A55C7864429A6DCD97DA0C5726E2CE791904F2CB26E7886FD85FCBF3622EE42B9F9E75FFD942F359D63C5DE22F889AE6EF12416A97ED63796575A5C73A4AFE409216B8F2656485E4B7C2796A366FE36C4777D45F0C7E3749FB0A7C23D4BC1EBA3DBE9DE22D735313EB17F731CE9797112A8586DC45B559238FF0078E3E63B9A46391C637FC376FE11FDAEFC47E1DF0D7C54BED22E7E1D6B9F6AB48AE61805B5C699A9DC08D2D5CDC48D288964C491798150F9A6046243E0560F3CC751AD29C28DE82BBE7E64E7256E6BC63156B37B2BA6D6BA6C658D8D585AF0E6A51BB6DB57969BD92B792DB43F3E7E177C308A0F0EB6A51AC9A3EA37FCC3E617791ADD4E159B91B4BB02C0003E5F28FCC4F1E81E04F0D49ABEA1A8C7AF4DA8EA8971A6DD298AD272A6FB6C4C52091D990AC4CEA9E63649DAAC064918FAB3FE0A6DFB202FECDBF0F4FC4DF08FFC555E0D176B06B7A7DC4EC9AA69265902473C52AA98E6B73215465310923DF1B7EF10B489F2C7C20F8B5A078B2DEE2D34F8F525D53527B7B68ED760B99A74690011C0231BA6632794028456E8003B8D7D0E5F9CC734A0B30C24B9A127BAE9B3B3EA9DACF5E8D35A345E02BE5F528AA749EC9EFA3F3F2327C01E05FB3F8B5ECF4AF0E6ADA06A3ABDB5C59992C6EAE0411C0623F699192612B3AA425CFCB22E01C96C5747F153F6D394FED017C9E1DB3B7F0D784ECA3B4D3E3D174D94AC082DE1489A60542EE92464676385DC1C02323757D33F07BF67AF1DE8F3E93E22B8D33C49E1A9ADCDE59B68D3D9C56571676534637F991B4C6E4CD3310926F897E4840F94055AE5FC6FFB23F817C47E3EBCF125F5B24FAA6A1309EEDDA466420631C671BBD4E327DE9E1F19431D5A55E3353E44E3752BEADFBD75B7D9567AF5B69BCD1C461E0AD42CD7937F75B6ECFF00AD7D8FC57FB55DBFC71F86EDA3E8BE17B4B6B0B88937CDF66482DB4E7528DB614032D2E46DDEC4BE0924935BBFB17EA93EB5F19F43B39BFD725C85E7A822A8F807F6B0D2FE01787E6D26DFC37AFE9BAB5BCEFBF50B5B710C57101198E38EE118B8523964450DBD9C9CE108EA7F63EF1E6B5F1DFF00698D2FC47A9692D613C93ECB7850C92C8F6F18389642E37924B1E580E36E706BC5E19C3FD53133C2D3A328D3526F9E72BF33D2ED5EEEDD9DCF16719D08D4A518351B37CCDDEEFD3FCBE67D2BFF00044AB25D3AD7E244318DB129D319507DD5C9BDC9F4E7FA57DE15F0DFFC118E07B37F89904AAD1CD0C9A6ABA1032A7FD2FBE7FF00ADDC67271F7257EE193B4F054DC76B7EA7E452FE24DAFE697FE94C2BF35FFE0AFF00A45AEBBFB5868B05D431CD0AF806FDD83A02A7F73A9E39FC1B23A1C8F418FD28AFCA8FF82DB7C43B1F007EDB7E1B6D42E23B68EFBC0325923B9DA0BCD35FC4AB9F53BCE077FAE0573F104AD837EABF33A72FBFD76828EEE7131BC0BF0B47823C1DA6C33693E0BB3D2EFAC6195DEFEC06A5A95E89115FCCDAD13C76F11CFCA8ACB2040A594312EDE67F16F44F19FC3BD7E6BEF03F8BA7F09EA7A842E522B29127B3BF895B2893412A9DC232F80594300E707079F3D8350F1778AECA1B6D375EF156A96F6F12C305B24CD3471228C2A7CABBB000C6189AB567F017C5FACDBB2FFC21BE22B1BC29B1352B0B7115D46339E188E573D558153E9D2BF07CA723CCBDBD5963E71A94A775C9C8DA6BA5DC9FDFA34F6492B5BF58C3E16B52C44AAE22A27196E9B6FF0007A23C57F68FF1D7C40F8B5A7C7078AB49D25355D258BC77D0EE8DDC6086455CE30DC1E4019031EB5E03A67ED03AD7C2FB9B8863DAD0C81A3B9B3B98F7452A9E08643C73DC1183E95F722FEC4BF15A6F0E3349AA6A9AE4F25D86369ABE9C3CB1687E538C65D6546CB6D49515D768F972593CCFF686FF00824A78E7C6A350BAD220BAB5BAB39E58ACAD66B2693FB423C66372F1B308871B4E4B90C49C14C39FBACB720586A31A74E9A8D3B689595BAE8BA7A1DB4B38C0E1E0F0D45F57A5A4D5DEFBF4F4D3AE8794E9BFF053D373E03D43C2BAD9BCB7F0F6A9118EE34F9A15D42C81200CA067478C7038F9C71F745697ECEBFB6BFC3FFD9DBC756BE29F07DBFC363AEDAC171044CFA7C96335BACD1344E639667458D8ABB2931B0CAB32F463553C43FF000439F146A37376B2789EF6DFF75691DA17D0A489249648E059A595E57431C514CD724A84690C50A119670072A3FE083FE208755B88752F1742D6E74D1342EB1FD8E44B8792DB60651F68DCAB04D3BB2FC85A4B5310655759ABBA5C2F8274AA529251854BA9256B4AEACEFDEEB73C2FED4A3172852A29A96AD59ABFE47BA6B3FF000523F1EFC4570BE1DD43C19A34C5B22E2DB5CB3C203FF5D2765FEBE956FE12A497DAE47AC6B5E243E35D7669DEEE2B3B093769F05C3B12D33BF1E749927048DABDBB11E2DE06FF008216687A05D44DE25F1978935968ED2179A2D274B11F9972D7C23912291FCC52896A1A425C265B25779090CDED7E05F817E2EF821E1AB8F0C7C33F83FE2082CE396489B549619AEA6BFF00988330C226DDE002324E0103B62BCBA7C2F97E510E5C053493D1F2A4B6EED5DBF99E8E535A9D5BC29538D2EEF5BFDF2FD19F537C1AF81E3C6B1DB6BDE39D5AE348D06605E182C22135D5E202798C3108A9C11E636413D158062BE89F057E28C1E07FDA7F4EF08FC3DD63499FC1BA83C5A86A32EAB16DD561215D1207923223911591DD762AE7CD3C9AF86ECFF63CFDA0BC4D6ABF6CD13C4765631A796897D74CF1C49D76A4597651EC1457D51FB1E7FC13C2D7E18EA7E00F8930F8BEEFC41A859C916A12E997B60DA75BDA367CBB98D559D899932CA3CD54DFB41F949515F315BDAD0C5AA99D555EC2535CB0E46A29A69AE696BAE97F7AC9BF4B278EC3D1A6A52AB5D4934D28A57D7A5DDED7F5B1F4D7FC10DF56BAD77C35E3DBEBD65FB5DE0D3A599562F28212F7BB7E4E767C810952CC41CF4E33F7A57C09FF000445947F6E7C608776E6B6B9D31091F5BD3FD6BEFBAFDC323E5581A718AB24AD6F4763F1B94939CF95597349597949A0AF8CFF00E0A47FF0499B7FDBE7E26E97E2493C456963F63D223D227B0BCB2F3E095639E59925560721C199874EC0820D7D985B149B8576E230D4EBC3D9D5575BFDDE84B8DDA926D34D34D369A6B669AD4FCEAF087FC114BC69E02D2E3B5D1FE3278AAC238C055897C41A9496C8063858A4919546370C0E991E983B4BFF000490F88ECBFBCF8C5A931DC0EEFB6DF2923BF025C67A57DF7B851B85737F64E17F97F17FE6754B198996F525FF00813FF33F3EEF3FE08F9F112E7FE6B16A19F7BBBFFE92D447FE08D1E38E73F1835A6F43FDA9A871CFA79BE99FE7ED5FA13B851B8547F63E12F7E5FC5FF991F58C45EFED67FF00814BFCCFCFA3FF00046BF181FF009AB1AE9E83FE4317FE9CF573D4F3EDEFD6A183FE08D3E3B888CFC5CBC603B7DAF501FF00B5ABF42F70A370AAFEC8C2DEFCBF8B1FD6B11FF3F67FF814BFCCFCFB4FF823B78F51571F17AF8E17077DD5F3027D71E68F6A93FE1D01E3CE4FFC2D562703197BC3CE39EB2773F957E806E146E155FD9785FE51FD6B11FF003F25FF00813FF33E04B6FF00824478F2DDBE5F8A800CFA5D6EC71C67CCEBD79C77E9C566CFFF000468F88114EF369FF19B56D1E690E5CD95EDFC68FF002E0E63F3761CF7C8E7A1CE063F43770A370ACEA64F839C5C270BA62962B10D72BA92B7F89FF99F35FF00C13A3F600B8FD8674BF161BEF153F8A750F164F6D24B27D97C84B748164080724B13E6B1278E83AF24FD2B49B851B857761F0F4E85354A92B247353A6A0B963E7E7BEAFF0013FFD9, CAST(N'2021-04-02' AS Date), N'5', N'df', 8, 0, 0)
INSERT [dbo].[Urunler] ([id], [Barkod], [UrunAdi], [SatisFiyat], [BirimAlisFiyati], [BirimTipID], [SatisFiyati_2], [SatisFiyati_3], [Kdv], [KdvOrani], [KategoriID], [StokMiktari], [KritikStokMiktari], [TedarikciID], [Ozel_Kod1], [Ozel_Kod2], [UrunResmi], [SonKullanmaTarihi], [Cinsi], [Sinifi], [BedenNo], [Sonlandi], [Aktif]) VALUES (7, N'1234567899999', N'Portakal', 25.0000, 10.0000, 1, 2.0000, 2.0000, 0.2500, 0.01, 4, 11, 45, 3, 6, 8, 0xFFD8FFE000104A46494600010101006000600000FFE100224578696600004D4D002A00000008000101120003000000010001000000000000FFDB0043000201010201010202020202020202030503030303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108006F006F03012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA28AF90FFE0A03FF000540BDFD8CFE31683E09D1FC07FF000976A5AC6943569269355FB1C7046D3490A22A889CBB168DC9E571F2FDECF1CB8DC750C25275F112E58AEBAF5F4397198DA384A4EBE225CB15BBD7AE9D0FAF28AF80B4AFF82B7FC58D5605923FD9DF5F2AD8C18DEEE65C7AEE5B63C73F5E0F078CCE7FE0ACBF16016DDFB3BF8854738C9BEC93C63FE5D381D7DF8E9CD79B1E24CB5ABAAABF1FF23CF8F1165CD5D555F8FF0091F7B515F04B7FC159FE2B03C7ECF9AE9E87937A0F6FFA75EB4B1FFC1587E2D4A0E3F678F100E401FF001FA73EFF00F1EBD074F5E9C7A3FF0058F2DFF9FABF1FF21FFAC197FF00CFD5F89F7AD15F075B7FC1567E2CCB71B65FD9EFC411C393F3AADF3311CE3E5FB281CF1DF8F7AB4FFF000552F89AB1FCBF017C4ACD9C00D05EAFE3FEA0FB71F5F4198FF59B2DFF009F9F83FF00227FD62CBBFE7E7E0FFC8FB9E8AF84E7FF0082AB7C5301BC9FD9FF00C44FCFCA5D6F57233DF16C71C7D7D3DE923FF82AAFC57643FF0018F7E21DDB7B7DB08278FF00A76E9D79F61C73C1FEB365B7B7B4FC1FF90E3C4397BFF979F83FF23EEDA2BE171FF054BF8B0F27CBFB3DF899A3E39F2EF33EFC7D9FFAD66F8BBFE0AFBF107C236FE65CFC10D4AD940CB1BEBA96CC0FA178B9A25C4D96455E5557DCFF00C825C4597462E72AAADF3FF23EFAA2BE72FF00827A7EDEF27EDC5A1F8A24BCF0A9F0AEA1E17B88219625BEFB5C770B3090AB03B10A9062705707B1CF240FA36BD7C2E2A9622946BD1778CB54FB9E9E1B134F114A35A8BBC65AA615F987FF000584D1E3D53F6DDD1772E5A3F87AD20E3A79777752FF00EC95FA795F9A9FF0560E7F6EAD1D7D7E1ADD7FE877F5F39C6914F28A89F97E68F9EE318A9653522FCBF347C9FA7C925836EB7924B76FEF44C633F98AD51E34D71540FEDCD6B0BD3FD3A5FF00E2AB26DFFD5D487A57F332A928FC2CFE678D59AD9B3E86FD923E063FC6EF0AEADA9EB7AA6B92799A9C1A3694835D7B3F3E665DD390DB5FE74F36D76EE1B3F78DC3918127C77F06787F4AD23584F0DF8CB4BD2A4F0E6BEBA4F9F26A9AAC5F6A85E3B82BE634FB9259C9B72C4C211179C6E592311F45FB277ED03E17F047C26F0ED9B6A5A4D8EB5E1DB9BBB9B8B5D4666B65BA99E591E1B847D85182A9814AE77E6DC8C00558F9CF886F3C199F088B5F1A68979278775D975EBE8AEB4DD44DBEA1316B6090EE58373C423B6C16214E67971C618FE8F81A796FD4210AD285E4B56DA52BBB3D1B7BA6DA7BE91B687EFD9160785E59152A78EAF4D54A915CD2E68A9A6DB9357777171D23B796C43E0BFD9D7E2778F357D4AC74FD63FD274DD62E34275975C64135D40504AB19CFCCAA648FE6E01DC319E71DC6ABFB067C54D1BC227549BC67A5798BB11AD3FB5AED5848D82C824318898A0C92558AF1C1395CF47F097F683F863E00D434C0FE265B4B7B7B79DE70961A8DC6FBD9A4964798BB43BD94968949C16DB1F0BDABD3BC75FB7D7C2ED6B44D2AC63F1425C7D937BBF95A4EA08A49707196811B9181903D79ACF0F96E50A8B756BA72B7FCFD56BE9B6AB6BEF6D6DB1E6E5FC37C2AB0F178CC72736BDEB568D937FCBA26EDB6A9A7BDBA1F338FD99BC6D6BA5C775A9F8F74DB05B9B97B5B744D42F6F1E774119600411BE31E6C6307925B8CE0D703F10344D7BC0D059DC2F8B1B5AD3AFA49A08AEEC6F2E9544D108DA489D2658DD5956689B3B4A9120DAC4860BF4D7C4DFDABFE1EFC4BD7B43BA9FC67AA598D26CCDB472C367A83DC5BDC1691A3B8123A973B24789D8EEDC5623B4676A9F9CBE2FEA1A2CDE0BF0E59697E24D275A9B4FBBBF69E2D3ED6F618C2CDE4324EE6E2DE1DD2B6C68DB1BB096F07BD79B9A617034B0F3961AAA9356B5A69B7AC6FA733EEF65D3D4F3F8A327E19C3E533AD9662B9EB45C6CBDAA6DA72B3D34BD97F2AD37DAE7113EBBA8DD2ED9352D4241E8F75237F335D1FECF1E1AB7F10FC78F0AC17112491FF0068C5349919DE10EFC1F5E5457275DFFECB8E22F8EBA1B37F0484E7D3835F2F81973E269A9EBEF2FCCFCB72FBCF17494DDD732FCD1F4DFF00C109EC7C8D0FE255C60FFA54FA7B93EA7379FE7F0AFBFABE33FF0082437849BC07A078934A9976DE43A669535D29EA92CB26A12321F75DDB3FE015F6657F5070E5274F2BA107BA8A3FA8F25C2CB0F80A3466AD28C6375D9DB55F7857E6A7FC15754C9FB77E8EA3AFFC2B7B93F86FD44FF4AFD2BAFCE8FF00829FF8726D77F6DC82E2D57CD974BF865733CF103F3B42CDA9299147708DB7763901C1E8188E2E308B9655512F2FCD1C1C554A5532DA9182BBD1FDCD37F85D9F1DDBFF00AA5FA53EA3B63FB95E739191526DDD5FCBC7F2E9B1E0AF006A9E3EBC9A2D3A1B758ED544973757775159DADA21380D2CD2B2C6809E80B65B04004F15A1E2CF839E22F06F883FB36EB4F59A769ADADE292D278EEADE692E63F32DD5658C942644F980CE76F3D2ABBE8FA86A7E14D26D6C6DAE6EA09E692668E08CB869F3B06E03B851804F405BD4D761E021A4FC37B7D12F6FA6D3AE24D3AF6FF50B816B788659248EDD52DE04C1FBC24DEDBF180586091835E8470D0B28C93BE8DBBE9676E96E975D7A33ECB0DC394E528D3ACA5156A729546ED14A6A2EC972BBF2A9A6DDFECB7657471775E09B9BFF0019DC68FA0DAEA3AFCB0B32442CED9E792EBCBF964911101631EE0C41C70B8CF39AE82DFC1578DF0D347B1B64892E3C40D3EBD7B2CD20862B4B0B676B586491DB844F37ED79CFDE26200331507B0D2FE367857C157B25C26B17D797567AE586AF69169B686DA2B8B2B357FB2E94ECECA61447F2DDCAAC8A4F23CC750D579FE27F883E23E9AD7161F0EEFF00519A4B3D30DDDEDC190580B9B3F31BCC38444103CB2B4C627931E66092C06DAE8A785C3ABFBFABBE895FF2BEFB6BDFCB5E8C3E5597AAB38AAB794B995A09CACAFB271E7DD2E5D6FA49BE89CB92BAF8051787FC37AB43A96AD612F8957564D1F4FB2B3696551322BBCFE63145403698886DC42AB396018053E7DAC6990E9C626B799EE22933B6529B56419C0651D769C1233C9183819C0EE3C57E3FD42CEF2EA4B9D4B478AEA6D425D48DAE8CA972D0CF2841266E5B7A80DB14B6D794B10430C1C570579A85C6A6E0CD2C93367E50493827B01DBD80AE7C44A824E308EBB2FBEF77AEFBADBB6C73E6D2CA2851950A149FB4B593EABDE4EEFDE7EF5B9A2EF14EDCBA46CEF0138AFA7BFE09D3FB34EA5E2DF1CD8F8D752B77B7D12CD9858075C7F684A320B8FF00A66841E7A33F033B58541FB247EC31FF0009D5FC1AE78E15ADF4A8C878347DC566BDF43391CC71FF00B03E76EFB07DEFA57E22FED59E19F845E3FD27C0BA2CF637BE31B8458934BB231B7F615B797959678D7FD5AED0A238F196CA9C04E6BEAB86387A4EAC3178AD126ACBABD777E5E5BBF4DFEF3C3CF0DF1556B4731CC20D28EB083DDB5B4A4BA456E93D5F5D3479BFF04CED5D753F8B1F17E347122E9EDA55A120E7E7537C5C7D4312A7DD4D7D7D5F9F3FF0416BC7D43C2BE3EB892592E26B88F4A96496462CF2331BE2CCC4F2589C924F24D7E8357EF592B6F054EFDBF567EAF3BFB49A9749497DD2682BF34FFE0AD7A9CFE15FDB97C2FAF69773AA59788345F035C5CE9F3E9F208E78DC2EA837027230324105704360E412B5FA595F969FF05BDBBB3B1FDAAB456BBB59351593E1FDF22D98DC12621351386C7DE18C8DB9F4FC673BFF00747EABF3475E5E93C5D24D7DA5F99E1D6DFB5D7C25F894593E226876BE01F1049D759F0BDFC125BDCBFF007AE34EC9D84F563072CC7EEAD57B4B3F0BF88757D3D741F1D787754D2F52BB8ECD350984968B6C646C07B84652D0A019259B000049E057CAC9F14353D1E01F645F0FF85A151C25AC09E701F48C120FFBC456BF80FC53ADEBBE26D36FEFADFC47E22D163BA8CDE7DA5FECB69243B86F1BC9DB9DB9C10C082011CD7E2B98E4D85AF19492E59EBAC7BFA6CD9F599CF82BC3599CFEB13C3BA6DBBB707CB7F97C3767BE59FC62F0FF00863E22378453C49A0EAB6DA96AD6FA4DDDCE95A9C573E6432361AE20058232AE0A9690A6095FE1259799F19FED45F0DFE1B7C62FECD9ADFC5DAFF86AD6D58CF22C11E9B712DC1DC1635694944DBF2160431C8718030D563C07E0CF08781F50F1C5F785743D264B3B1D7AC62B3BB92CD1A47B6952F58AF96E0B43137951AECC925A19492159547C9FF1EFE15C7F0C7E236AF66B25B5BE9724E66D3E7B8BA8E20F6F20F3235DCE40675560AD8CE1908F71CF83E1BC1D454DD4949FBBB3F777EAD5AE9EFD55BB686947C22E18A5469AA986E754E3CAB9E537A3F79B69C924EEDBD12B7E5F5F7C09FDAD354F8A8B750F8775CF1959DD69E13CD823BC9D14EEE3F76D1B90C01E0E318C8EC41AE3FC75FB77C7E1FF008C0969E22D3354F1B69FA1DE3C3A8C17FABC8AD70E99564473BD936B75241395C631D7C4BF619FDB4358FD93FE355C6A3E0DD6B46FB76AD62D6178C6C9AE4410096295994C81406DD1A80C378E7243600AF2DF107C4DD2F52D42EEEAE6CF55324D234B7172B72272CCC4E5D838DC589249CC99249E6BD0FF005428B9CA32E6706B48DDAB5F4DD34FD3AA3C1C9FC23C8B0B98D5C5E2A4EAE1DDBD9D29CA528C1FDABEBEF7F754AF6EB76933EC7F03FED4DE14F1DF853C4727F64EAF67E2486569F4BD3EDAE524B4485DC2A44D24A15E428580246D760576AB9DDB7B1F84FF00B49F8374AD12EF57BED5A1D175ED22ECC53E917763742F1200ABBAE77B44B1C6031914A310E0464FCD9C57C71F089ECFE255BDBE97A14924F7D7D7EB14BF698D60E5B688C11B982A8CC84B640C139185CD7D15F04FC45AC7887E10F8A60D0BC39E03D7AE356D7DB583AA6AFA5CF0DE5FC24148C17F31B679D1812B02A41770C40C05112E1DC3E1AD3A29A9732DDA7A75F893E9DACFB3BEA7D750F0EF8668E27EB584C1C232D1F3474E5D97BB7BC55FC95F7B33EA68BF6E8D6FC59E1CF27C07AAE92B66570F7969729737447B1071167E858638615CEFECC7E17D1EF7F695D2352D4742B75D5EE2E2495F518C15B896460C59DA41F3331249258924E49AF94ADBE18782FE22F8A5ACE6D1354F859E37872E834FB8F2E39B1D5E22B8465FF742115ED7FB271F89FF0008FF00680F0DDBEA17D67E3AF0DB5C04370EBE56A16EBCE093FC5F8EE3EE2BE870D14AA46DDD1F4957034A8509C68E974FD5E9DFAFDE7DDBFF000442D2A1D23C37E388E192699045A62ACD2A80F300D7D82480371ED9C7507D2BEEFAF823FE085FE20B3F14F83FC71A958ACB1DADF26973224836BA645D8208EC410411CF23D315F7BD7E91947FB9C3D3F53F119E95277FE697FE94C2BF30BFE0B15E09D4FE29FEDCBE12F0D6931DD4D79A9780EF225586232C80BA6A68022039662D81818CE064E3A7E9ED7E677FC162FE245C7C22FDAEFC3FE22B30CF7DA7F80AF9A04591A3662135066F9874CAAB0CE73F4AE6E22725819B82BBD2CBBEBB7CCE8CBE55238BA4E92BCB995BD7A1F0578C7C31E15FD98669B4DD412DF49F115A131CCBA85B1BCD5D241FF4C48FDC9FA845F7EF5E97A8FEC7BE07F17FECD1A2FC45F1D7C42D52EB4FF1569C2EE18CDD2411E9E5B70114A8A773B0C61963914060C99CAE4F15FB4778E3C1FF00B725A785FC4EB2DF687E3A4B98349BF96F2C25FF0089B5998DB6B19C2F972490320456621D966DA7E58E30BCDF887F62AF18F8A7529F4BF07DB788F58F0DE9DB24961861B8B9B7B495C124BEC0510B618F3827E63EB5F8756C557C660555E7960F965EF5D479959EC9BF76CF46A5AA6BEE3F7274E75E8C1D4A8E9D46FDEE65B5B7B5FF000D75373C07F16BC35A1782ACAC7C38F69AD4369A55C7864429A6DCD97DA0C5726E2CE791904F2CB26E7886FD85FCBF3622EE42B9F9E75FFD942F359D63C5DE22F889AE6EF12416A97ED63796575A5C73A4AFE409216B8F2656485E4B7C2796A366FE36C4777D45F0C7E3749FB0A7C23D4BC1EBA3DBE9DE22D735313EB17F731CE9797112A8586DC45B559238FF0078E3E63B9A46391C637FC376FE11FDAEFC47E1DF0D7C54BED22E7E1D6B9F6AB48AE61805B5C699A9DC08D2D5CDC48D288964C491798150F9A6046243E0560F3CC751AD29C28DE82BBE7E64E7256E6BC63156B37B2BA6D6BA6C658D8D585AF0E6A51BB6DB57969BD92B792DB43F3E7E177C308A0F0EB6A51AC9A3EA37FCC3E617791ADD4E159B91B4BB02C0003E5F28FCC4F1E81E04F0D49ABEA1A8C7AF4DA8EA8971A6DD298AD272A6FB6C4C52091D990AC4CEA9E63649DAAC064918FAB3FE0A6DFB202FECDBF0F4FC4DF08FFC555E0D176B06B7A7DC4EC9AA69265902473C52AA98E6B73215465310923DF1B7EF10B489F2C7C20F8B5A078B2DEE2D34F8F525D53527B7B68ED760B99A74690011C0231BA6632794028456E8003B8D7D0E5F9CC734A0B30C24B9A127BAE9B3B3EA9DACF5E8D35A345E02BE5F528AA749EC9EFA3F3F2327C01E05FB3F8B5ECF4AF0E6ADA06A3ABDB5C59992C6EAE0411C0623F699192612B3AA425CFCB22E01C96C5747F153F6D394FED017C9E1DB3B7F0D784ECA3B4D3E3D174D94AC082DE1489A60542EE92464676385DC1C02323757D33F07BF67AF1DE8F3E93E22B8D33C49E1A9ADCDE59B68D3D9C56571676534637F991B4C6E4CD3310926F897E4840F94055AE5FC6FFB23F817C47E3EBCF125F5B24FAA6A1309EEDDA466420631C671BBD4E327DE9E1F19431D5A55E3353E44E3752BEADFBD75B7D9567AF5B69BCD1C461E0AD42CD7937F75B6ECFF00AD7D8FC57FB55DBFC71F86EDA3E8BE17B4B6B0B88937CDF66482DB4E7528DB614032D2E46DDEC4BE0924935BBFB17EA93EB5F19F43B39BFD725C85E7A822A8F807F6B0D2FE01787E6D26DFC37AFE9BAB5BCEFBF50B5B710C57101198E38EE118B8523964450DBD9C9CE108EA7F63EF1E6B5F1DFF00698D2FC47A9692D613C93ECB7850C92C8F6F18389642E37924B1E580E36E706BC5E19C3FD53133C2D3A328D3526F9E72BF33D2ED5EEEDD9DCF16719D08D4A518351B37CCDDEEFD3FCBE67D2BFF00044AB25D3AD7E244318DB129D319507DD5C9BDC9F4E7FA57DE15F0DFFC118E07B37F89904AAD1CD0C9A6ABA1032A7FD2FBE7FF00ADDC67271F7257EE193B4F054DC76B7EA7E452FE24DAFE697FE94C2BF35FFE0AFF00A45AEBBFB5868B05D431CD0AF806FDD83A02A7F73A9E39FC1B23A1C8F418FD28AFCA8FF82DB7C43B1F007EDB7E1B6D42E23B68EFBC0325923B9DA0BCD35FC4AB9F53BCE077FAE0573F104AD837EABF33A72FBFD76828EEE7131BC0BF0B47823C1DA6C33693E0BB3D2EFAC6195DEFEC06A5A95E89115FCCDAD13C76F11CFCA8ACB2040A594312EDE67F16F44F19FC3BD7E6BEF03F8BA7F09EA7A842E522B29127B3BF895B2893412A9DC232F80594300E707079F3D8350F1778AECA1B6D375EF156A96F6F12C305B24CD3471228C2A7CABBB000C6189AB567F017C5FACDBB2FFC21BE22B1BC29B1352B0B7115D46339E188E573D558153E9D2BF07CA723CCBDBD5963E71A94A775C9C8DA6BA5DC9FDFA34F6492B5BF58C3E16B52C44AAE22A27196E9B6FF0007A23C57F68FF1D7C40F8B5A7C7078AB49D25355D258BC77D0EE8DDC6086455CE30DC1E4019031EB5E03A67ED03AD7C2FB9B8863DAD0C81A3B9B3B98F7452A9E08643C73DC1183E95F722FEC4BF15A6F0E3349AA6A9AE4F25D86369ABE9C3CB1687E538C65D6546CB6D49515D768F972593CCFF686FF00824A78E7C6A350BAD220BAB5BAB39E58ACAD66B2693FB423C66372F1B308871B4E4B90C49C14C39FBACB720586A31A74E9A8D3B689595BAE8BA7A1DB4B38C0E1E0F0D45F57A5A4D5DEFBF4F4D3AE8794E9BFF053D373E03D43C2BAD9BCB7F0F6A9118EE34F9A15D42C81200CA067478C7038F9C71F745697ECEBFB6BFC3FFD9DBC756BE29F07DBFC363AEDAC171044CFA7C96335BACD1344E639667458D8ABB2931B0CAB32F463553C43FF000439F146A37376B2789EF6DFF75691DA17D0A489249648E059A595E57431C514CD724A84690C50A119670072A3FE083FE208755B88752F1742D6E74D1342EB1FD8E44B8792DB60651F68DCAB04D3BB2FC85A4B5310655759ABBA5C2F8274AA529251854BA9256B4AEACEFDEEB73C2FED4A3172852A29A96AD59ABFE47BA6B3FF000523F1EFC4570BE1DD43C19A34C5B22E2DB5CB3C203FF5D2765FEBE956FE12A497DAE47AC6B5E243E35D7669DEEE2B3B093769F05C3B12D33BF1E749927048DABDBB11E2DE06FF008216687A05D44DE25F1978935968ED2179A2D274B11F9972D7C23912291FCC52896A1A425C265B25779090CDED7E05F817E2EF821E1AB8F0C7C33F83FE2082CE396489B549619AEA6BFF00988330C226DDE002324E0103B62BCBA7C2F97E510E5C053493D1F2A4B6EED5DBF99E8E535A9D5BC29538D2EEF5BFDF2FD19F537C1AF81E3C6B1DB6BDE39D5AE348D06605E182C22135D5E202798C3108A9C11E636413D158062BE89F057E28C1E07FDA7F4EF08FC3DD63499FC1BA83C5A86A32EAB16DD561215D1207923223911591DD762AE7CD3C9AF86ECFF63CFDA0BC4D6ABF6CD13C4765631A796897D74CF1C49D76A4597651EC1457D51FB1E7FC13C2D7E18EA7E00F8930F8BEEFC41A859C916A12E997B60DA75BDA367CBB98D559D899932CA3CD54DFB41F949515F315BDAD0C5AA99D555EC2535CB0E46A29A69AE696BAE97F7AC9BF4B278EC3D1A6A52AB5D4934D28A57D7A5DDED7F5B1F4D7FC10DF56BAD77C35E3DBEBD65FB5DE0D3A599562F28212F7BB7E4E767C810952CC41CF4E33F7A57C09FF000445947F6E7C608776E6B6B9D31091F5BD3FD6BEFBAFDC323E5581A718AB24AD6F4763F1B94939CF95597349597949A0AF8CFF00E0A47FF0499B7FDBE7E26E97E2493C456963F63D223D227B0BCB2F3E095639E59925560721C199874EC0820D7D985B149B8576E230D4EBC3D9D5575BFDDE84B8DDA926D34D34D369A6B669AD4FCEAF087FC114BC69E02D2E3B5D1FE3278AAC238C055897C41A9496C8063858A4919546370C0E991E983B4BFF000490F88ECBFBCF8C5A931DC0EEFB6DF2923BF025C67A57DF7B851B85737F64E17F97F17FE6754B198996F525FF00813FF33F3EEF3FE08F9F112E7FE6B16A19F7BBBFFE92D447FE08D1E38E73F1835A6F43FDA9A871CFA79BE99FE7ED5FA13B851B8547F63E12F7E5FC5FF991F58C45EFED67FF00814BFCCFCFA3FF00046BF181FF009AB1AE9E83FE4317FE9CF573D4F3EDEFD6A183FE08D3E3B888CFC5CBC603B7DAF501FF00B5ABF42F70A370AAFEC8C2DEFCBF8B1FD6B11FF3F67FF814BFCCFCFB4FF823B78F51571F17AF8E17077DD5F3027D71E68F6A93FE1D01E3CE4FFC2D562703197BC3CE39EB2773F957E806E146E155FD9785FE51FD6B11FF003F25FF00813FF33E04B6FF00824478F2DDBE5F8A800CFA5D6EC71C67CCEBD79C77E9C566CFFF000468F88114EF369FF19B56D1E690E5CD95EDFC68FF002E0E63F3761CF7C8E7A1CE063F43770A370ACEA64F839C5C270BA62962B10D72BA92B7F89FF99F35FF00C13A3F600B8FD8674BF161BEF153F8A750F164F6D24B27D97C84B748164080724B13E6B1278E83AF24FD2B49B851B857761F0F4E85354A92B247353A6A0B963E7E7BEAFF0013FFD9, CAST(N'2021-04-02' AS Date), N'5', N'd', 5, 0, 1)
INSERT [dbo].[Urunler] ([id], [Barkod], [UrunAdi], [SatisFiyat], [BirimAlisFiyati], [BirimTipID], [SatisFiyati_2], [SatisFiyati_3], [Kdv], [KdvOrani], [KategoriID], [StokMiktari], [KritikStokMiktari], [TedarikciID], [Ozel_Kod1], [Ozel_Kod2], [UrunResmi], [SonKullanmaTarihi], [Cinsi], [Sinifi], [BedenNo], [Sonlandi], [Aktif]) VALUES (8, N'1234567891011', N'Ulker Cikolata', 5.0000, 20.0000, 1, 2.0000, 2.0000, 0.0500, 0.01, 1, 25, 14, 2, 1, 2, 0xFFD8FFE000104A46494600010101006000600000FFE100224578696600004D4D002A00000008000101120003000000010001000000000000FFDB0043000201010201010202020202020202030503030303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108006F006F03012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA28AF90FFE0A03FF000540BDFD8CFE31683E09D1FC07FF000976A5AC6943569269355FB1C7046D3490A22A889CBB168DC9E571F2FDECF1CB8DC750C25275F112E58AEBAF5F4397198DA384A4EBE225CB15BBD7AE9D0FAF28AF80B4AFF82B7FC58D5605923FD9DF5F2AD8C18DEEE65C7AEE5B63C73F5E0F078CCE7FE0ACBF16016DDFB3BF8854738C9BEC93C63FE5D381D7DF8E9CD79B1E24CB5ABAAABF1FF23CF8F1165CD5D555F8FF0091F7B515F04B7FC159FE2B03C7ECF9AE9E87937A0F6FFA75EB4B1FFC1587E2D4A0E3F678F100E401FF001FA73EFF00F1EBD074F5E9C7A3FF0058F2DFF9FABF1FF21FFAC197FF00CFD5F89F7AD15F075B7FC1567E2CCB71B65FD9EFC411C393F3AADF3311CE3E5FB281CF1DF8F7AB4FFF000552F89AB1FCBF017C4ACD9C00D05EAFE3FEA0FB71F5F4198FF59B2DFF009F9F83FF00227FD62CBBFE7E7E0FFC8FB9E8AF84E7FF0082AB7C5301BC9FD9FF00C44FCFCA5D6F57233DF16C71C7D7D3DE923FF82AAFC57643FF0018F7E21DDB7B7DB08278FF00A76E9D79F61C73C1FEB365B7B7B4FC1FF90E3C4397BFF979F83FF23EEDA2BE171FF054BF8B0F27CBFB3DF899A3E39F2EF33EFC7D9FFAD66F8BBFE0AFBF107C236FE65CFC10D4AD940CB1BEBA96CC0FA178B9A25C4D96455E5557DCFF00C825C4597462E72AAADF3FF23EFAA2BE72FF00827A7EDEF27EDC5A1F8A24BCF0A9F0AEA1E17B88219625BEFB5C770B3090AB03B10A9062705707B1CF240FA36BD7C2E2A9622946BD1778CB54FB9E9E1B134F114A35A8BBC65AA615F987FF000584D1E3D53F6DDD1772E5A3F87AD20E3A79777752FF00EC95FA795F9A9FF0560E7F6EAD1D7D7E1ADD7FE877F5F39C6914F28A89F97E68F9EE318A9653522FCBF347C9FA7C925836EB7924B76FEF44C633F98AD51E34D71540FEDCD6B0BD3FD3A5FF00E2AB26DFFD5D487A57F332A928FC2CFE678D59AD9B3E86FD923E063FC6EF0AEADA9EB7AA6B92799A9C1A3694835D7B3F3E665DD390DB5FE74F36D76EE1B3F78DC3918127C77F06787F4AD23584F0DF8CB4BD2A4F0E6BEBA4F9F26A9AAC5F6A85E3B82BE634FB9259C9B72C4C211179C6E592311F45FB277ED03E17F047C26F0ED9B6A5A4D8EB5E1DB9BBB9B8B5D4666B65BA99E591E1B847D85182A9814AE77E6DC8C00558F9CF886F3C199F088B5F1A68979278775D975EBE8AEB4DD44DBEA1316B6090EE58373C423B6C16214E67971C618FE8F81A796FD4210AD285E4B56DA52BBB3D1B7BA6DA7BE91B687EFD9160785E59152A78EAF4D54A915CD2E68A9A6DB9357777171D23B796C43E0BFD9D7E2778F357D4AC74FD63FD274DD62E34275975C64135D40504AB19CFCCAA648FE6E01DC319E71DC6ABFB067C54D1BC227549BC67A5798BB11AD3FB5AED5848D82C824318898A0C92558AF1C1395CF47F097F683F863E00D434C0FE265B4B7B7B79DE70961A8DC6FBD9A4964798BB43BD94968949C16DB1F0BDABD3BC75FB7D7C2ED6B44D2AC63F1425C7D937BBF95A4EA08A49707196811B9181903D79ACF0F96E50A8B756BA72B7FCFD56BE9B6AB6BEF6D6DB1E6E5FC37C2AB0F178CC72736BDEB568D937FCBA26EDB6A9A7BDBA1F338FD99BC6D6BA5C775A9F8F74DB05B9B97B5B744D42F6F1E774119600411BE31E6C6307925B8CE0D703F10344D7BC0D059DC2F8B1B5AD3AFA49A08AEEC6F2E9544D108DA489D2658DD5956689B3B4A9120DAC4860BF4D7C4DFDABFE1EFC4BD7B43BA9FC67AA598D26CCDB472C367A83DC5BDC1691A3B8123A973B24789D8EEDC5623B4676A9F9CBE2FEA1A2CDE0BF0E59697E24D275A9B4FBBBF69E2D3ED6F618C2CDE4324EE6E2DE1DD2B6C68DB1BB096F07BD79B9A617034B0F3961AAA9356B5A69B7AC6FA733EEF65D3D4F3F8A327E19C3E533AD9662B9EB45C6CBDAA6DA72B3D34BD97F2AD37DAE7113EBBA8DD2ED9352D4241E8F75237F335D1FECF1E1AB7F10FC78F0AC17112491FF0068C5349919DE10EFC1F5E5457275DFFECB8E22F8EBA1B37F0484E7D3835F2F81973E269A9EBEF2FCCFCB72FBCF17494DDD732FCD1F4DFF00C109EC7C8D0FE255C60FFA54FA7B93EA7379FE7F0AFBFABE33FF0082437849BC07A078934A9976DE43A669535D29EA92CB26A12321F75DDB3FE015F6657F5070E5274F2BA107BA8A3FA8F25C2CB0F80A3466AD28C6375D9DB55F7857E6A7FC15754C9FB77E8EA3AFFC2B7B93F86FD44FF4AFD2BAFCE8FF00829FF8726D77F6DC82E2D57CD974BF865733CF103F3B42CDA9299147708DB7763901C1E8188E2E308B9655512F2FCD1C1C554A5532DA9182BBD1FDCD37F85D9F1DDBFF00AA5FA53EA3B63FB95E739191526DDD5FCBC7F2E9B1E0AF006A9E3EBC9A2D3A1B758ED544973757775159DADA21380D2CD2B2C6809E80B65B04004F15A1E2CF839E22F06F883FB36EB4F59A769ADADE292D278EEADE692E63F32DD5658C942644F980CE76F3D2ABBE8FA86A7E14D26D6C6DAE6EA09E692668E08CB869F3B06E03B851804F405BD4D761E021A4FC37B7D12F6FA6D3AE24D3AF6FF50B816B788659248EDD52DE04C1FBC24DEDBF180586091835E8470D0B28C93BE8DBBE9676E96E975D7A33ECB0DC394E528D3ACA5156A729546ED14A6A2EC972BBF2A9A6DDFECB7657471775E09B9BFF0019DC68FA0DAEA3AFCB0B32442CED9E792EBCBF964911101631EE0C41C70B8CF39AE82DFC1578DF0D347B1B64892E3C40D3EBD7B2CD20862B4B0B676B586491DB844F37ED79CFDE26200331507B0D2FE367857C157B25C26B17D797567AE586AF69169B686DA2B8B2B357FB2E94ECECA61447F2DDCAAC8A4F23CC750D579FE27F883E23E9AD7161F0EEFF00519A4B3D30DDDEDC190580B9B3F31BCC38444103CB2B4C627931E66092C06DAE8A785C3ABFBFABBE895FF2BEFB6BDFCB5E8C3E5597AAB38AAB794B995A09CACAFB271E7DD2E5D6FA49BE89CB92BAF8051787FC37AB43A96AD612F8957564D1F4FB2B3696551322BBCFE63145403698886DC42AB396018053E7DAC6990E9C626B799EE22933B6529B56419C0651D769C1233C9183819C0EE3C57E3FD42CEF2EA4B9D4B478AEA6D425D48DAE8CA972D0CF2841266E5B7A80DB14B6D794B10430C1C570579A85C6A6E0CD2C93367E50493827B01DBD80AE7C44A824E308EBB2FBEF77AEFBADBB6C73E6D2CA2851950A149FB4B593EABDE4EEFDE7EF5B9A2EF14EDCBA46CEF0138AFA7BFE09D3FB34EA5E2DF1CD8F8D752B77B7D12CD9858075C7F684A320B8FF00A66841E7A33F033B58541FB247EC31FF0009D5FC1AE78E15ADF4A8C878347DC566BDF43391CC71FF00B03E76EFB07DEFA57E22FED59E19F845E3FD27C0BA2CF637BE31B8458934BB231B7F615B797959678D7FD5AED0A238F196CA9C04E6BEAB86387A4EAC3178AD126ACBABD777E5E5BBF4DFEF3C3CF0DF1556B4731CC20D28EB083DDB5B4A4BA456E93D5F5D3479BFF04CED5D753F8B1F17E347122E9EDA55A120E7E7537C5C7D4312A7DD4D7D7D5F9F3FF0416BC7D43C2BE3EB892592E26B88F4A96496462CF2331BE2CCC4F2589C924F24D7E8357EF592B6F054EFDBF567EAF3BFB49A9749497DD2682BF34FFE0AD7A9CFE15FDB97C2FAF69773AA59788345F035C5CE9F3E9F208E78DC2EA837027230324105704360E412B5FA595F969FF05BDBBB3B1FDAAB456BBB59351593E1FDF22D98DC12621351386C7DE18C8DB9F4FC673BFF00747EABF3475E5E93C5D24D7DA5F99E1D6DFB5D7C25F894593E226876BE01F1049D759F0BDFC125BDCBFF007AE34EC9D84F563072CC7EEAD57B4B3F0BF88757D3D741F1D787754D2F52BB8ECD350984968B6C646C07B84652D0A019259B000049E057CAC9F14353D1E01F645F0FF85A151C25AC09E701F48C120FFBC456BF80FC53ADEBBE26D36FEFADFC47E22D163BA8CDE7DA5FECB69243B86F1BC9DB9DB9C10C082011CD7E2B98E4D85AF19492E59EBAC7BFA6CD9F599CF82BC3599CFEB13C3BA6DBBB707CB7F97C3767BE59FC62F0FF00863E22378453C49A0EAB6DA96AD6FA4DDDCE95A9C573E6432361AE20058232AE0A9690A6095FE1259799F19FED45F0DFE1B7C62FECD9ADFC5DAFF86AD6D58CF22C11E9B712DC1DC1635694944DBF2160431C8718030D563C07E0CF08781F50F1C5F785743D264B3B1D7AC62B3BB92CD1A47B6952F58AF96E0B43137951AECC925A19492159547C9FF1EFE15C7F0C7E236AF66B25B5BE9724E66D3E7B8BA8E20F6F20F3235DCE40675560AD8CE1908F71CF83E1BC1D454DD4949FBBB3F777EAD5AE9EFD55BB686947C22E18A5469AA986E754E3CAB9E537A3F79B69C924EEDBD12B7E5F5F7C09FDAD354F8A8B750F8775CF1959DD69E13CD823BC9D14EEE3F76D1B90C01E0E318C8EC41AE3FC75FB77C7E1FF008C0969E22D3354F1B69FA1DE3C3A8C17FABC8AD70E99564473BD936B75241395C631D7C4BF619FDB4358FD93FE355C6A3E0DD6B46FB76AD62D6178C6C9AE4410096295994C81406DD1A80C378E7243600AF2DF107C4DD2F52D42EEEAE6CF55324D234B7172B72272CCC4E5D838DC589249CC99249E6BD0FF005428B9CA32E6706B48DDAB5F4DD34FD3AA3C1C9FC23C8B0B98D5C5E2A4EAE1DDBD9D29CA528C1FDABEBEF7F754AF6EB76933EC7F03FED4DE14F1DF853C4727F64EAF67E2486569F4BD3EDAE524B4485DC2A44D24A15E428580246D760576AB9DDB7B1F84FF00B49F8374AD12EF57BED5A1D175ED22ECC53E917763742F1200ABBAE77B44B1C6031914A310E0464FCD9C57C71F089ECFE255BDBE97A14924F7D7D7EB14BF698D60E5B688C11B982A8CC84B640C139185CD7D15F04FC45AC7887E10F8A60D0BC39E03D7AE356D7DB583AA6AFA5CF0DE5FC24148C17F31B679D1812B02A41770C40C05112E1DC3E1AD3A29A9732DDA7A75F893E9DACFB3BEA7D750F0EF8668E27EB584C1C232D1F3474E5D97BB7BC55FC95F7B33EA68BF6E8D6FC59E1CF27C07AAE92B66570F7969729737447B1071167E858638615CEFECC7E17D1EF7F695D2352D4742B75D5EE2E2495F518C15B896460C59DA41F3331249258924E49AF94ADBE18782FE22F8A5ACE6D1354F859E37872E834FB8F2E39B1D5E22B8465FF742115ED7FB271F89FF0008FF00680F0DDBEA17D67E3AF0DB5C04370EBE56A16EBCE093FC5F8EE3EE2BE870D14AA46DDD1F4957034A8509C68E974FD5E9DFAFDE7DDBFF000442D2A1D23C37E388E192699045A62ACD2A80F300D7D82480371ED9C7507D2BEEFAF823FE085FE20B3F14F83FC71A958ACB1DADF26973224836BA645D8208EC410411CF23D315F7BD7E91947FB9C3D3F53F119E95277FE697FE94C2BF30BFE0B15E09D4FE29FEDCBE12F0D6931DD4D79A9780EF225586232C80BA6A68022039662D81818CE064E3A7E9ED7E677FC162FE245C7C22FDAEFC3FE22B30CF7DA7F80AF9A04591A3662135066F9874CAAB0CE73F4AE6E22725819B82BBD2CBBEBB7CCE8CBE55238BA4E92BCB995BD7A1F0578C7C31E15FD98669B4DD412DF49F115A131CCBA85B1BCD5D241FF4C48FDC9FA845F7EF5E97A8FEC7BE07F17FECD1A2FC45F1D7C42D52EB4FF1569C2EE18CDD2411E9E5B70114A8A773B0C61963914060C99CAE4F15FB4778E3C1FF00B725A785FC4EB2DF687E3A4B98349BF96F2C25FF0089B5998DB6B19C2F972490320456621D966DA7E58E30BCDF887F62AF18F8A7529F4BF07DB788F58F0DE9DB24961861B8B9B7B495C124BEC0510B618F3827E63EB5F8756C557C660555E7960F965EF5D479959EC9BF76CF46A5AA6BEE3F7274E75E8C1D4A8E9D46FDEE65B5B7B5FF000D75373C07F16BC35A1782ACAC7C38F69AD4369A55C7864429A6DCD97DA0C5726E2CE791904F2CB26E7886FD85FCBF3622EE42B9F9E75FFD942F359D63C5DE22F889AE6EF12416A97ED63796575A5C73A4AFE409216B8F2656485E4B7C2796A366FE36C4777D45F0C7E3749FB0A7C23D4BC1EBA3DBE9DE22D735313EB17F731CE9797112A8586DC45B559238FF0078E3E63B9A46391C637FC376FE11FDAEFC47E1DF0D7C54BED22E7E1D6B9F6AB48AE61805B5C699A9DC08D2D5CDC48D288964C491798150F9A6046243E0560F3CC751AD29C28DE82BBE7E64E7256E6BC63156B37B2BA6D6BA6C658D8D585AF0E6A51BB6DB57969BD92B792DB43F3E7E177C308A0F0EB6A51AC9A3EA37FCC3E617791ADD4E159B91B4BB02C0003E5F28FCC4F1E81E04F0D49ABEA1A8C7AF4DA8EA8971A6DD298AD272A6FB6C4C52091D990AC4CEA9E63649DAAC064918FAB3FE0A6DFB202FECDBF0F4FC4DF08FFC555E0D176B06B7A7DC4EC9AA69265902473C52AA98E6B73215465310923DF1B7EF10B489F2C7C20F8B5A078B2DEE2D34F8F525D53527B7B68ED760B99A74690011C0231BA6632794028456E8003B8D7D0E5F9CC734A0B30C24B9A127BAE9B3B3EA9DACF5E8D35A345E02BE5F528AA749EC9EFA3F3F2327C01E05FB3F8B5ECF4AF0E6ADA06A3ABDB5C59992C6EAE0411C0623F699192612B3AA425CFCB22E01C96C5747F153F6D394FED017C9E1DB3B7F0D784ECA3B4D3E3D174D94AC082DE1489A60542EE92464676385DC1C02323757D33F07BF67AF1DE8F3E93E22B8D33C49E1A9ADCDE59B68D3D9C56571676534637F991B4C6E4CD3310926F897E4840F94055AE5FC6FFB23F817C47E3EBCF125F5B24FAA6A1309EEDDA466420631C671BBD4E327DE9E1F19431D5A55E3353E44E3752BEADFBD75B7D9567AF5B69BCD1C461E0AD42CD7937F75B6ECFF00AD7D8FC57FB55DBFC71F86EDA3E8BE17B4B6B0B88937CDF66482DB4E7528DB614032D2E46DDEC4BE0924935BBFB17EA93EB5F19F43B39BFD725C85E7A822A8F807F6B0D2FE01787E6D26DFC37AFE9BAB5BCEFBF50B5B710C57101198E38EE118B8523964450DBD9C9CE108EA7F63EF1E6B5F1DFF00698D2FC47A9692D613C93ECB7850C92C8F6F18389642E37924B1E580E36E706BC5E19C3FD53133C2D3A328D3526F9E72BF33D2ED5EEEDD9DCF16719D08D4A518351B37CCDDEEFD3FCBE67D2BFF00044AB25D3AD7E244318DB129D319507DD5C9BDC9F4E7FA57DE15F0DFFC118E07B37F89904AAD1CD0C9A6ABA1032A7FD2FBE7FF00ADDC67271F7257EE193B4F054DC76B7EA7E452FE24DAFE697FE94C2BF35FFE0AFF00A45AEBBFB5868B05D431CD0AF806FDD83A02A7F73A9E39FC1B23A1C8F418FD28AFCA8FF82DB7C43B1F007EDB7E1B6D42E23B68EFBC0325923B9DA0BCD35FC4AB9F53BCE077FAE0573F104AD837EABF33A72FBFD76828EEE7131BC0BF0B47823C1DA6C33693E0BB3D2EFAC6195DEFEC06A5A95E89115FCCDAD13C76F11CFCA8ACB2040A594312EDE67F16F44F19FC3BD7E6BEF03F8BA7F09EA7A842E522B29127B3BF895B2893412A9DC232F80594300E707079F3D8350F1778AECA1B6D375EF156A96F6F12C305B24CD3471228C2A7CABBB000C6189AB567F017C5FACDBB2FFC21BE22B1BC29B1352B0B7115D46339E188E573D558153E9D2BF07CA723CCBDBD5963E71A94A775C9C8DA6BA5DC9FDFA34F6492B5BF58C3E16B52C44AAE22A27196E9B6FF0007A23C57F68FF1D7C40F8B5A7C7078AB49D25355D258BC77D0EE8DDC6086455CE30DC1E4019031EB5E03A67ED03AD7C2FB9B8863DAD0C81A3B9B3B98F7452A9E08643C73DC1183E95F722FEC4BF15A6F0E3349AA6A9AE4F25D86369ABE9C3CB1687E538C65D6546CB6D49515D768F972593CCFF686FF00824A78E7C6A350BAD220BAB5BAB39E58ACAD66B2693FB423C66372F1B308871B4E4B90C49C14C39FBACB720586A31A74E9A8D3B689595BAE8BA7A1DB4B38C0E1E0F0D45F57A5A4D5DEFBF4F4D3AE8794E9BFF053D373E03D43C2BAD9BCB7F0F6A9118EE34F9A15D42C81200CA067478C7038F9C71F745697ECEBFB6BFC3FFD9DBC756BE29F07DBFC363AEDAC171044CFA7C96335BACD1344E639667458D8ABB2931B0CAB32F463553C43FF000439F146A37376B2789EF6DFF75691DA17D0A489249648E059A595E57431C514CD724A84690C50A119670072A3FE083FE208755B88752F1742D6E74D1342EB1FD8E44B8792DB60651F68DCAB04D3BB2FC85A4B5310655759ABBA5C2F8274AA529251854BA9256B4AEACEFDEEB73C2FED4A3172852A29A96AD59ABFE47BA6B3FF000523F1EFC4570BE1DD43C19A34C5B22E2DB5CB3C203FF5D2765FEBE956FE12A497DAE47AC6B5E243E35D7669DEEE2B3B093769F05C3B12D33BF1E749927048DABDBB11E2DE06FF008216687A05D44DE25F1978935968ED2179A2D274B11F9972D7C23912291FCC52896A1A425C265B25779090CDED7E05F817E2EF821E1AB8F0C7C33F83FE2082CE396489B549619AEA6BFF00988330C226DDE002324E0103B62BCBA7C2F97E510E5C053493D1F2A4B6EED5DBF99E8E535A9D5BC29538D2EEF5BFDF2FD19F537C1AF81E3C6B1DB6BDE39D5AE348D06605E182C22135D5E202798C3108A9C11E636413D158062BE89F057E28C1E07FDA7F4EF08FC3DD63499FC1BA83C5A86A32EAB16DD561215D1207923223911591DD762AE7CD3C9AF86ECFF63CFDA0BC4D6ABF6CD13C4765631A796897D74CF1C49D76A4597651EC1457D51FB1E7FC13C2D7E18EA7E00F8930F8BEEFC41A859C916A12E997B60DA75BDA367CBB98D559D899932CA3CD54DFB41F949515F315BDAD0C5AA99D555EC2535CB0E46A29A69AE696BAE97F7AC9BF4B278EC3D1A6A52AB5D4934D28A57D7A5DDED7F5B1F4D7FC10DF56BAD77C35E3DBEBD65FB5DE0D3A599562F28212F7BB7E4E767C810952CC41CF4E33F7A57C09FF000445947F6E7C608776E6B6B9D31091F5BD3FD6BEFBAFDC323E5581A718AB24AD6F4763F1B94939CF95597349597949A0AF8CFF00E0A47FF0499B7FDBE7E26E97E2493C456963F63D223D227B0BCB2F3E095639E59925560721C199874EC0820D7D985B149B8576E230D4EBC3D9D5575BFDDE84B8DDA926D34D34D369A6B669AD4FCEAF087FC114BC69E02D2E3B5D1FE3278AAC238C055897C41A9496C8063858A4919546370C0E991E983B4BFF000490F88ECBFBCF8C5A931DC0EEFB6DF2923BF025C67A57DF7B851B85737F64E17F97F17FE6754B198996F525FF00813FF33F3EEF3FE08F9F112E7FE6B16A19F7BBBFFE92D447FE08D1E38E73F1835A6F43FDA9A871CFA79BE99FE7ED5FA13B851B8547F63E12F7E5FC5FF991F58C45EFED67FF00814BFCCFCFA3FF00046BF181FF009AB1AE9E83FE4317FE9CF573D4F3EDEFD6A183FE08D3E3B888CFC5CBC603B7DAF501FF00B5ABF42F70A370AAFEC8C2DEFCBF8B1FD6B11FF3F67FF814BFCCFCFB4FF823B78F51571F17AF8E17077DD5F3027D71E68F6A93FE1D01E3CE4FFC2D562703197BC3CE39EB2773F957E806E146E155FD9785FE51FD6B11FF003F25FF00813FF33E04B6FF00824478F2DDBE5F8A800CFA5D6EC71C67CCEBD79C77E9C566CFFF000468F88114EF369FF19B56D1E690E5CD95EDFC68FF002E0E63F3761CF7C8E7A1CE063F43770A370ACEA64F839C5C270BA62962B10D72BA92B7F89FF99F35FF00C13A3F600B8FD8674BF161BEF153F8A750F164F6D24B27D97C84B748164080724B13E6B1278E83AF24FD2B49B851B857761F0F4E85354A92B247353A6A0B963E7E7BEAFF0013FFD9, CAST(N'2021-04-02' AS Date), N'8', N's', 8, 0, 1)
INSERT [dbo].[Urunler] ([id], [Barkod], [UrunAdi], [SatisFiyat], [BirimAlisFiyati], [BirimTipID], [SatisFiyati_2], [SatisFiyati_3], [Kdv], [KdvOrani], [KategoriID], [StokMiktari], [KritikStokMiktari], [TedarikciID], [Ozel_Kod1], [Ozel_Kod2], [UrunResmi], [SonKullanmaTarihi], [Cinsi], [Sinifi], [BedenNo], [Sonlandi], [Aktif]) VALUES (15, N'1234567892121', N'Erikli Su 200mL', 150.0000, 1.0000, 1, 0.0000, 0.0000, 0.0200, 0.01, 2, 15, 10, 2, 0, 0, 0xFFD8FFE000104A46494600010101006000600000FFE100224578696600004D4D002A00000008000101120003000000010001000000000000FFDB0043000201010201010202020202020202030503030303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A500A503012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA28A2800A28A2800A28A2800A28A2800A28AFCFAFDA1BFE0B9137C1ED5B5E8EC3E1958EAD69A36A12584535CF8B0D9CB71B5C2EF312D9C81727B6F3F5AF572BC931B9949C3050E671DF54B7F5691E4E6D9E6072C8C678D9F2A968B493DB7F8533F4168AFC8CB6FF839DF56FED85B59BE07E9FB5CE37278C9E36FFD2135F66FFC137FFE0A5F07EDFA9E2EB76F071F07EA5E1336ACD02EAC3508AEA39FCDDACAFE4C44153110415FE25209E40F4730E0FCDF0387962B15479611B5DF345DAED25A2937BB5D0F3F03C619462F111C2E1EB5E72BD972C95EC9B7BA4B64FA9F53514515F327D305145140051451400514514005145140051451400514514005145140051451400D99CAAFCA0337604E326BF393E217FC1223C33F13FC23AF5ACDF63F3F4ED5A467D42C2F22B1BC972C498DA5FB04CCCAA5B6E30394C76AFB97E38FC57B7F85FE126B86693FB42F034564890B4CDBB8CBEC504954C8278C741DEBC37C01E3ED27C31A53DB5C6A7A95D49712196596EA399A495CB166624C639249CE0773DC935EEE4F98E3B04A53C249C6ED6DD6D7EBE57FC4F9CCF32FC0E3651862E0A5CA9EFD2F6FCECBEEF33E2DF0F7FC1BF3E19BEF14DAFDA2FBC4CB1B48A09FF84BE0980048E76B68C01FA038AFB0BFE09FBFF04F3F0EFEC65F153C6D7DA0EA2D7697D676DA7C904AF131B6552640DFBB86304BE79240E53A1AEC17E33786E062DFDA12FCBC8DB14EDCFF00DF3DAA87807E30683E1AF88ADAA595F6B1711EA88B15D4245ECD032EEF95951C15565C9E576F05B23D3D3C771066D8BA13A15E72E592D55B47AA7D76DBA1E660F23CAB0D88857A74E3CD17A3BEDA35F3DCFA668A8ACEF23BE81658995E391432303C303D0D4B5F1E7DB051451400514514005145140051451400514514005145140051451400565F8CFC6165E02F0DDDEADA8C9E4D9D9466595BBE060000776248000E492077AD4AF967F6A1F89571F11FE21DBF86F4F666D3345981B82872B2DC6304B73D139503D779FEEE37C3D1F6B3E5E9D4E5C5E2151A7CDD7A7A915B6AF7FF0017BC6336B9A8798BE790B6D6E4EE5B48867083F993DD893D30077BA5F8720B489709D47AD66FC38F0D2DAE9E8ACB9F7AEE6CB4CDBF757EB5BD7A9AF2C763CDA706F596E615D7866348FF00D5EEFAD72BE26F0B47E5336C5565FBAC14641F5AF4E934F213EEE2B99F14DA47146DF2F4A8A751ECCAA94D11FC09F89C34CD49BC3F7E648D6694F905C8C4321EABECAC7240ECDC7F171ED55F24F8F74D92DDC5D41B96484E460E3D3B8FA7F235EEDF00FE2CC7F11BC2CCB348ADAA69E156E4636F980E76C98F7C303FED29E9914F11474F68BE674607117FDCCB7E9FE47A0514515C67A4145145001451450014514500145145001451450014514500713FB46F8FE4F84FF01BC69E2A802B5CF86740BFD561046773C36EF228FC4A81F8D7CDDFB35783DB5ABE679A49A6F317CCDE482E53E503E63F503DFF001AF6BFDBDB5FB5F0BFEC4DF17350BE824B9B3B5F066AF24D1A6373A8B397206597F98FAD7E75FECC3FF05A2F849E0AD1AC6C352D1BE255C5DD969904533DAE9965B0BAAA062A7ED8BC6471F28FA0AFA6C9F25C6E370B3960A9B93BD9DBD158F94CFB38C160B110FAED45056BEAFCECFF0043F47ADB4C8F449502CDE62B36D1C723EA6B6B4EB884C15F01F8F7FE0BD7F037C35650CD71A2FC568D6493CADA74EB02D92091C1BEF6EDD73599A7FF00C1C5BF01426E5D0BE2D303DD746D3BFF0093EBA25C159E5F5C34BEE3930FC5B944E3ED29578B8FAE87E87DEDF2C71361BF4AE57C417EB2BB6594607738AF85750FF838ABE035D7CBFD8BF15C37239D1B4FE3FF0027EB0F53FF0083803E074CF9FEC5F8A91F6F9B47D3C67FF27EAA1C179D5F5C34BEE2AA71465B2FF97D1FBCFD07D1FE185A78D3446BA92E2464653B8478182091C9EF8C77F5FCFC0BF67DF88175E11FDB6743F0EFDA3CC5D620D4F4F990B1DA5A289662D8F50D6CB8F691B91DFCAFC09FF05EAF8252F83E1DBA1FC6075B82FB3ECF6B651A8F9DBA6DBF039F6AF21FD85FFE0A03E0FF00DA13FE0AB3F0D74CD074FF0015AB6A736BAC25D52DADD3CB63A6DCCC18BA4EECD9481C1CE7E661C7DE61D34F85B33C350AD571746518A8C9DDAEC9FE473D1E21CB71789A5470756329F324D27AEEBFC99FB21451457C31F781451450014514500145145001451450014514500145145007877FC14C21375FF04F6F8DF0A8CB49E04D680FFC0392BF9DAF865E1090F88EE976FDDB50738FF680AFE8C3FE0A24BBBF610F8C7CE3FE28BD597F3B592BF047E1D693E46B371263EF419C7FC0857EFF00E0D46F86AEFF00BCBF23F99FC7DC7BA1528417584BFF004A47D8BFB2BCBAC7C3AFF82736A9A87877E207C39F85FAA4FF001416DA4D6FC61610DD5B5CDB7F64231B58C4904E3CC665590614616290EE1C83E3DE2BF833E12FDA16D7E2F7C54F8E3F126F7C5CBF0C6F3C3FA345A8FC2FD3B4E8AD3C476D769293140B2430C6B2472328699F8510CA0A49FBBC5AF08FED7FAA7C12F8492783FF00E105F85FE3DD0F50D6D758167E31D05B568E0BB16FE40963412A00DB06D048270CC01009AAFF00103E3259FC51F867E27D163B8F85BF0EF4AF183E9175AA689E1BF06DED82C73D92CEEA2245778B779929F324246FD8A7726DC49F498AC8F1B4730AD5A31E5539A6A7149C9479A1CDAA8B97C29AB3D2FB6BA9E370FF001965F5B26C3D194D3953834E126D2724A767AC945AE6B3D353D8BE0EFEC917DF1B3F64FBFF000C687AA4735F78C3E0BE813D84DE20FB1DA5A787A14D7EE1E46F36081088D228DA4777F3656DB8DCC028AF25F85FFB39785FE007C76FDACFE1FE8D63E28B85F047C0AF12585E5E789638639B50D4233645EF6DADD107D9ADE4DDBE00CF2B98DD64F308902AC1AA7C6DBEBDF813FF000825EF8C3C13268B7DE16D3FC24278BC39AA7DBA4D360D4CDD6E566DB16F57770E71CA22AAAEF62E297C48FDB0BC586F2E246BCF07F89F58D73E1DDC7C3AD5F5C5D32FA2BDD474D9C4603DC3CB22092F22F2F0B38419CE25590A80BC385C973373AB0DE13936959C6D6E4B49B6926AD171B77D75FB3EEE238C32982A5524FDE8455DDD4AF7E64E2926DA776A57EDA69A5E3FF82997C2597C1FFB717C40D35F54D435E7B6BBB6CDFDF41690DC5C16B1B67F992D618611B776D1B225F95573B9B73B71BFF0453F0BB5AFFC15F3E12CCC3E586EB5AFD744D457FA9AEABE32FC75D6FF0069DF15DD78C3C4761A2DAEB9ADCED75772E9D0C90A3FC91C48815E47C22242A179CE59C92770C6C7FC120B43FB07FC152BE16C9F77FD2B576C63FEA117E2BDCCEB0752870B4E8D6D270A0D3B6D754ECED6E975A1F0BC2FC450C4719B9D095E152BAE5BDEF694DEF7EB67AFE67EF7514515FC9C7F670514514005145140051451400514514005145140051451401E3BFF00050642FF00B0D7C5E03BF837551FF92B257E2F7C01F0528F102DCDF785F50F13D8C70067B3B6BB7B5DF861D64446603E98EB5FB79FB5ED8C3A8FECC1F1021B88A39A093C3D7CAF1B8CAB830B020FB578E7ECDFFB31E9379A025E69ED71A347796891BADBC116E75DCA5807652CBD001B08233D4D7E9DC0BC574B27C1D78D48B7CED756BA2EAB5FBBEF3F17F133C3FC571163F0D568555054D34D38A95F5BAD25EEDB4D53BDFB1F3AFC1AFDAAEDFE196871F87F4FF82B0F833C2EC255BABCB780EA975772BDBCEB1473CB7022560EEED9695F6888322845C15C4F85BFB35FC21F881A44FA46AFE0FF000ED8FC48B88C4D75A7E9FA84FF0062D2E3237068228AF2677FDCB093CE226B6565C39881AFAAFE3EFEC41E06D5340B18ACF59B5D0F5E4BC596CA5D53CBBC8EF246CEF8A447C3485F008604BA32EE5E8CADC6F803C33F123E1FEB9A5C36B7FA4DC69B676AFA65C450CF6973F6DF2EEA577F25885BA56DB2C71F9648549235EEC71D75388685653AF9649D194BE2BCE69C9ABB4DC9B9395EFAABF65A2BDEF2FE0EA985A50C3670A389F677E5FDDD3E58A7CBA28454631B5B7B7E96C3D57F65297C05A6C1E17F1043E15F18FC31D1749F26FACEEE1757D1DDE47985DB2F99FBA90C6C615B984A948D6424441198FCC1F1DBFE091FE2BF0BF886E25F00B3789F489BF7D0595D1FB2EAD0C67B3248B1C736DC11BA32198027CA4C57E92A59788B5BD5859EB11F866EBC2771A327DAEC5615FB4DADC90438F2D83A3DBB6DC85601C1524B383B564B9934C875268EF75881AD367D945ADCC3042D1B15DF85623703B622C154A8C26EC6466B8328E32CD32FAAEA519A77D64B78C9F7B2B5A57BECD5D593BEE77F11701E539CD154F130945AD2324D29456D64DDEEAC968D4ADADAD73F1C4FECF1E2FF000EAAD95F786F5AB1BB873BE1B9B3922914927AAB0047D7BF6AEFBFE0977E10B8D07FE0A5BF0C5A685E3D971AB021C60E7FB2AF81FCB35FAEDA0E93A778AFC2964FAA7F65EAD246AC23B98AD024446F6C141B9881C00406C641FA0F09F007C0BD37C39FB54F84359874C86D7ECFA8DF79123604996B0BA19DB8CE36B115F558EF13BFB432CC4613114795B84A2ACF4BB4D75573F38CA3C13A994E7385CC30D8AE78C6A466D38D9D9493B5D36BBEBF91F5C514515F859FD3A145145001451450014514500145145001451450014514500703FB51782352F893FB3C78E340D17558F43D6B59F0FDFD969FA8491AC896571240CB1CACAC0AB2AB6D24104601AF82BF67AD47F69A58ADF4DD2FE35783752B9FB12BBD85FF00C3D86DEE6D9B00B2936C4A381CF2AC47438E485FBDFF0069DD2F52D67F67BF1CDAE8FE71D567F0EEA11D9AC47123CE6DDFCB0BC8E4B600E475AF93BE037C3DF04EABAC0D53C41A2F866F2CEF2DBCD885C6950DD2A331520799B4EEE0B00DDC7A57D164F8BF6387A975196BB38466EF6FEF26D2F46B63E7738A3ED6B463CD28E9BA938FE4FF00AB989F153C2FFB52EBD15BC3AD78DBE00B343B9233AC785EFA30B919F908E4371D460819C11920F33A7FECEBFB4ADCCF1DC5BF883F64F9163468B6AE8FAC2C651B78DA501DA5543C81571B5777CA057D2973F073C033DF2DC68DA178761E73218AC1630C3B0C003DFA576DE19F04E97A7C0BB2C6C87AE20DBBBF5AEAFF0058274E368C21E9ECE2BF23869E549BF7A727E6E6DFE2CF91EFFE007ED417304FF6CD4FF643996E22582469345D6643B1624895473F2A848D0003006C18E9593AAFC11FDA35D99AEBC59FB2ADAC8C5999E3F0BEA3331DD8E0990740555803901954800A291F726A5E14D3DA0F9ECF4F6F4061DC3F2CD70FE26F875A4DDBB62C745F97D6CD1FF9E6A69F1155FE487FE008BAB9546DBBFBD9E21E06F83BFB597FC21F690E91F17BE1B6996316E113689E048FC81BA4663B1645C724927DC93DE99FB297C3AF8E9AE7ED6DE18D5BC73F1E57C79E1FD0E2BF9EE34EB7F07D868B14ECD6EF0471978C095F0D379982147EE93E66C903DDFC19E04F01E89E1F91754D0FC2D7174A58E67D2617E33F2FF01E80E3F0AF36F85B673597ED6BE1DB1D1A1167A5ADCDF5F5CC764A904715BAC13A2091015F94B491E30090CA80AE0EE152CDAAD6A7521CB4D5D4B554A9A7B3BDA5CB74FB34D333A596C28D5A73E79BD568EA4DADD5BDD6ED6F2B58FB2A8A28AF933EC428A28A0028A28A0028A28A0028A28A0028A28A0028A28A00E0BF6A1F126A1E10FD9E3C71AAE92C5754D3740BEBBB5618C878E07618CF19E3BF1EB81CD7C7DFB387C1CB5D5BE255D6A92EA9E20D399A279619E29520B8704A801D668988CA313B4A8EBE95F64FED15E309FC03F03FC59ACDBAC6F369BA45D5C20906E505633C91DC0EA4770315F0D7ECC9E06F126A3E356B4B5D6B44934C8219248A2B9D327FB094F302AF9423B81B54EFDCBB4818E707A1F732E6D616A34F97F5DB4FF87EE78199FF00BCC15AFF0087F5FF0000FA375FF860D25DC05FC4DE2AD563DE48325C582907079252D14FEBFF00D6DFD03C12202A45F6B0D8EC668307F28AB937F08F8B746B88956E3C276EACFF007ACD2F5438009208944A3F235D368BE1BF120C3C9A9699EC3120FF00DA42B966DA8EEBEE1C759EDAFA9D20F0D27D9FFE3EAFC7FDB68D7FF69D733AEF812D49666BAD63D82CF6F81F8184D6D3E89AE3C5FF00212D3C63FDA719FF00C866B8FF0019F863C512A3797ABE8B1E7EF0226CFF00E89358D1BF359334ACF4BD8D8F0D783A1FF847DA3FF8493C43A742A1B6C50DEDA44A06E3C8616FBBF5E2BC0BF679D5AF3E1BFED71A1786B49BA9CE9DA96A9796E524459619A08E0B8766490281BF221276638C9381CD7A8E93E08F13F887417125E783F72EE569AEB4EBFB972771FE113C031F80CFF3F03FD90A6F147C30FDB0AD74DD5AF2C7586BCBF974B799ACDBCF68424E1A45790C8E9186553B43A8DCE839CE0FAD85A6A546B7BC9DA2F4FBF5DBA7F56386B4ED568E9A5F7BF9AFCCFD1CA28A2BE74FA80A28A2800A28A2800A28A2800A28A2800A28A2800A28A280385FDA5B55B4D1FE0478BA6BFB38750B36D22E6196DA5E239FCC4F2C231C1C292D827A01935F03FECF1ADF8C34AF19CDA7C3E1F9AED6D62904D3D8CD67697B220FEF17B848DBE62077CE7AF73F7B7ED3965A75FF00ECFDE348F5699ADF4D6D0EF04F2AE3744BE4B1DC0302A48201C302BD8820915F9E9F037C79AEE9FF0012A4B6B5B4B98EFA78A58A691AC6E6EEDE2C90CC762AC928F98003219471F74703E8B29839612AF2A4DF9FA7AFF5A791F3B9B4AD88A7767D55A4F8F35E85E38EEBC33E2A56CE3FD365B29801DC836F71264F4EBC57A568DA8EA17302B36937D17B32153FCEBC42C3E2CEA111823D421B3BA6DE36358DB488E3A672B2A291D07E27EB8F51F0CF8D12FAD55BC8923CF678029FE55E7E229C92F7A297A5FF0052E8D44DFBADFE1FE47577D717FE57FC836F9BE8A4D721E32D7B58B2B77DBE1ED4DF6F5C44141FC72056ADDF89A348B98FF2881FE75C6F8CBC6D0C76EDFE8B72DED140AC7F2AC68D3774EC6B5A4AC631F15789B57D2E4FB3F873C6002EE595ACB53D2EDE353B89CFEFAE558F1CFDDCE73ED5E2FF00B28EB37D07ED55A3DE78AB4B8A1BA87539F4B8F6470CA9F6D923913719159B74802B92E09043FB8AF49B4F8A7AB8D12E3FB0E1B687733931CBA55F5DCA809C1222B785FAE33F4C5797FEC89AC2F8E3F6B3D16FF5859B4FBB6D5AE1E4B69ACCC64DDF9170C8017E5006DFF220571B70ED8CAD7BB86A72542B5E292E5E97BF5F96BFE4797392955A566EF75BDADD0FD1AA28A2BE58FAE0A28A2800A28A2800A28A2800A28A2800A28A2800A28A28039AF8C3E068BE27FC2EF11F866691628FC47A55DE94EE7F856785A227FF001E15F9FDF017C5B2F8E746D375C556D33569ACD56FED52341E4DC2809731BA1046E12AB641CE09ED5FA4D5F17FC6EFD9A3C75E0AF8ADAE6A5E08F0DDAEA7A2EB7A8FF6CAB437312796D22E67B5689886CB4C19C3A82B89DB250AFCDEBE575A369519B4AFAABEDE7F7E9F71E366D464F96A41376DEDBF97DDFA9E85E0F17975044D71793CDB73B141F2D53F05C035DD69B7D22C4A05C4E3E8EC33FAD703E11B7D5B4DD2A17BAD1F59B2C8C917365247B0FA138C647D71E848C133F8EFC63AF68FE1CFB5683A2DEEAD711C81665891CAC2A437CC76A92D838F94618F6F4384A9B94F957E897DE6509F2C2F23D06E7559767FC7C5C7FDFD3585AFCB25DC1266E6E3D7FD6BF1FAD79BEA3F13FC5BF68B8860D36F798B747732E8B72B6EADB7206D2048CC4A9E0F186186E1B1D543AB6A4DA0C0DA958DE5BEA12C21AE2D96191E489980C80BB0138E4700038ED53F579C35611ACA7A1C57C45F0E59DC68F3F9D35F28E645F2EEA48F1D3FBAC3F5AE1FF64FF05BEA9FB5CF8561B5332D8F866CB50D72EF3CA34AF18B48771273B985D4CDD327CB26BADF1D781BC69E2B1F65D27C3FAC6E9991DA6B9B278A145DC3248700371C05EF9E70326BD5FF00638F81FA87C3AB3F126B9AF6976FA4EB9E26BC475B6496399ED2CE30DE54323464C7BC3BCEE4212A03A804E38F4BEB0A961E4B9B569AB5FBE9B7A5DFCBCCE7A387955C445DB45ADFF1FF002FBFC8F6EA28A2BE7CFA60A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFD9, CAST(N'2021-04-02' AS Date), N's', N's', 0, 0, 0)
INSERT [dbo].[Urunler] ([id], [Barkod], [UrunAdi], [SatisFiyat], [BirimAlisFiyati], [BirimTipID], [SatisFiyati_2], [SatisFiyati_3], [Kdv], [KdvOrani], [KategoriID], [StokMiktari], [KritikStokMiktari], [TedarikciID], [Ozel_Kod1], [Ozel_Kod2], [UrunResmi], [SonKullanmaTarihi], [Cinsi], [Sinifi], [BedenNo], [Sonlandi], [Aktif]) VALUES (16, N'1234567892122', N'Hamidiye Su 1Lt', 1.0000, 50.0000, 1, 3.0000, 1.0000, 0.0100, 0.01, 5, 20, 0, 1, 0, 0, 0xFFD8FFE000104A46494600010101006000600000FFE100224578696600004D4D002A00000008000101120003000000010001000000000000FFDB0043000201010201010202020202020202030503030303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A500A503012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA28A2800A28A2800A28A2800A28A2800A28AFCFAFDA1BFE0B9137C1ED5B5E8EC3E1958EAD69A36A12584535CF8B0D9CB71B5C2EF312D9C81727B6F3F5AF572BC931B9949C3050E671DF54B7F5691E4E6D9E6072C8C678D9F2A968B493DB7F8533F4168AFC8CB6FF839DF56FED85B59BE07E9FB5CE37278C9E36FFD2135F66FFC137FFE0A5F07EDFA9E2EB76F071F07EA5E1336ACD02EAC3508AEA39FCDDACAFE4C44153110415FE25209E40F4730E0FCDF0387962B15479611B5DF345DAED25A2937BB5D0F3F03C619462F111C2E1EB5E72BD972C95EC9B7BA4B64FA9F53514515F327D305145140051451400514514005145140051451400514514005145140051451400D99CAAFCA0337604E326BF393E217FC1223C33F13FC23AF5ACDF63F3F4ED5A467D42C2F22B1BC972C498DA5FB04CCCAA5B6E30394C76AFB97E38FC57B7F85FE126B86693FB42F034564890B4CDBB8CBEC504954C8278C741DEBC37C01E3ED27C31A53DB5C6A7A95D49712196596EA399A495CB166624C639249CE0773DC935EEE4F98E3B04A53C249C6ED6DD6D7EBE57FC4F9CCF32FC0E3651862E0A5CA9EFD2F6FCECBEEF33E2DF0F7FC1BF3E19BEF14DAFDA2FBC4CB1B48A09FF84BE0980048E76B68C01FA038AFB0BFE09FBFF04F3F0EFEC65F153C6D7DA0EA2D7697D676DA7C904AF131B6552640DFBB86304BE79240E53A1AEC17E33786E062DFDA12FCBC8DB14EDCFF00DF3DAA87807E30683E1AF88ADAA595F6B1711EA88B15D4245ECD032EEF95951C15565C9E576F05B23D3D3C771066D8BA13A15E72E592D55B47AA7D76DBA1E660F23CAB0D88857A74E3CD17A3BEDA35F3DCFA668A8ACEF23BE81658995E391432303C303D0D4B5F1E7DB051451400514514005145140051451400514514005145140051451400565F8CFC6165E02F0DDDEADA8C9E4D9D9466595BBE060000776248000E492077AD4AF967F6A1F89571F11FE21DBF86F4F666D3345981B82872B2DC6304B73D139503D779FEEE37C3D1F6B3E5E9D4E5C5E2151A7CDD7A7A915B6AF7FF0017BC6336B9A8798BE790B6D6E4EE5B48867083F993DD893D30077BA5F8720B489709D47AD66FC38F0D2DAE9E8ACB9F7AEE6CB4CDBF757EB5BD7A9AF2C763CDA706F596E615D7866348FF00D5EEFAD72BE26F0B47E5336C5565FBAC14641F5AF4E934F213EEE2B99F14DA47146DF2F4A8A751ECCAA94D11FC09F89C34CD49BC3F7E648D6694F905C8C4321EABECAC7240ECDC7F171ED55F24F8F74D92DDC5D41B96484E460E3D3B8FA7F235EEDF00FE2CC7F11BC2CCB348ADAA69E156E4636F980E76C98F7C303FED29E9914F11474F68BE674607117FDCCB7E9FE47A0514515C67A4145145001451450014514500145145001451450014514500713FB46F8FE4F84FF01BC69E2A802B5CF86740BFD561046773C36EF228FC4A81F8D7CDDFB35783DB5ABE679A49A6F317CCDE482E53E503E63F503DFF001AF6BFDBDB5FB5F0BFEC4DF17350BE824B9B3B5F066AF24D1A6373A8B397206597F98FAD7E75FECC3FF05A2F849E0AD1AC6C352D1BE255C5DD969904533DAE9965B0BAAA062A7ED8BC6471F28FA0AFA6C9F25C6E370B3960A9B93BD9DBD158F94CFB38C160B110FAED45056BEAFCECFF0043F47ADB4C8F449502CDE62B36D1C723EA6B6B4EB884C15F01F8F7FE0BD7F037C35650CD71A2FC568D6493CADA74EB02D92091C1BEF6EDD73599A7FF00C1C5BF01426E5D0BE2D303DD746D3BFF0093EBA25C159E5F5C34BEE3930FC5B944E3ED29578B8FAE87E87DEDF2C71361BF4AE57C417EB2BB6594607738AF85750FF838ABE035D7CBFD8BF15C37239D1B4FE3FF0027EB0F53FF0083803E074CF9FEC5F8A91F6F9B47D3C67FF27EAA1C179D5F5C34BEE2AA71465B2FF97D1FBCFD07D1FE185A78D3446BA92E2464653B8478182091C9EF8C77F5FCFC0BF67DF88175E11FDB6743F0EFDA3CC5D620D4F4F990B1DA5A289662D8F50D6CB8F691B91DFCAFC09FF05EAF8252F83E1DBA1FC6075B82FB3ECF6B651A8F9DBA6DBF039F6AF21FD85FFE0A03E0FF00DA13FE0AB3F0D74CD074FF0015AB6A736BAC25D52DADD3CB63A6DCCC18BA4EECD9481C1CE7E661C7DE61D34F85B33C350AD571746518A8C9DDAEC9FE473D1E21CB71789A5470756329F324D27AEEBFC99FB21451457C31F781451450014514500145145001451450014514500145145007877FC14C21375FF04F6F8DF0A8CB49E04D680FFC0392BF9DAF865E1090F88EE976FDDB50738FF680AFE8C3FE0A24BBBF610F8C7CE3FE28BD597F3B592BF047E1D693E46B371263EF419C7FC0857EFF00E0D46F86AEFF00BCBF23F99FC7DC7BA1528417584BFF004A47D8BFB2BCBAC7C3AFF82736A9A87877E207C39F85FAA4FF001416DA4D6FC61610DD5B5CDB7F64231B58C4904E3CC665590614616290EE1C83E3DE2BF833E12FDA16D7E2F7C54F8E3F126F7C5CBF0C6F3C3FA345A8FC2FD3B4E8AD3C476D769293140B2430C6B2472328699F8510CA0A49FBBC5AF08FED7FAA7C12F8492783FF00E105F85FE3DD0F50D6D758167E31D05B568E0BB16FE40963412A00DB06D048270CC01009AAFF00103E3259FC51F867E27D163B8F85BF0EF4AF183E9175AA689E1BF06DED82C73D92CEEA2245778B779929F324246FD8A7726DC49F498AC8F1B4730AD5A31E5539A6A7149C9479A1CDAA8B97C29AB3D2FB6BA9E370FF001965F5B26C3D194D3953834E126D2724A767AC945AE6B3D353D8BE0EFEC917DF1B3F64FBFF000C687AA4735F78C3E0BE813D84DE20FB1DA5A787A14D7EE1E46F36081088D228DA4777F3656DB8DCC028AF25F85FFB39785FE007C76FDACFE1FE8D63E28B85F047C0AF12585E5E789638639B50D4233645EF6DADD107D9ADE4DDBE00CF2B98DD64F308902AC1AA7C6DBEBDF813FF000825EF8C3C13268B7DE16D3FC24278BC39AA7DBA4D360D4CDD6E566DB16F57770E71CA22AAAEF62E297C48FDB0BC586F2E246BCF07F89F58D73E1DDC7C3AD5F5C5D32FA2BDD474D9C4603DC3CB22092F22F2F0B38419CE25590A80BC385C973373AB0DE13936959C6D6E4B49B6926AD171B77D75FB3EEE238C32982A5524FDE8455DDD4AF7E64E2926DA776A57EDA69A5E3FF82997C2597C1FFB717C40D35F54D435E7B6BBB6CDFDF41690DC5C16B1B67F992D618611B776D1B225F95573B9B73B71BFF0453F0BB5AFFC15F3E12CCC3E586EB5AFD744D457FA9AEABE32FC75D6FF0069DF15DD78C3C4761A2DAEB9ADCED75772E9D0C90A3FC91C48815E47C22242A179CE59C92770C6C7FC120B43FB07FC152BE16C9F77FD2B576C63FEA117E2BDCCEB0752870B4E8D6D270A0D3B6D754ECED6E975A1F0BC2FC450C4719B9D095E152BAE5BDEF694DEF7EB67AFE67EF7514515FC9C7F670514514005145140051451400514514005145140051451401E3BFF00050642FF00B0D7C5E03BF837551FF92B257E2F7C01F0528F102DCDF785F50F13D8C70067B3B6BB7B5DF861D64446603E98EB5FB79FB5ED8C3A8FECC1F1021B88A39A093C3D7CAF1B8CAB830B020FB578E7ECDFFB31E9379A025E69ED71A347796891BADBC116E75DCA5807652CBD001B08233D4D7E9DC0BC574B27C1D78D48B7CED756BA2EAB5FBBEF3F17F133C3FC571163F0D568555054D34D38A95F5BAD25EEDB4D53BDFB1F3AFC1AFDAAEDFE196871F87F4FF82B0F833C2EC255BABCB780EA975772BDBCEB1473CB7022560EEED9695F6888322845C15C4F85BFB35FC21F881A44FA46AFE0FF000ED8FC48B88C4D75A7E9FA84FF0062D2E3237068228AF2677FDCB093CE226B6565C39881AFAAFE3EFEC41E06D5340B18ACF59B5D0F5E4BC596CA5D53CBBC8EF246CEF8A447C3485F008604BA32EE5E8CADC6F803C33F123E1FEB9A5C36B7FA4DC69B676AFA65C450CF6973F6DF2EEA577F25885BA56DB2C71F9648549235EEC71D75388685653AF9649D194BE2BCE69C9ABB4DC9B9395EFAABF65A2BDEF2FE0EA985A50C3670A389F677E5FDDD3E58A7CBA28454631B5B7B7E96C3D57F65297C05A6C1E17F1043E15F18FC31D1749F26FACEEE1757D1DDE47985DB2F99FBA90C6C615B984A948D6424441198FCC1F1DBFE091FE2BF0BF886E25F00B3789F489BF7D0595D1FB2EAD0C67B3248B1C736DC11BA32198027CA4C57E92A59788B5BD5859EB11F866EBC2771A327DAEC5615FB4DADC90438F2D83A3DBB6DC85601C1524B383B564B9934C875268EF75881AD367D945ADCC3042D1B15DF85623703B622C154A8C26EC6466B8328E32CD32FAAEA519A77D64B78C9F7B2B5A57BECD5D593BEE77F11701E539CD154F130945AD2324D29456D64DDEEAC968D4ADADAD73F1C4FECF1E2FF000EAAD95F786F5AB1BB873BE1B9B3922914927AAB0047D7BF6AEFBFE0977E10B8D07FE0A5BF0C5A685E3D971AB021C60E7FB2AF81FCB35FAEDA0E93A778AFC2964FAA7F65EAD246AC23B98AD024446F6C141B9881C00406C641FA0F09F007C0BD37C39FB54F84359874C86D7ECFA8DF79123604996B0BA19DB8CE36B115F558EF13BFB432CC4613114795B84A2ACF4BB4D75573F38CA3C13A994E7385CC30D8AE78C6A466D38D9D9493B5D36BBEBF91F5C514515F859FD3A145145001451450014514500145145001451450014514500703FB51782352F893FB3C78E340D17558F43D6B59F0FDFD969FA8491AC896571240CB1CACAC0AB2AB6D24104601AF82BF67AD47F69A58ADF4DD2FE35783752B9FB12BBD85FF00C3D86DEE6D9B00B2936C4A381CF2AC47438E485FBDFF0069DD2F52D67F67BF1CDAE8FE71D567F0EEA11D9AC47123CE6DDFCB0BC8E4B600E475AF93BE037C3DF04EABAC0D53C41A2F866F2CEF2DBCD885C6950DD2A331520799B4EEE0B00DDC7A57D164F8BF6387A975196BB38466EF6FEF26D2F46B63E7738A3ED6B463CD28E9BA938FE4FF00AB989F153C2FFB52EBD15BC3AD78DBE00B343B9233AC785EFA30B919F908E4371D460819C11920F33A7FECEBFB4ADCCF1DC5BF883F64F9163468B6AE8FAC2C651B78DA501DA5543C81571B5777CA057D2973F073C033DF2DC68DA178761E73218AC1630C3B0C003DFA576DE19F04E97A7C0BB2C6C87AE20DBBBF5AEAFF0058274E368C21E9ECE2BF23869E549BF7A727E6E6DFE2CF91EFFE007ED417304FF6CD4FF643996E22582469345D6643B1624895473F2A848D0003006C18E9593AAFC11FDA35D99AEBC59FB2ADAC8C5999E3F0BEA3331DD8E0990740555803901954800A291F726A5E14D3DA0F9ECF4F6F4061DC3F2CD70FE26F875A4DDBB62C745F97D6CD1FF9E6A69F1155FE487FE008BAB9546DBBFBD9E21E06F83BFB597FC21F690E91F17BE1B6996316E113689E048FC81BA4663B1645C724927DC93DE99FB297C3AF8E9AE7ED6DE18D5BC73F1E57C79E1FD0E2BF9EE34EB7F07D868B14ECD6EF0471978C095F0D379982147EE93E66C903DDFC19E04F01E89E1F91754D0FC2D7174A58E67D2617E33F2FF01E80E3F0AF36F85B673597ED6BE1DB1D1A1167A5ADCDF5F5CC764A904715BAC13A2091015F94B491E30090CA80AE0EE152CDAAD6A7521CB4D5D4B554A9A7B3BDA5CB74FB34D333A596C28D5A73E79BD568EA4DADD5BDD6ED6F2B58FB2A8A28AF933EC428A28A0028A28A0028A28A0028A28A0028A28A0028A28A00E0BF6A1F126A1E10FD9E3C71AAE92C5754D3740BEBBB5618C878E07618CF19E3BF1EB81CD7C7DFB387C1CB5D5BE255D6A92EA9E20D399A279619E29520B8704A801D668988CA313B4A8EBE95F64FED15E309FC03F03FC59ACDBAC6F369BA45D5C20906E505633C91DC0EA4770315F0D7ECC9E06F126A3E356B4B5D6B44934C8219248A2B9D327FB094F302AF9423B81B54EFDCBB4818E707A1F732E6D616A34F97F5DB4FF87EE78199FF00BCC15AFF0087F5FF0000FA375FF860D25DC05FC4DE2AD563DE48325C582907079252D14FEBFF00D6DFD03C12202A45F6B0D8EC668307F28AB937F08F8B746B88956E3C276EACFF007ACD2F5438009208944A3F235D368BE1BF120C3C9A9699EC3120FF00DA42B966DA8EEBEE1C759EDAFA9D20F0D27D9FFE3EAFC7FDB68D7FF69D733AEF812D49666BAD63D82CF6F81F8184D6D3E89AE3C5FF00212D3C63FDA719FF00C866B8FF0019F863C512A3797ABE8B1E7EF0226CFF00E89358D1BF359334ACF4BD8D8F0D783A1FF847DA3FF8493C43A742A1B6C50DEDA44A06E3C8616FBBF5E2BC0BF679D5AF3E1BFED71A1786B49BA9CE9DA96A9796E524459619A08E0B8766490281BF221276638C9381CD7A8E93E08F13F887417125E783F72EE569AEB4EBFB972771FE113C031F80CFF3F03FD90A6F147C30FDB0AD74DD5AF2C7586BCBF974B799ACDBCF68424E1A45790C8E9186553B43A8DCE839CE0FAD85A6A546B7BC9DA2F4FBF5DBA7F56386B4ED568E9A5F7BF9AFCCFD1CA28A2BE74FA80A28A2800A28A2800A28A2800A28A2800A28A2800A28A280385FDA5B55B4D1FE0478BA6BFB38750B36D22E6196DA5E239FCC4F2C231C1C292D827A01935F03FECF1ADF8C34AF19CDA7C3E1F9AED6D62904D3D8CD67697B220FEF17B848DBE62077CE7AF73F7B7ED3965A75FF00ECFDE348F5699ADF4D6D0EF04F2AE3744BE4B1DC0302A48201C302BD8820915F9E9F037C79AEE9FF0012A4B6B5B4B98EFA78A58A691AC6E6EEDE2C90CC762AC928F98003219471F74703E8B29839612AF2A4DF9FA7AFF5A791F3B9B4AD88A7767D55A4F8F35E85E38EEBC33E2A56CE3FD365B29801DC836F71264F4EBC57A568DA8EA17302B36937D17B32153FCEBC42C3E2CEA111823D421B3BA6DE36358DB488E3A672B2A291D07E27EB8F51F0CF8D12FAD55BC8923CF678029FE55E7E229C92F7A297A5FF0052E8D44DFBADFE1FE47577D717FE57FC836F9BE8A4D721E32D7B58B2B77DBE1ED4DF6F5C44141FC72056ADDF89A348B98FF2881FE75C6F8CBC6D0C76EDFE8B72DED140AC7F2AC68D3774EC6B5A4AC631F15789B57D2E4FB3F873C6002EE595ACB53D2EDE353B89CFEFAE558F1CFDDCE73ED5E2FF00B28EB37D07ED55A3DE78AB4B8A1BA87539F4B8F6470CA9F6D923913719159B74802B92E09043FB8AF49B4F8A7AB8D12E3FB0E1B687733931CBA55F5DCA809C1222B785FAE33F4C5797FEC89AC2F8E3F6B3D16FF5859B4FBB6D5AE1E4B69ACCC64DDF9170C8017E5006DFF220571B70ED8CAD7BB86A72542B5E292E5E97BF5F96BFE4797392955A566EF75BDADD0FD1AA28A2BE58FAE0A28A2800A28A2800A28A2800A28A2800A28A2800A28A28039AF8C3E068BE27FC2EF11F866691628FC47A55DE94EE7F856785A227FF001E15F9FDF017C5B2F8E746D375C556D33569ACD56FED52341E4DC2809731BA1046E12AB641CE09ED5FA4D5F17FC6EFD9A3C75E0AF8ADAE6A5E08F0DDAEA7A2EB7A8FF6CAB437312796D22E67B5689886CB4C19C3A82B89DB250AFCDEBE575A369519B4AFAABEDE7F7E9F71E366D464F96A41376DEDBF97DDFA9E85E0F17975044D71793CDB73B141F2D53F05C035DD69B7D22C4A05C4E3E8EC33FAD703E11B7D5B4DD2A17BAD1F59B2C8C917365247B0FA138C647D71E848C133F8EFC63AF68FE1CFB5683A2DEEAD711C81665891CAC2A437CC76A92D838F94618F6F4384A9B94F957E897DE6509F2C2F23D06E7559767FC7C5C7FDFD3585AFCB25DC1266E6E3D7FD6BF1FAD79BEA3F13FC5BF68B8860D36F798B747732E8B72B6EADB7206D2048CC4A9E0F186186E1B1D543AB6A4DA0C0DA958DE5BEA12C21AE2D96191E489980C80BB0138E4700038ED53F579C35611ACA7A1C57C45F0E59DC68F3F9D35F28E645F2EEA48F1D3FBAC3F5AE1FF64FF05BEA9FB5CF8561B5332D8F866CB50D72EF3CA34AF18B48771273B985D4CDD327CB26BADF1D781BC69E2B1F65D27C3FAC6E9991DA6B9B278A145DC3248700371C05EF9E70326BD5FF00638F81FA87C3AB3F126B9AF6976FA4EB9E26BC475B6496399ED2CE30DE54323464C7BC3BCEE4212A03A804E38F4BEB0A961E4B9B569AB5FBE9B7A5DFCBCCE7A387955C445DB45ADFF1FF002FBFC8F6EA28A2BE7CFA60A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFD9, CAST(N'2021-04-02' AS Date), N'', N'', 0, 0, 1)
INSERT [dbo].[Urunler] ([id], [Barkod], [UrunAdi], [SatisFiyat], [BirimAlisFiyati], [BirimTipID], [SatisFiyati_2], [SatisFiyati_3], [Kdv], [KdvOrani], [KategoriID], [StokMiktari], [KritikStokMiktari], [TedarikciID], [Ozel_Kod1], [Ozel_Kod2], [UrunResmi], [SonKullanmaTarihi], [Cinsi], [Sinifi], [BedenNo], [Sonlandi], [Aktif]) VALUES (18, N'1111111111113', N'Nivea El Bakım Kremi', 12.0000, 5.0000, 1, 0.0000, 0.0000, 0.1200, 0.01, 5, 41, 5, 1, 0, 0, 0xFFD8FFE000104A46494600010101006000600000FFE100224578696600004D4D002A00000008000101120003000000010001000000000000FFDB0043000201010201010202020202020202030503030303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108006300CE03012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA6EF5A757E5B7FC1627FE0A97F18FF0063BFDB0EC3C17E07BEF0EE9FE1F9BC1BA7EB4CD7BA49BA9A4BB9EFB51824C485D57688ED613B719FBC7B8C655AB2A50E796C7BFC33C378CCFB31865981B7B49DEDCCECB44DBD6CFA23F51FCC19A378CF5AFC17B3FF0082F6FED297DE586D73C189E649145C681FDE2431FF005BDB191EB9AFBBFF00E09D5FF05C4F03FED31E0E4D2FE246A9A4F817C6F633FD8AE25BA97ECFA4EA328C80D0CAE76C6CE17708A460C7E608D26C7D9C94332A355F2AD1F9E973EDF893C19E25C9B09F5CAF4D4E09EBC8DC9A5DED64EDE7D3A9F7D6EA5CF354ED757B5BE816582E2196291432BA386560464107B823BD4DF6A8F3FEB17F3AF40FCAF964B4689B3CD19A87ED5163EFA7FDF54BF6C8FF00BEBFF7D502E5649BA8DE2A2FB747FDF5FCE8FB647FF3D13F3A039592EFA5A8FED717FCF45FCE8FB5C7FDF5FCE816A494678A87ED91FF00797F3A3ED71FFCF45FCE81F2B25DD4A4E2A1377101FEB17DA9FE60C706816AB71E4E28A88CCBFDEFC297CE07F8BF4A2E049454625CFF0017E94BF684C7DEA00796C5206C8A69997FC8AABA9EB969A2E9D3DDDE5D436B6769134D3CF3388E38514659998E02A800924F00039A02CFA16FCC18A766BF3E7F6F1FF82D2E89F0FAF6CFC13F07352D2BC4DE31D6166923D746DBAD22C2389660E5194FFA43092168F2BFBBC89177978A445F886FFF00E0BBBFB4C69D710ABEB9E0D1F6845907FC53D8C0F3DA23FF002D7D1777D4FA57995336C3C66E176DAEC8FD2F857C28CF73FC33C560945453B7BCDA7F7599FBC65C034B5F9F3FF0444FF82837C50FDB8BC4FF0015ACBE22DDE8B796FE12B3D127D31EC74C366CAF74FA9ACE1DB732BFFC7AC38031B7273D6BF418715DF46A2A90538ECCF8CCFB24C4E519855CB7176F694DD9D9DD5EC9E8FE615F867FF070E69CD77FF0525D3E48DBE75F86BA3ABED015B68D4F5C6EB924F43C1503233924115FB995F883FF0007064FE4FF00C1456CF8870BF0CF492ADB93796FED1D77AFF1E076DC48E5B6E087CF1E69FEED2F97E68FD03C1195B8BF0CEDD27FFA448F88343F084977A9D9C0BB4992EF68DC7A6CC1FD335E7DE0D8F525F8A7A8683672C7E66AF7B269D3433730DD31978571D3EFAA907F84804631CFAB687ACC763E22B36760AB1DF4FCFA7C91FF00F5EBCCFC1926FF00DA66DE40D956F13EE04771F6826BE3EA5B43FBF54A4E779AE97D4EA3C3DF14EFBE11DCDD68F75E1D86CEEED6E1D6E3ECFA96A3A5CA640769F92D6E228720003223E401CF1CFA17C1C9FE227ED2FAFDE69FE09D0BC4DA84DA7DBFDA6F1C78D6FADAD6CE3C850D2CF7170B147B98ED50CE0B1E064F15E7FF00B524607C71F1037F11BD973EFCF73F9D7DD7FF000498F87FA7FC3DFD8E3C5DE30D5B4797546F1A6AEF6D042F74D121B7D3E35D93C4547FAC335C5CC796C82158608E44AD26E37B25FD7E67CBF88D98E0387F871E770C3C255E6E2A2A49B8B94B7D2EB451BBB5D6C78F69FF00B29FC614B258756B89FC33E26BC332E99E16D5FC73A8DBEB3AB98D99418620CC89E63C6E90F9D247E76D1E5F9A1958FCFF001FED03AB301FE95E253BBA63C57A87FF001CAFD3AFDA07E3869DF0BBFE0A09E0EF02E97E17F06D9E8FE03D3628759D52FAC4EA5A95BD8DA69EFA8EA4A972CE0064B313C292040C84B052A085AF88BC53E18F03FC63FD9BAF35CF0BFC2587C23E2DD5BC57A5786345167E20BCBA8E6B8B84B896E116294ED0A812D907181F6A078C0074C445C5DA0F6BFE09797F91F91785FE2DE5F996613C1E7D848DEACA3ECFD9C55A2B5BF3372BD9593EAF7F45E556FF00B436A2ADFBC93C49276FF91B75218FCA5AB49FB44DE15FF8F7F1275C71E2FD4BAE338FF5BED5FA59F0F3FE097DFB3DF8975CD5F4CBAF05EA325AE8CF71690DEC7E25BC136A5244FE52B85C945F308DFF002821541C03800F79FB477EC67F08FE137C0B17DAB7C25F87ED37889F6DBC16165FD9F3DADB22659D678F32876678C020E421FEF35651A752CE5CCACBD7FCBBE87D0633C76E038548429602A493766DA8AB79A5CDAE9AF43F25BFE1A1EF31FEAFC49FF856EA7CFF00E46A47FDA07509576AAF892261D4FF00C259A9F1FF0091ABECEBEF80DF0E7E0C7C1EF16FC4C8FE11FC3DB8D3B43863D3B4BBA6F1C7FC24D0B6AF71716B1A5B4D66B332AC91DB4D3DC11260A98938E735D17C03F87DE00FDA1341F0F5BEB5F0DFE105F5BF8A8C83EC1A0D91B2D52CD527F20191A175681E46DC62C16DCA0314C30DD328D48DB99DAFAFE36FEB4154F1E3812359468E5D3943ABB453F92E6FD51F03FF00C2F9D55BEEDCF898FF00DCD5A87FF1CA6B7C76D608E2F3C4A3FEE68D43FF008E567FC66F07E9BE01F8B7E2AD0F47D40EADA3E89AC5E58595E921BEDB04570E91CD95F970E815B2A00E78AE67185CD64AACD6ECFEA4C0F0BE4B89C3C3134B0F1E59C5495D6B66B4BA7AA67B87ECB1E35D5FE23FC79F0E69B36A5E26FB1ADC9BBB82DE24BD650908F379CC98E5942E3BEFAFD00F8B5FB5C780FF00643B3F0A49E2B5F17DE47E24925DAD61AB2E2D52268577CAD3DCC4BF33CE8ABF31CE1FA6D39FCF5FD92EFA3F05EAD7DAD37C93488B6711EB8190D21C7B11181F8D1FB74F8D93E37F8EFC236374B1DDDAF9CD28B79503466DEC6220390C48FDE5D6A13263B9B21DD6B27899DED73F863C728E0719C632C060A0952C3C6317CBA2727ABFCD27E855F19FC5FF00155CEB975AAEA3278D2C0EB53C978BB3C4FA9476CDE6B973E5B0902B2E5885DA4AE060607158EFF1975A1FF314F1A7E3E2ED47FF008ED733A6781078644CDE1DD4353F0DB4C49922B29F6DB4B9EBE65B9CC4EA7B82A4554BC9757D34FF00A5E9FA4EB0A7399AC9FF00B2AEF8FF0063125B77E711A741CD72FD62AEEA47C5AC2538249C343B35F8D9AC01CEA1E3039E46EF186A7FD26A8BFE1786AD8FF8FDF177FE167AA7FF001EAE32D35283538EE5A38B54825B480DCCF6F79646195630554B2C8A648E4E48EACBD7EEF069CF060F0B4D62AAAEA1F55A12FB28EDA3F8F9A8429B59BC552FB9F1B6AEB9FC16702A9DF788B50F8DDAED8E9DFD8C350FB2BBDC21D4754BFD4FC80179706EA79563C0032D1AA33050370AE4245DD8FC7A1AF5CFD90EC92E7C45AEEE556C68F792671CE7C9CE7F5E95B51AD52A4B964F430AD87A34A3CF18EA79C7C28F195D6A1F1C60D5EFA66BA998CC858AAA811881A28D142801112301151405455551C015E977CFA6EBF776ADB63658EDE404123E4C317FE1C7426BC63E1671E3585BFEBA9CFF00DB36AE8D356FB35FB36E3F347216C719F97FFD55D78396E99FD0BE12E1FDA6026E3D19FA9BFF0006DFA59B7C59F8F2D6E82391B48F0B170B18DA40975B03E70D96E8460A8C63392490BFAB83815F917FF06C73ABFC50FDA00AED3FF12DF0C10D95DC7F7DADF51F7B1D864E3AE31CD7EBA57DDE03FDDE1E87F25F8AD1E5E2BC6C7FBFFF00B6A0AFC26FF838F3536B3FF828CE9EBE736E3F0CF4A731862427FC4C75C19031804F424139DBC81804FEECD7E0EFFC1C961D7FE0A35A5B15DABFF0ACB4C0AD86C12351D6B2076E38E9CF233FC38CF34FF7797CBF347BBE04ABF19E17D27FFA448F86E0D464FED38C9638170EFD7D501FF0AC6F86473F1F34BEF8D713F333568C4AC6FBA37FAE940E3D224FF1ACFF0086AA63FDA034D5230C35F8D4FF00DFFF00FEB57C7BDCFF004171114B4F2676DFB5203FF0BBFC407D6FA5FF00D0ABEDAFD84FF6C0F065BFECC7E09F0A5D789BC37E1DF11780E59C4FA7F88A692CECF558CDFCD7AB2473052843FDA0C6E8EF1B8F2891B83647C55FB582797F1E7C42ABD16FA5E3F115C15BA13F322827A0207033EBDBDAB1A9271A926BAE9F91C5C4DC0381E2FE1FA39763A72828B8CD38B49A6A2D754D356935FA9FA03F13BE387C29BAF1DFC4CD63C53F146C6F3C5DF1134EBDD3E39FC2FA2DD6AFA7E8AB793C66ED99E568048D25A99ADA3489A45449242CEC70A697ECB7FB4DFC17FD9CAEF4586EBC747C4FA3E83AC4DE20B582FBE14DBC9756D7EF1C2A2786E66BA92485B75B5A13B369C403186C38F84E3CBB91DFBFFF005FB9AD8F0DF83EF3C49A66AF7D0F971D9E8B6E2E2E667242AEE708A808CFEF198E147B31E8A485F5C69A696DEBDEFDCF86C3FD1AF84709414EAE22ADF6E6E68ABB96892B47ADEC975BD8FD45F811FF000521F80BE06F09DC6912F8F3568EF018A486FB53F0C5D416FB137A3C44406E242CFE60704AED1E572738074FF6A0FF00829C7C11F8C5E1FD0B495F88DAA4E34FB036C64B1F0A5DDC42AE246E49B86B7724C6B1E404C0C1F9BB0FC9508C7EF718F5AF42D4F43B6F087ECF7A4DD496B6FF00DA5E2ED4A4B98662A8D2C3676A3CA014E32AB24F2499C75FB30CE718A978A718F2F2AFC7D7B9CF987D19F84B0B5E8CFDAD76EA4945479A096CDB7AC2FA4549EFAD8FAABE37FED3FF000A7E35FC0487C0337C4C6D12C62F161F14FF00C49BE13DB6976EEE2CCDAA068AD6E62DD261E42D2B162C04230BE5E5BAEF82DFB4CFC04F859E30F0A6BBE1DF8816BA1C7A269561A7EA567ABE81A9452EAB736B18826BA55B5B79E348AEA350CC85CB06965CFDEE7E15F83FF08B54F8BDE36B3D16C61B855B87533DCAC0D2A59C4724CAC14818C6719C64F03278A86E3E18EAD65A95E5BDD595C69ED6322C732DE44D0BA390088D933C48411F2F5A9FAE3BF3595FCEFF00E673E3BE8FFE1DE1673A15719529CE11537EFC2EA2DD96F06B56BB5FEFD63F8B1A6E81A3FC4FF1059F84F50FED5F0B5BEA570BA3DE347246D7167BCF92CCB22ABAB797B7702A39CF5C063CFC36EF3CA115773761EB535C5B7D9E668F3B99495CFA91D4D74DF0E3C2326ABE75F3237956FF002C7DF7B91C7E40E7F1159392F43FA0B88B89305C33C332CCEAD4738D382E56DEB376B476B2BC9D9BB24BAEC4DA66B2740B28E352561B7425BF004B1F5E7AFE02A3F10C125EFC67D7A3998B2F84EDADBC33CF38B88835CDF007D3FB42EAE803D822F4ADED02C2D3C35AEC5AA6A918974CD1049ABDF46D8C4B6F67149772C67FEBA240E9EE5B1D78AE37E185BDF278461B8D4DCCDAB6A4F26A57F293932DCDC3B4D2B13DC97763F9573D49AB376F2FF3FC8FF35F2CC457C7E2AB6638B779D59B93F57AFE6FF03A648D1E295DA48E386D62F3A5CFCCC46EC6154639FBC79E3087D4671E78248D55A48DA1F38164524E4A7F7B9EC4E7FEF9CF4AB572C2482E891BBCB251957E56611A06EFD496754503382AC4EDEA20D4CC92DF4DBB74922B94662DB8BB038C927249CFAFA9ED5C32EC8FA4D9E86B5C5A47A6FC17D4AF596359B5DD4ADB4A8471FBC8A33F6CB8718FBCC860B58F07F86EF93F30AE419B38FC7EB5ED50F87AD3507D17C3F24763707C3DA28BA96D9C866375A895B9337964F43650E95C818049F7AD7D23F662B7F17F83FC41AECD0E8BA2E91A0C059EE6FEE1ADDB50B80B95B2B5555669AE9873B40088AB991914AEED2117D353CF956842F3977FF81F99F3C3851D36D7AFFEC6A37788F5FF00FB01DEFF00E891581AB7C18B1989FB0EA135B139F9251E628C7BD7A07ECA1F0BB56D0BC47AF34891DD46DA35EAEE89BE6CF938C056C13CE3A1AE9C23FDEA31C6CD3A6CF9C7E16E4F8B61201E126FCFCA6356356731CDD48FDDBE7F14E2AF7C1FF0DCD67F136CEDEEA265E25201528C7F74E3A1E6BA0F1EF82224B38E6B7DC1BECB24854FA0B28E4FF1FCEBBF0BBB67F44783F888C30338BEE7E8D7FC1AEF22B7C45F8FCBE67CCBA7786331E480B9935AC10318E79EE4E00C81804FEBF57E3FFF00C1AE514907C44FDA0D595BCB8ECBC32A1F0FB58F9BAD12013F29C641E067E6E73C57EC057DEE5D7FAB43D0FE49F17BFE4AFC77F8FF00F6D415F853FF00071869697BFF00051EB16DDF32FC2ED373D3B5FEBA4739C9EFD40031C13CEDFDD6AFC29FF838D7546B2FF828C588D91B6EF85FA602C366E24EA3AE2FA6EE324F271D76E0EECC667FEEF2F97E68F53C0DFF0092C70B6ED3FF00D2247C5F1DAC16F7B26557E4B8BC1D7A6204C7F3AE4FC2CAA9FB4FC613EE2F89CEDFA7DA4E3F4ABF26ACF75A937550D3CEDF5DD1460FE78AC6F876E65F8FF60ECD966D75589F73366BE3FA9FE8154A4D6AFB33BBFDAB886F8F9E226ECD7B2FF3AE6746963F0E451DF49043713B3E6149977C6BD7248E776338C1C73F8E7A1FDAA5F7FC70F101EFF6D94E7F1156BC31F0E0FC51F0958AE977FA643796A1C5DC3757023F2D07FCB4F5DA00C93EFEB5CB8A7EFBF532CFB31A785CBF030C5B71C3CE4A3564AFA47924D26D6A94A4A29BEB7B753D0FE077C41BEFDA1BC5BE1BF0D6B5E0FF000DF8AEDFC38F7DAEDD79938D264BBB6B7B4925F21EE510F9510F2D890AA779080918DF5A573F0721F08FEC47E17D6B5791F4DD33C497377AF5DC8802CD772A17B4D3ACA2DC72C3E4BC9D8E18246E0927299ABF06BE21FC2DF80B0F89B4BB8D43C41A95F6B9E14BBD1751D634A85648E77B89ADFCDB6B55976EC510C32C62E5C1CB4CEDB0A2AABC5E2DFDACE6F89FE0FD27C30341B1D43C2FE1DF0FE97A659D85FDF2433457D6B13AB5EC6015626467943AAE4B218C330E31C7A58F8DC6E1B309E2BFE1130D2A384A7384BDEF7138AE7BB8A9B514DB9A71D135C8AFF652F2ED2B48D2EC629ACEF61924BA6B5694CCB31516EFB494006307DF24E791D79AFA77E1BFC34BCD61B52F11E9BE1E8FC49AB780748D2BC3BE13B19ED964B15B9977B4BA9DD79998C416EE6E1CBCA3CAF31817C0439F975ECF58F1048D1ADBC0B23F2E4488BBBA119248E8738AEB2CBC33A96AC659BC49F1134BD1ED6E235B7BA8CEA125F4EF1A6488CC306E0C3924024004E7239A972162B038FC63F6B8ACC61CF24D3A7172ACEEE51BB8C216694A2A50E556F75EF76CFB13F698F18CBE1FF8CBAC586B1F13B4636FFF000AC21D174DBF9B5C6316B97A12127529A384B91937D7861520C87CA6644DBB4B7CA9ACF897C13A67873C32D0DFEA97D6BA6ACF03DAC76055A4BA2E5A4BB667608DB95A2C461895053715C7CD8971E25F877F0FA32BA1E97A978CF548C605FEBB9B5B28D81E5A3B485F73E474F3652B8E0A1191557E1E7C3FF1B7ED75F152C3C3BA2DAC9AB6B17436C51AA2C169A6DB83F33955023B7B742C09DAA146E0002CCA0BE57277676651E1CE0F0F8275331A93A786846F29CB96973251947E16A52575277E67169ECB52AFC2CF8497FF001FFE2C597877C3F098CDF4CA1AE2F1FF00756301650D713B01848D4B02481C6768C9201FA93E307ECD11FECC9A66ADA56AF716D6B67E14926B7BBBB2E5A1FDDC9E5B499600B6F73C60024B280A090A3EF9FD903F602F08FC0BF01E9FA06896510D7AE2DD07883557679BFB52748F0CE83968903798561FB801EAA4927D43E3C7FC13CFE1DFED171787A2F11DAEAE89A4CD0BB2E997E6CE3D54C681009F602DF741F9E229280C70E3927D4A394D5C45272835E4CFE5DF17BC5EA7C498DA5976139A381A1A457DA9B5A73BFC96BB6BD5A3F03BE2A78B61F12FC2ABE92CE1FB3C3E2ABE83C33652B7988D716A2537B7AFF300BF2A59C713141D6E994B1C11525A3082D3F85163049C9C60633FCABBCFF828B7C48B3F8B3FB76EA89A3C3676FE1BF08C0E9A75ADA2EDB58A29CC76F68225180A874BB0D3A5C0EF70C7A915E74D72D0DBF96C9E6798E222A4741839CFE75E26223C8953BDFAFF005F23CDCBB97D9A9C23CAB4B2EDFD36CB2AD3BC767325BB2C30A0DD70C0AA48F18DC38C60B30DA0AE41DD9E9567E1C78526F1F7C45D17458A64B76D52EA1B413C9F76032C8A81DBFD9527731F635980EF4B898F3BA5F283F670BB59801DB01D47AE56BBDFD9C7E1EDD7C42F11DF69D6B23DBDF6B891F85ACA4C63CBB8D5255D39D8770D0DB5C5CDD02391F62DD9E0D634A0EA4D416ECE8C4D654E94AA4BA2DCF63FD923FE097FAF7FC146FE29DC78BBC4DE05D4BC15F0F75EBA9B55D3FC56F782DEF66B166CD95ADADB1C4876C0618D6428600AACC1998089B88FDA3BC1B756FF00B445F7C3EF803E3CB8F12D97816E8F842C340F114AB757D7BA824E62BA2F2150C5E6BDF31772A2A32244AA4471C6ABFBADF0C74DB682C62B5B3B75B5D3ECD162B785388E089142A2AF3C0545551CF0001D00AF3EF8E5FB307C0BF0EEABE26F8AFE2AF03F85ECF5D8F49BA1A9789ADE036BAB476ED134733C57109499277899A312C4EB2B06DA1CEEE7EF2B6434E341460D2774DB7D96E7E5F85E2CA92AEDD48DE36B462BBF76BADFD4FC95FDA9BC35E17F841FB466B5E0AD12E2F358F0AF83B49B56F11F8DEF8C567A3DB6A3F38B88A338DCE372A88E08BCFB9924F3A34499A124F45FB2F7897C29E20B2D462F06DC5BEAD1C56B7B3CBAD195967B8CDBC6A2016E1B645146E1D943032B96DCC533E5AF2BF1E7F689B6F8F5E39BAB5B6F0F59F84BC15627C8D07C316FB5ACF4BB7DAAA5BCB551189E52BBE57519666DBB995031C3FD9EBE09D9F85BC71AE6A9E173268D79268D77B9237CC2C7CA38057A76FA7AD7CBC674BDBBF64B4FEB63EC1C672C2C7DB3F7ACBFA7E679AE9B79345E35D3CDC46032ACB86C70D98E4CF1F80FCEA6D4665BFD3002C09FECFB807F0D36303F2AE07C09F10B57D5FC49169FAFD92C37F08902CD164473E11C1257B679E053A6F124D6716C0DB7FD1A68F0003C1B6098E9FE715AE0F768FE92F0970CE796C9ADEE7EA47FC1B57A345A4FC67FDA23CB63B9EC3C319181C012EB7820E73D49FE1038E09E42FEB457E46FFC1B23ACC9AD7C4FFDA0E69163DCF61E187DD84DEC0C9AD75E37E38E3712BC90BD093FAE43A57DFE5FFEED0F43F92FC584D716636FBF3FFEDA82BF07FF00E0E456DFFF00051CD3555F730F863A51D9B89550753D6C640C6013C824124EDC1030377EF057E1AFFC1C41A0DC6ADFF0514D36431B8857E1B6948242ADB5CFF68EB65941276E47CA70BF36181391B719E69FEEF2F97E68F67C0C972F19615F94FF00F4891F0059C45F538703E569DC7FE431FF00D6AC6F87471F1C6C8F71AC291F5F3ABD2342F04C771ADD9C6D85F32E640493FECA81587F0B7E0A78835BF8CDA6DD69B6126A56D26B2A545B90CC47DA0AE08CE49F97B035F1D2D1AF53FBCF32CF3058569E2AA2827749C9A49BB3D2EFA973F69D3BFE33EB59FF009FA7CFE758BE09F88F7DF0F9AEA6D33ECF0DDDDC622370413240BC93B39DB92769CB03B4AA918238EB7F6BDF076A9E19F8DFE205BCD3751B4845FCB14725C5ABC4B26188F94B001B907919CD798A1CB00A5777D6B9AB59CDA67D765B1CBB33CAA9D2ABCB529C92BA6D34ED6766BAFA162372C092D9F6A995F20F3D7AE475FF003FAD57C306C0C13EC41ABB6FA4CF73C246EDCE381D6B1D0FA6AB9860F0B4B9EB548C62B76DA4BF1D804C7FBCD9FF003D6A48F748A55771F6EE6B4747F097DAE7DB24F1C409E7273C7D07F8D7D1BFB3BFC3EF877E02923D5BC51632EB6D10122C33C3E7465B8F956023CB39E7895980EB90706B39494773F2EE20F1D38532A4D61A7F58AAB68D35CDAF9CFE1B77D6FE473BFB217FC13CBC75FB5B5FC3756D0B787FC25BBF7BAE5EC24C4C03608823C869D8618614AA8230CEA702BF413C43F113E047FC11E3E16FF64AC924FE26D46149CE956CCB3F88BC412618472CCC30B0C24EFDAF2797128F302077255BC3FE2EFEDE3F143E2D782F57F0EFC21B587C19FD99A4BEA73EA4C8D73A9ADA432410BF945237581BFD22300AA1D83739B88557CC1F1DF84BF660D76EB5D5D67C59757177AA6B1777F2CCD34F717B792CD05AC5773CF2945925B926391F021F366692D278CA2BC454908D49D3556945BBE89DBCEC7F2871D7895997165674B36ACA8E1E0EEA8C1EFA5D397F369D76EC933F52BFE09A3F16BE247C72F8C9A97C60F8997C3C33E17D43C39F61F0F7836D032D8E93617FA94115A6A1705C069E5BA9ACA648E66002C7048E1228A68C2FDE064749E7B43E72B4E854AC7218E4076B67041CAB63386EA1871E95F9E7A67EDD7E1BF07DCF85FC5DA3F8235A8FC1771E1E1E04F1AF84755B4B3F3218EC25365B61816693CC304F24D6FB182C0EB2CEAD221DACBF56780FF6C68BE26785A2F17785745B8F15780CFF00A26A91E8E3CEF147842E51544D6B7FA686792431853B85BC8D73928A96B3293357DB65B4E54697254D3FADFF00AD8FE77CD270AF5F9E82495B44B65E5EBE7D773F247F6CAFF8253FC41FD913E2C789B5ED36C755F1F7C3AD6AFBEDBA6EBDA6D99B99B49B611A45059DFC3165E068228963F3C2F9120556DD1BBB409F37FDBEDE74B758268432C521654903C71F992B36D62382C31F41939009C9FE903E1BFC43F08FC61D1E5D5BC13E24D2F5786C2636F74FA7DC6E934F9C63741711FDF8265E8D14A15D4E55D410457877EDEDFF0004DEF0AFEDD7E1590EACD6FA1F8C214074AF1658E9F1B6A16ACBD229D7727DAADC8255A17718C828C8DCD7958EE1E556F5284B5E8AD75F27FF0000FA5CAF8C27412A38B85EDD767F35D4FC3399FF00D0AD7CBF961922DE13A6D24F3FF7D1191DF6919AFB13FE095BF0CCEB5F183C28ED196FECD8EF7C592FCBBB2E55F49D3B2BD437FA46BADF5B743D70052D57FE0851FB42378BBEC31EA3F0AF54D377151AA7F6A5E59A2443801E0FB1B488FB540091ABAAE00DF819AFBFBF614FD805FF0064CBBD4752D635CB3D6F52D421D3ED561B1B4296B690DADBE36AC9249BDCB5DCD7F71BBCB4C1BB236F049E0CA727AF1C54675A365177F99E8F10711616A60654B0F2BCA5A7C99F52785F4CFF008467C331AC9FEB0A8079E5C9AFCE4FF82AA7ED4DE2BF1378FAF7E1DC9A06B1E1DF09E9F7114C6FAFADA4B7FF00849EE10E7741BB0AF67031550792F2A972142C44FE88EA5AB7992A9271D95473B71DBFCF35E4BFB56D8F86BC4DFB3978D21F171B71A05869B717D24B30CB59DC468DE54C84F4944855401F7C9F2FA332D7D5E69467570F28425CBE7E5D8F83C97154E862E139C79B5B2FF3F53F153C4BA5B26B31C8ABB5B711C1ED5EC7FB3B5C79575AA6EFE1D2EE10FD7CBFFF005D795E9772DAADCCD71327D9D370DA8DFF002CC1E76FA9C74E7278AEE3E0EF8821B3BFD4B2CAABF629DBAFF0ECFF000AFCF28B8C248FD62B273A6780CFA3C7FF000985BDDC6AAACE928200EA4C6C47F31D2B90D660FDEAEDCAFEEE4EDFEC0AF45F08E96D7FE36D26DEE17F78C260F93D0AC2F9FE4B4EF157C348AE2E516DF7A9F225209EF8551FCCB57A181576D9FD1DE10E2E14B2F9C65D59F7D7FC1AEA563F88BF1FC0932C74DF0BB34793B53F79AD01818C738EC49E0640C0CFEBF57E48FF00C1B2DA1DCE87F133E3E473432448DA6F86363956DB21F3B5ACED39DA7036FDDE7919CF15FADD5F7D97FF00BBC3D0FE49F171DF8BB1CFFBCBFF0049415F887FF07075E5BE9BFF000514B398E5AE24F871A2C66358973B7FB4B5DC10DBB3D78C150071F312481FB795F047FC1493FE08B37DFB7FFED2367F106D7E275BF82D6D7C3767E1E7D39BC30350321B6BABDB81379DF6A88804DE63CB2081E5E72776018FA32A945C21B99F85B9E60728E23A18FCCA7C94A3CD7766ED78B4B449BDD9F8B90EBF27F6D5BAC2CA40B8560C54F25D80FF00D94FE75CFF00C0AD3BC657DF13EF2EFC2B7BAFDBEA1F6E9A3B48F4A8E69EFB52BAC1610DBC3102F2C9B46F3C108A0B1396557FD4AB3FF8362F5AB19E3913E3C58F99194604F8149E559987FCC43BE79FD315F76FEC1FFF0004EBF01FEC1DF0FBFB33C3D60BA86BD7809D5BC4379127DBF5476767604A8C24418FCB12FCAA3AEE6DCEDE0D3C9AB4DDAAFBABBE9FA1FD2DC59E3A70BD3C135972FACCE5A28B838C7D65CF1DBC926FD373F36BF672F057EDA1A2F8561B8B0F859E26F175AC8A15E1F1047A4F87CA7CA095F2DEE639A55C37DF75424920A06040EFEFFE107ED0FE2B56FEDFFD88FC37AA4D27DF94F8A3C3C49FFBFAD21FCC9AFD61FB3AC6385E3A609ED53EC15DBFEAFE1FBCBF0FF23F9C717E24D5AD55D5860A8C1BFE45523FFA4D48AFC0FC56F17FFC13DBE34F8C599ADFF653BEF0EEEEDA778D3C3716DFF776EDC74AE2DFFE08FBF192EE76926F80BE3C9377F037C40F0E81F9839FC8D7EEEEC1E83F2A360F41F9566F86F0EFEDCBF0FF0023C5AFC655EB4B9AA51837E6EA3FCEA33F0CAC7FE092FF001834E5061FD9D7C5C927F7BFE13FF0FB30FF0081331357357FF8266FC7A4B7823B6FD9D7C6B342D94957FE161F8755A318E0805B0D83D4135FB83B07A0FCA96B1FF54F097BF34BEF5FE45FFAED8A51E5852A715E4A4BFF006E3F12F4FF00F826AFC7AD3559ADFE03FC44B29244F2DDAD7E246830332E41EA8E3BA820F51CF624517DFF0004D5F8F37F7B35C4DF027E255CCD300ACF2FC4BD09C800A150B993E5C18E3200C63CB4FEEAE3F6D28ADE3C3B4611E58D4925D935FE461538BAB54973CE8536FBB8BBFF00E947E39681FB0F7ED05A5F893FB56F3E02FC42F10348D2FDAAC35AF8A7A5DD5A5FACAF1BC8B21130936B3430B36D752C628F39D82BDC3C1DFB2BEB5F10BC56BACEADFB2F7C58F83FE3860CBFF0967847E2669335CCDB9CC8EF73746FD6E272F233398E68AE119892E1C935FA3B457553CA611F8A7292F369FE36BAF91E7D7CF2751F3429C20ED6BC535F87359FCD1F0FF8FF00F661F8A1AD18EF350F02D8FC4BF1059C7F66B4F10EABADDAF84FC4F0439E51359D1D5258D3AFC915BA061F789AE6BC23E0BFDA6FC21A9F936DA57C6A8D3208B5D5F54F07F8B34780631B23BC966B1D4DC741BE71239EA72791FA0B45753C145ED26BE7AFDFB9C51CC276B4A29FAAFD36FC0F8AED7C45FB5968A9BA4F82BE07F1146B8C48FF001063D26E9FFED8A58CF1AFD04E7EBC7335BFC58FDA288D975FB306AEB2FF007EDBE26E933C3F9BAC6DFF008ED7D9D4557D5B4B464D7DDFE4652C4425F1538FE3FA33E13F147C48FDA52E2EC5BD8FECB3AE985B3FE94FF1174340981C2B206DCCA4FF007594D7CCDFB49FC08FDAFBF69BBD82C757F80DE39B7D06DE559A1B383E20F866D6C6D6400AEF58559DA565070AF33BB0078DBD07EC2D158D7CBD55569CDFE1FE475E1734FABCB9A9D28DFE7FFC91F8871FFC12E7E3569F64B0C7F007C792AA7527E21787B7CADDD8927BF7F7AE37C6FF00F04E3F8E1E1736DAE6A1F087E23681A7E9F2F989676375A778826998721DFF00B3E5793E5E708216527196EF5FBDC466A17B7126DF94123A1F4AF2E5C33867B49DFE5FE47BD4F8DB169EB4E16FFB7BFCD9FCD359E94DA1FC75D26DDA486E21B95BB922B884109205B799586D3F3232488C8E8C014752A73C16EEFF00E11D8EFF0057B54DA7E68994E4119DD71E50FCCE057EC2FEDDBFF04C8F0AFED97630EA967711F837C7F632192D7C476D62972CFBA168192E22665F390C6C07DF471E5C787DABB5BE5DB6FF00837FFC7F697AB70BFB41694D3472432293F0F87DE8AF0DE2F1FDA1DE5273EABF2F1CE7969E4D5F0EDC60B9977D3F53F75E0BF13B87B0F97F2E26ABA337BC5C672F9A718B56ED7B3F21FF00F06FBE851E8DF167E32C8A36BDE786FC2F29FDDA6368BBF102FDE0E58F2AC30CAB8C705B3C7E9F57C9BFF04D8FF826FEB9FB08789FC71AA6B9F112D7C7B278BACB4CD3E0587C351E8E74E8ACA5BF9705D6795A6DED7EF8DE414D9C6771C7D655F4D85838528C5F43F02E38CCF0F9867989C6E125CD4E72BA7AABAB2E8D27F7A0A6B7005145741F28359B69A5FE1FC68A2A56E02E36834E1D28A2A86145145020A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A8C75A28A3ED2264381F929768A28A9285A28A2A80FFD9, CAST(N'2021-04-02' AS Date), N'', N'', 0, 0, 1)
INSERT [dbo].[Urunler] ([id], [Barkod], [UrunAdi], [SatisFiyat], [BirimAlisFiyati], [BirimTipID], [SatisFiyati_2], [SatisFiyati_3], [Kdv], [KdvOrani], [KategoriID], [StokMiktari], [KritikStokMiktari], [TedarikciID], [Ozel_Kod1], [Ozel_Kod2], [UrunResmi], [SonKullanmaTarihi], [Cinsi], [Sinifi], [BedenNo], [Sonlandi], [Aktif]) VALUES (25, N'6563121454658', N'Kareyel Kolonya 1Lt', 12.0000, 2.0000, 4, 0.0000, 0.0000, 0.1200, 0.01, 5, 15, 3, 1009, 0, 0, NULL, CAST(N'2021-04-02' AS Date), N'', N'', 0, 0, 1)
INSERT [dbo].[Urunler] ([id], [Barkod], [UrunAdi], [SatisFiyat], [BirimAlisFiyati], [BirimTipID], [SatisFiyati_2], [SatisFiyati_3], [Kdv], [KdvOrani], [KategoriID], [StokMiktari], [KritikStokMiktari], [TedarikciID], [Ozel_Kod1], [Ozel_Kod2], [UrunResmi], [SonKullanmaTarihi], [Cinsi], [Sinifi], [BedenNo], [Sonlandi], [Aktif]) VALUES (26, N'1234567898888', N'Ülker Çokomel', 10.0000, 5.0000, 1, 0.0000, 0.0000, 0.8000, 0.08, 5, 15, 5, 1, 0, 0, NULL, CAST(N'2021-04-02' AS Date), N'', N'', 0, 0, 1)
INSERT [dbo].[Urunler] ([id], [Barkod], [UrunAdi], [SatisFiyat], [BirimAlisFiyati], [BirimTipID], [SatisFiyati_2], [SatisFiyati_3], [Kdv], [KdvOrani], [KategoriID], [StokMiktari], [KritikStokMiktari], [TedarikciID], [Ozel_Kod1], [Ozel_Kod2], [UrunResmi], [SonKullanmaTarihi], [Cinsi], [Sinifi], [BedenNo], [Sonlandi], [Aktif]) VALUES (27, N'1234567897777', N'Samba Süt Mısır', 5.0000, 1.0000, 1, 0.0000, 0.0000, 0.4000, 0.08, 5, 25, 5, 1, 0, 0, NULL, CAST(N'2021-04-02' AS Date), N'', N'', 0, 0, 0)
INSERT [dbo].[Urunler] ([id], [Barkod], [UrunAdi], [SatisFiyat], [BirimAlisFiyati], [BirimTipID], [SatisFiyati_2], [SatisFiyati_3], [Kdv], [KdvOrani], [KategoriID], [StokMiktari], [KritikStokMiktari], [TedarikciID], [Ozel_Kod1], [Ozel_Kod2], [UrunResmi], [SonKullanmaTarihi], [Cinsi], [Sinifi], [BedenNo], [Sonlandi], [Aktif]) VALUES (28, N'1234567895454', N'Nescafe 3''u Bir Arada', 1.5000, 0.2000, 1, 0.0000, 0.0000, 0.0200, 0.01, 5, 12, 4, 3, 0, 0, NULL, CAST(N'2021-04-02' AS Date), N'', N'', 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Urunler] OFF
GO
ALTER TABLE [dbo].[Kategoriler] ADD  CONSTRAINT [DF_Kategoriler_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Odeme] ADD  CONSTRAINT [DF_Odeme_Tarih]  DEFAULT (getdate()) FOR [Tarih]
GO
ALTER TABLE [dbo].[OdemeDetay] ADD  CONSTRAINT [DF_OdemeDetay_Odendi]  DEFAULT ((0)) FOR [Odendi]
GO
ALTER TABLE [dbo].[Satis] ADD  CONSTRAINT [DF_Satis_SatisTarihi]  DEFAULT (getdate()) FOR [SatisTarihi]
GO
ALTER TABLE [dbo].[Urunler] ADD  CONSTRAINT [DF_Urunler_Sonlandi]  DEFAULT ((0)) FOR [Sonlandi]
GO
ALTER TABLE [dbo].[Urunler] ADD  CONSTRAINT [DF_Urunler_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_Kullanici_Kasa] FOREIGN KEY([KasaID])
REFERENCES [dbo].[Kasa] ([id])
GO
ALTER TABLE [dbo].[Kullanici] CHECK CONSTRAINT [FK_Kullanici_Kasa]
GO
ALTER TABLE [dbo].[Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_Kullanici_Personeller] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[Personeller] ([id])
GO
ALTER TABLE [dbo].[Kullanici] CHECK CONSTRAINT [FK_Kullanici_Personeller]
GO
ALTER TABLE [dbo].[Odeme]  WITH CHECK ADD  CONSTRAINT [FK_Odeme_Borclular] FOREIGN KEY([BorcluID])
REFERENCES [dbo].[Borclular] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Odeme] CHECK CONSTRAINT [FK_Odeme_Borclular]
GO
ALTER TABLE [dbo].[OdemeDetay]  WITH CHECK ADD  CONSTRAINT [FK_OdemeDetay_Odeme] FOREIGN KEY([OdemeID])
REFERENCES [dbo].[Odeme] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OdemeDetay] CHECK CONSTRAINT [FK_OdemeDetay_Odeme]
GO
ALTER TABLE [dbo].[OdemeDetay]  WITH CHECK ADD  CONSTRAINT [FK_OdemeDetay_Satis] FOREIGN KEY([SatisID])
REFERENCES [dbo].[Satis] ([id])
GO
ALTER TABLE [dbo].[OdemeDetay] CHECK CONSTRAINT [FK_OdemeDetay_Satis]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Kullanici] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanici] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Kullanici]
GO
ALTER TABLE [dbo].[SatisDetay]  WITH CHECK ADD  CONSTRAINT [FK_SatisDetay_Satis2] FOREIGN KEY([SatisID])
REFERENCES [dbo].[Satis] ([id])
GO
ALTER TABLE [dbo].[SatisDetay] CHECK CONSTRAINT [FK_SatisDetay_Satis2]
GO
ALTER TABLE [dbo].[SatisDetay]  WITH CHECK ADD  CONSTRAINT [FK_SatisDetay_Urunler] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([id])
GO
ALTER TABLE [dbo].[SatisDetay] CHECK CONSTRAINT [FK_SatisDetay_Urunler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_BirimTipleri] FOREIGN KEY([BirimTipID])
REFERENCES [dbo].[BirimTipleri] ([id])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_BirimTipleri]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Kategoriler] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategoriler] ([id])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Kategoriler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Tedarikciler] FOREIGN KEY([TedarikciID])
REFERENCES [dbo].[Tedarikciler] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Tedarikciler]
GO
/****** Object:  StoredProcedure [dbo].[KarZarar]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[KarZarar]
as
declare @Zarar money
declare @Kar money
declare @Maliyet money
declare @Stok int
declare @SatisFiyat money
declare @SatilanUrunler money
DECLARE @KarOrani float
declare @ZararOrani float


set @SatilanUrunler =(select sum(Fiyat) from SatisDetay)





set @Maliyet=(Select sum(BirimAlisFiyati*StokMiktari) from Urunler)
set @SatisFiyat=@SatilanUrunler

set @Kar=@SatisFiyat-@Maliyet

set @Zarar=@Maliyet-@SatisFiyat


set @KarOrani=@Kar/@Maliyet*100
set @ZararOrani=@Zarar/@Maliyet*100

select @Kar as Kar,
 @Zarar as Zarar,
 @KarOrani as KarOrani,
 @ZararOrani as ZararOrani
GO
/****** Object:  StoredProcedure [dbo].[prc_BirimTipleri_Delete]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_BirimTipleri_Delete]
@Id int
as
delete from BirimTipleri where id=@Id


GO
/****** Object:  StoredProcedure [dbo].[prc_BirimTipleri_Insert]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_BirimTipleri_Insert]
@Adi nvarchar(50),
@Aktif bit
as
insert into BirimTipleri values(@Adi,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_BirimTipleri_Select]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_BirimTipleri_Select]
as
select*from BirimTipleri
GO
/****** Object:  StoredProcedure [dbo].[prc_BirimTipleri_Update]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_BirimTipleri_Update]
@Adi nvarchar(50),
@Aktif bit,
@Id int
as
begin
update BirimTipleri set Adi=@Adi,Aktif=@Aktif where id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Borclular_Delete]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_Borclular_Delete]
@Id int
as
delete from Borclular where id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_Borclular_Insert]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_Borclular_Insert]
@Adi nvarchar(50),
@Soyadi nvarchar(50),
@TelNo nvarchar(15),
@Aciklama nvarchar(100),
@Adres nvarchar(50)
as
begin
insert into Borclular values(@Adi,@Soyadi,@TelNo,@Adres,@Aciklama)
select SCOPE_IDENTITY()
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Borclular_SatisDetay]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_Borclular_SatisDetay]
@SatisID int
as
select u.UrunAdi,sd.Fiyat,sd.Adet from SatisDetay sd 
inner join Urunler u
on sd.UrunID=u.id
where sd.SatisID=@SatisID
GO
/****** Object:  StoredProcedure [dbo].[prc_Borclular_Select]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_Borclular_Select]
as
begin
select distinct sd.SatisID,b.Adi,b.Soyadi,b.Adres,b.Aciklama,b.TelNo,b.id from Borclular b
inner join Odeme o
on b.id=o.BorcluID
inner join OdemeDetay od
on o.id=od.OdemeID
inner join SatisDetay sd
on sd.SatisID=od.SatisID

end
GO
/****** Object:  StoredProcedure [dbo].[prc_Borclular_Update]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_Borclular_Update]
@Id int,
@Adi nvarchar(50),
@Soyadi nvarchar(50),
@TelNo nvarchar(15),
@Aciklama nvarchar(100),
@Adres nvarchar(50)
as
begin
update  Borclular set Adi=@Adi,Soyadi=@Soyadi,TelNo=@TelNo,Aciklama=@Aciklama,Adres=@Adres where id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Kasa_Delete]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[prc_Kasa_Delete]
@Id int
as
begin
delete from Kasa Where id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Kasa_Insert]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_Kasa_Insert]
@Adi nvarchar(50),
@Aktif bit,
@Aciklama nvarchar(150)
as
insert into Kasa values(@Adi,@Aciklama,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Kasa_Select]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_Kasa_Select]
as
select*from Kasa
GO
/****** Object:  StoredProcedure [dbo].[prc_Kasa_Update]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_Kasa_Update]
@Adi nvarchar(50),
@Aciklama nvarchar(150),
@Aktif bit,
@Id int
as
begin
update Kasa set Adi=@Adi,Aciklama=@Aciklama,Aktif=@Aktif where id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Kategoriler_Delete]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[prc_Kategoriler_Delete]
@Id int
as
begin
delete from Kategoriler where id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Kategoriler_Insert]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_Kategoriler_Insert]
@Adi nvarchar(50),
@Aktif bit
as
insert into Kategoriler values(@Adi,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Kategoriler_Select]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_Kategoriler_Select]
as
select*from Kategoriler
GO
/****** Object:  StoredProcedure [dbo].[prc_Kategoriler_Update]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_Kategoriler_Update]
@Adi nvarchar(50),
@Aktif bit,
@Id int
as
begin
update Kategoriler set Adi=@Adi,Aktif=@Aktif where id=@Id
end




GO
/****** Object:  StoredProcedure [dbo].[prc_Kullanici_Insert]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_Kullanici_Insert]
@PersonelID int,
@KasaID int,
@Tarih datetime
as
insert into Kullanici values(@PersonelID,@KasaID,@Tarih)
select SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[prc_Odeme_Insert]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_Odeme_Insert]
@BorcluID int,
@Tarih datetime
as
insert into Odeme values(@BorcluID,@Tarih)
select SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[prc_OdemeDetay_Insert]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_OdemeDetay_Insert]
@OdemeID int,
@SatisID int,
@OdenenTutar money=null,
@Odendi bit=null
as
insert into OdemeDetay values(@OdemeID,@SatisID,@OdenenTutar,@Odendi)
GO
/****** Object:  StoredProcedure [dbo].[prc_OdemeDetay_Select]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_OdemeDetay_Select]
as
select distinct sd.SatisID as FisNo,b.Adi,b.Soyadi,od.OdenenTutar,sd.ToplamBorc,od.Odendi from Borclular b
inner join Odeme o
on o.BorcluID=b.id 
inner join OdemeDetay od
on od.OdemeID=o.id
inner join(
select sum(fiyat) as ToplamBorc,SatisID from SatisDetay group by SatisID
)sd
on sd.SatisID=od.SatisID
GO
/****** Object:  StoredProcedure [dbo].[prc_OdemeDetay_Update]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_OdemeDetay_Update]
@SatisID int,
@OdenenTutar money,
@OdemeID int,
@Odendi bit
as
begin
update OdemeDetay set OdenenTutar=OdenenTutar+@OdenenTutar where SatisID=@SatisID
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Personeller_Delete]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_Personeller_Delete]
@Id int
as
begin
delete from Personeller where id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Personeller_Giris]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_Personeller_Giris]
@Adi nvarchar(50),
@Sifre nvarchar(15)
as
select*from Personeller where Adi=@Adi and Sifre=@Sifre
GO
/****** Object:  StoredProcedure [dbo].[prc_Personeller_Insert]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_Personeller_Insert]
@Adi nvarchar(50),
@Soyadi nvarchar(50),
@Telefon nvarchar(30),
@Adres nvarchar(100),
@Unvan nvarchar(25),
@Aciklama nvarchar(150),
@Sifre nvarchar(15),
@Fotograf image=null
as
begin
insert into Personeller values(@Adi,@Soyadi,@Telefon,@Adres,@Unvan,@Aciklama,@Fotograf,@Sifre)
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Personeller_Select]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_Personeller_Select]
as
select*from Personeller
GO
/****** Object:  StoredProcedure [dbo].[prc_Personeller_Update]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_Personeller_Update]
@Id int,
@Adi nvarchar(50),
@Soyadi nvarchar(50),
@Telefon nvarchar(30),
@Adres nvarchar(50),
@Unvan nvarchar(50),
@Aciklama nvarchar(150),
@Sifre nvarchar(15),
@Fotograf image=null

as
begin
update Personeller set Adi=@Adi,Soyadi=@Soyadi,Telefon=@Telefon,Adres=@Adres,Unvan=@Unvan,Aciklama=@Aciklama,Sifre=@Sifre,Fotograf=@Fotograf where id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Satis_Insert]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_Satis_Insert]
@KullaniciID int,
@SatisTarihi datetime
as
begin
insert into Satis values(@KullaniciID,@SatisTarihi)
select SCOPE_IDENTITY()
end;

GO
/****** Object:  StoredProcedure [dbo].[prc_Satis_Select]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_Satis_Select]
as
begin
select*from Satis
end

GO
/****** Object:  StoredProcedure [dbo].[prc_SatisDetay_Borclu]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_SatisDetay_Borclu]
@SatisID int
as
select u.UrunAdi,sd.Fiyat,sd.Adet from SatisDetay sd 
inner join Urunler u
on sd.UrunID=u.id
where sd.SatisID=@SatisID
GO
/****** Object:  StoredProcedure [dbo].[prc_SatisDetay_GunlukSatisMiktari]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[prc_SatisDetay_GunlukSatisMiktari]
@Sonuc int out
as

declare @Tarih date

set @Tarih=(select GETDATE())
set @Sonuc=(select count(SatisTarihi) from Satis  where SatisTarihi=@Tarih)
select @Sonuc as Sonuc
GO
/****** Object:  StoredProcedure [dbo].[prc_SatisDetay_Insert]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_SatisDetay_Insert]
@SatisID int,
@UrunID int,
@Adet int,
@Fiyat money
as
begin

declare @Kdv as float
declare @ToplamFiyat as decimal
set @Kdv=(select Kdv from Urunler where id=@UrunID)
set @ToplamFiyat=(@Fiyat+@Kdv)*@Adet
insert into SatisDetay(SatisID,UrunID,Adet,Fiyat) values(@SatisID,@UrunID,@Adet,@ToplamFiyat)
end;
GO
/****** Object:  StoredProcedure [dbo].[prc_SatisDetay_Select]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_SatisDetay_Select]
as

select u.UrunAdi,sd.Fiyat,sd.Adet from SatisDetay sd 
inner join Urunler u
on sd.UrunID=u.id
GO
/****** Object:  StoredProcedure [dbo].[prc_SatisDetay_SonSatis]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_SatisDetay_SonSatis]
as
declare @Fisno int
set @Fisno=(select top 1(SatisID) from SatisDetay order by SatisID desc)
Select u.id,u.Barkod,u.UrunAdi,sd.Adet,sd.Fiyat,u.Kdv from SatisDetay sd  
inner join Urunler u on
sd.UrunID=u.id where SatisID=@Fisno
GO
/****** Object:  StoredProcedure [dbo].[prc_Tedarikciler_Delete]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[prc_Tedarikciler_Delete]
@Id int
as
begin
delete from Tedarikciler where id=@Id
end




GO
/****** Object:  StoredProcedure [dbo].[prc_Tedarikciler_Insert]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_Tedarikciler_Insert]
@Adi nvarchar(50),
@Soyadi nvarchar(50),
@SirketAdi nvarchar(50),
@Telefon nvarchar(50),
@Adres nvarchar(80),
@Mail nvarchar(50),
@Aktif bit

as
insert into Tedarikciler values(@Adi,@Soyadi,@SirketAdi,@Telefon,@Adres,@Mail,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Tedarikciler_Select]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_Tedarikciler_Select]
as
select*from Tedarikciler
GO
/****** Object:  StoredProcedure [dbo].[prc_Tedarikciler_Update]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_Tedarikciler_Update]
@Id int,
@Adi nvarchar(50),
@Soyadi nvarchar(50),
@SirketAdi nvarchar(100),
@Telefon nvarchar(30),
@Adres nvarchar(90),
@Mail nvarchar(30),
@Aktif bit
as
begin
update Tedarikciler set Adi=@Adi,Soyadi=@Soyadi,SirketAdi=@SirketAdi,Telefon=@Telefon,Adres=@Adres,Mail=@Mail,Aktif=@Aktif
where id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Urunler_Delete]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_Urunler_Delete]
@Id int
as
update Urunler set Aktif=0 where id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_Urunler_Insert]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_Urunler_Insert]
@KategoriID int,
@Barkod nvarchar(60),
@UrunAdi nvarchar(50),
@Kdv float,
@BirimAlisFiyati money,
@SatisFiyat money,
@SatisFiyati_2 smallmoney,
@SatisFiyati_3 smallmoney,
@KdvOrani float,
@BirimTipID int,
@StokMiktari int,
@TedarikciID int,
@Sinifi nvarchar(50),
@BedenNo int,
@Cinsi nvarchar(50),
@SonKullanmaTarihi smalldatetime,
@KritikStokMiktari int,
@Ozel_Kod1 int,
@Ozel_Kod2 int,
@UrunResmi varbinary(max)=null,
@Sonlandi bit,
@Aktif bit

as
if(exists(select*from Urunler where Barkod=@Barkod))
begin
print 'Bu urun zaten kayıtlı'
end
else
begin
insert into Urunler values(@Barkod,@UrunAdi,@SatisFiyat,@BirimAlisFiyati,@BirimTipID,@SatisFiyati_2,@SatisFiyati_3,@Kdv,@KdvOrani,@KategoriID,@StokMiktari,@KritikStokMiktari,@TedarikciID,@Ozel_Kod1,@Ozel_Kod2,@UrunResmi,@SonKullanmaTarihi,@Cinsi,@Sinifi,@BedenNo,@Sonlandi,@Aktif)
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Urunler_KritikStokRaporu]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[prc_Urunler_KritikStokRaporu]
as
declare @StokTukenenler as int
declare @KritikStoklar as int
set @StokTukenenler=(select StokMiktari from Urunler where StokMiktari=0)

select u.Barkod,u.UrunAdi,u.KritikStokMiktari,u.StokMiktari,b.Adi as BirimTip from Urunler as u
inner join BirimTipleri b
on u.id=b.id
where StokMiktari=0
GO
/****** Object:  StoredProcedure [dbo].[prc_Urunler_Select]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_Urunler_Select]
as
select m.id,m.Barkod,m.UrunAdi,m.SatisFiyat,m.BirimAlisFiyati,b.Adi as BirimTip,SatisFiyati_2,SatisFiyati_3,Kdv,KdvOrani,k.Adi as Kategori,m.StokMiktari,m.KritikStokMiktari,t.SirketAdi as Tedarikci,m.Ozel_Kod1,m.Ozel_Kod2,m.UrunResmi,m.SonKullanmaTarihi,m.Cinsi,m.Sinifi,m.BedenNo,m.Sonlandi from Urunler m
inner join Kategoriler k
on k.id=m.KategoriID
inner join BirimTipleri b
on b.id=m.BirimTipID
inner join Tedarikciler t
on t.id=m.TedarikciID where m.Aktif=1

GO
/****** Object:  StoredProcedure [dbo].[prc_Urunler_SelectById]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prc_Urunler_SelectById]
@id bigint
as
Select* from Urunler where id=@id
GO
/****** Object:  StoredProcedure [dbo].[prc_Urunler_Update]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_Urunler_Update]
@Id int,
@KategoriID int,
@Barkod nvarchar(60),
@UrunAdi nvarchar(50),
@Kdv float,
@BirimAlisFiyati smallmoney,
@SatisFiyat smallmoney,
@SatisFiyati_2 smallmoney,
@SatisFiyati_3 smallmoney,
@KdvOrani float,
@BirimTipID int,
@StokMiktari int,
@TedarikciID int,
@Sinifi nvarchar(50),
@BedenNo int,
@Cinsi nvarchar(50),
@SonKullanmaTarihi date,
@KritikStokMiktari int,
@Ozel_Kod1 int,
@Ozel_Kod2 int,
@UrunResmi varbinary(max)=null,
@Sonlandi bit,
@Aktif bit

as
begin
if(exists(select*from Urunler where id=@Id))
begin
update Urunler set KategoriID=@KategoriID,Barkod=@Barkod,UrunAdi=@UrunAdi,Kdv=@Kdv,BirimAlisFiyati=@BirimAlisFiyati,SatisFiyat=@SatisFiyat,SatisFiyati_2=@SatisFiyati_2,SatisFiyati_3=@SatisFiyati_3,KdvOrani=@KdvOrani,BirimTipID=@BirimTipID,StokMiktari=@StokMiktari,
TedarikciID=@TedarikciID,Sinifi=@Sinifi,BedenNo=@BedenNo,Cinsi=@Cinsi,SonKullanmaTarihi=@SonKullanmaTarihi,KritikStokMiktari=@KritikStokMiktari,Ozel_Kod1=@Ozel_Kod1,Ozel_Kod2=@Ozel_Kod2,UrunResmi=@UrunResmi,Aktif=@Aktif where id=@Id
end
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Urunler_UrunID]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_Urunler_UrunID]
@Barkod nvarchar(60)
as
select* from Urunler where Barkod=@Barkod
GO
/****** Object:  StoredProcedure [dbo].[prc_Urunler_UrunResmi]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_Urunler_UrunResmi]
as
select top 10(UrunResmi),Barkod from Urunler,SatisDetay where id=id order by SatisID desc
GO
/****** Object:  StoredProcedure [dbo].[prc_UrunStok_Update]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[prc_UrunStok_Update]
@Barkod bigint,
@StokMiktari int,
@IslemTuru nvarchar(10)
as
begin
declare @EskiDeger int
declare @ErrorMsg nvarchar(100)=Error_Message()
declare @Severity int=Error_Severity()
declare @ErrorState smallint=Error_State()

set @EskiDeger=(select StokMiktari from Urunler where Barkod=@Barkod)


if(exists(select Barkod from Urunler where Barkod=@Barkod))
begin
if(@IslemTuru='Giris') begin
update Urunler set StokMiktari=StokMiktari+@StokMiktari where Barkod=@Barkod
end
end
if ((@IslemTuru='Cikis') and (select StokMiktari from Urunler where Barkod=@Barkod)>@StokMiktari) 
begin
update Urunler set StokMiktari=StokMiktari-@StokMiktari where Barkod=@Barkod
end
end
GO
/****** Object:  Trigger [dbo].[trg_OdemeDetay_UpdateStock]    Script Date: 23.12.2021 17:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[trg_OdemeDetay_UpdateStock]
on [dbo].[OdemeDetay]
for insert,Update
as 
begin
/*toplam satın alınan fiyata eşitse*/
declare @oId as int
declare @sId as int
declare @ToplamBorc as money
set @oId=(select i.OdemeID from inserted i)
set @sId=(select i.SatisID from inserted i)
set @ToplamBorc=(select sum(Fiyat) from SatisDetay where SatisID=@sId)
set nocount on;
if(@ToplamBorc=(select OdenenTutar from OdemeDetay where OdemeID=@oId))
begin
update OdemeDetay set Odendi=1 where OdemeID=@oId
end
if(@ToplamBorc<(select OdenenTutar from OdemeDetay where OdemeID=@oId))
begin
raiserror ('Odenen tutar Borctan fazla olamaz',16,1)
rollback transaction
end
end
GO
ALTER TABLE [dbo].[OdemeDetay] ENABLE TRIGGER [trg_OdemeDetay_UpdateStock]
GO
/****** Object:  Trigger [dbo].[trg_Urunler_UpdateStock]    Script Date: 23.12.2021 17:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[trg_Urunler_UpdateStock]
on [dbo].[SatisDetay]
after insert
as 
begin
declare @Miktar as integer
declare @id as bigint
declare @sonlandi bit
select @Miktar=Adet, @id=UrunID from dbo.SatisDetay
set @sonlandi=(select Sonlandi from Urunler where id=@id)
/*select id,UrunAdi,StokMiktari from dbo.Urunler where id=@id*/

if(@sonlandi =0)
begin
update Urunler set StokMiktari=StokMiktari-@Miktar where id=@id
end
if((select StokMiktari from Urunler where @id=id)<1)
begin
update Urunler set Sonlandi=1 where id=@id
end
end;
GO
ALTER TABLE [dbo].[SatisDetay] DISABLE TRIGGER [trg_Urunler_UpdateStock]
GO
USE [master]
GO
ALTER DATABASE [MarketOOP] SET  READ_WRITE 
GO
