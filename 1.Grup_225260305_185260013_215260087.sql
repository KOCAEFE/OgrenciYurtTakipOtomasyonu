USE [OgrenciYurtTakipSistemi]
GO
/****** Object:  Table [dbo].[Bolumler]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bolumler](
	[BolumId] [int] IDENTITY(1,1) NOT NULL,
	[BolumAdi] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Bolumler] PRIMARY KEY CLUSTERED 
(
	[BolumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odalar]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odalar](
	[OdaId] [int] IDENTITY(1,1) NOT NULL,
	[OdaNo] [int] NOT NULL,
	[KatId] [int] NOT NULL,
	[TipId] [int] NOT NULL,
 CONSTRAINT [PK_Odalar] PRIMARY KEY CLUSTERED 
(
	[OdaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogrenciler]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogrenciler](
	[OgrenciId] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciAd] [varchar](50) NOT NULL,
	[OgrenciSoyad] [varchar](50) NOT NULL,
	[OdaId] [int] NOT NULL,
	[TcId] [int] NOT NULL,
	[BolumId] [int] NOT NULL,
	[VeliId] [int] NOT NULL,
 CONSTRAINT [PK_OgrenciId] PRIMARY KEY CLUSTERED 
(
	[OgrenciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tcler]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tcler](
	[TcId] [int] IDENTITY(1,1) NOT NULL,
	[Tc] [char](11) NOT NULL,
 CONSTRAINT [PK_Tcler] PRIMARY KEY CLUSTERED 
(
	[TcId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Veliler]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Veliler](
	[VeliId] [int] NOT NULL,
	[VeliAd] [varchar](50) NOT NULL,
	[VeliSoyad] [varchar](50) NOT NULL,
	[VeliTel] [varchar](11) NOT NULL,
 CONSTRAINT [PK_Veliler] PRIMARY KEY CLUSTERED 
(
	[VeliId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_OgrenciBilgisi]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_OgrenciBilgisi]
AS
SELECT
    O.OgrenciId,
    O.OgrenciSoyad,
    Od.OdaNo,
    Tc.Tc,
    B.BolumAdi,
    V.VeliAd,
    V.VeliSoyad,
    V.VeliTel
FROM Ogrenciler AS O
INNER JOIN Odalar    AS Od  ON O.OdaId   = Od.OdaId
INNER JOIN Tcler     AS Tc  ON O.TcId    = Tc.TcId
INNER JOIN Bolumler  AS B   ON O.BolumId = B.BolumId
INNER JOIN Veliler   AS V   ON O.VeliId  = V.VeliId;
GO
/****** Object:  Table [dbo].[Katlar]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Katlar](
	[KatId] [int] IDENTITY(1,1) NOT NULL,
	[KatAdi] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Katlar] PRIMARY KEY CLUSTERED 
(
	[KatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OdaTipi]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OdaTipi](
	[TipId] [int] IDENTITY(1,1) NOT NULL,
	[TipAdı] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OdaTipi] PRIMARY KEY CLUSTERED 
(
	[TipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[PersonelId] [int] IDENTITY(1,1) NOT NULL,
	[PersonelAdi] [varchar](50) NOT NULL,
	[PersonelSoyadi] [varchar](50) NOT NULL,
	[PersonelTel] [varchar](11) NOT NULL,
 CONSTRAINT [PK_Personel] PRIMARY KEY CLUSTERED 
(
	[PersonelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temizlik]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temizlik](
	[Temizlikld] [int] IDENTITY(1,1) NOT NULL,
	[PersonelId] [int] NOT NULL,
	[OdaId] [int] NOT NULL,
	[Tarih] [date] NOT NULL,
 CONSTRAINT [PK_Temizlik] PRIMARY KEY CLUSTERED 
(
	[Temizlikld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_TemizlikBilgisi]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_TemizlikBilgisi]
AS
SELECT 
    T.Temizlikld,
    T.Tarih,
    P.PersonelAdi,
    P.PersonelSoyadi,
    P.PersonelTel,
    O.OdaNo,
    K.KatAdi,
    OT.TipAdı
FROM Temizlik AS T
INNER JOIN Personel AS P   ON T.PersonelId = P.PersonelId
INNER JOIN Odalar   AS O   ON T.OdaId      = O.OdaId
INNER JOIN Katlar   AS K   ON O.KatId      = K.KatId
INNER JOIN OdaTipi  AS OT  ON O.TipId      = OT.TipId;
GO
/****** Object:  Table [dbo].[KalanBorc]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KalanBorc](
	[BorcId] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciId] [int] NOT NULL,
	[KalanBorc] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_KalanBorc] PRIMARY KEY CLUSTERED 
(
	[BorcId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_BorcluOgrenciler]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FN_BorcluOgrenciler]()
RETURNS TABLE
AS
RETURN
(
    SELECT 
        O.OgrenciId,
        O.OgrenciAd,
        O.OgrenciSoyad,
        KB.KalanBorc
    FROM Ogrenciler AS O
    INNER JOIN KalanBorc AS KB ON O.OgrenciId = KB.OgrenciId
    WHERE KB.KalanBorc > 0
);
GO
/****** Object:  Table [dbo].[Camasirlar]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camasirlar](
	[CamasirId] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciId] [int] NOT NULL,
	[Tarih] [date] NOT NULL,
	[Ucret] [money] NOT NULL,
 CONSTRAINT [PK_Camasirlar] PRIMARY KEY CLUSTERED 
(
	[CamasirId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kartlar]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kartlar](
	[KartId] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciId] [int] NOT NULL,
 CONSTRAINT [PK_Kartlar] PRIMARY KEY CLUSTERED 
(
	[KartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taksitler]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taksitler](
	[TaksitId] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciId] [int] NOT NULL,
	[Odenen] [decimal](18, 0) NOT NULL,
	[Tarih] [date] NOT NULL,
 CONSTRAINT [PK_Taksitler] PRIMARY KEY CLUSTERED 
(
	[TaksitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yemekler]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yemekler](
	[YemekId] [int] IDENTITY(1,1) NOT NULL,
	[Cesit1] [varchar](50) NOT NULL,
	[Cesit2] [varchar](50) NOT NULL,
	[Cesit3] [varchar](50) NOT NULL,
	[Tarih] [date] NOT NULL,
 CONSTRAINT [PK_Yemekler] PRIMARY KEY CLUSTERED 
(
	[YemekId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bolumler] ON 

INSERT [dbo].[Bolumler] ([BolumId], [BolumAdi]) VALUES (1, N'Bilgisayar Mühendisliği')
INSERT [dbo].[Bolumler] ([BolumId], [BolumAdi]) VALUES (2, N'Tıp')
INSERT [dbo].[Bolumler] ([BolumId], [BolumAdi]) VALUES (3, N'Veterinerlik')
INSERT [dbo].[Bolumler] ([BolumId], [BolumAdi]) VALUES (4, N'Mimarlık')
INSERT [dbo].[Bolumler] ([BolumId], [BolumAdi]) VALUES (5, N'Elektrik Mühendisliği')
INSERT [dbo].[Bolumler] ([BolumId], [BolumAdi]) VALUES (6, N'Eczacılık')
INSERT [dbo].[Bolumler] ([BolumId], [BolumAdi]) VALUES (7, N'Hukuk')
INSERT [dbo].[Bolumler] ([BolumId], [BolumAdi]) VALUES (8, N'Felsefe')
INSERT [dbo].[Bolumler] ([BolumId], [BolumAdi]) VALUES (9, N'Sosyoloji')
INSERT [dbo].[Bolumler] ([BolumId], [BolumAdi]) VALUES (10, N'Psikoloji')
SET IDENTITY_INSERT [dbo].[Bolumler] OFF
GO
SET IDENTITY_INSERT [dbo].[Camasirlar] ON 

INSERT [dbo].[Camasirlar] ([CamasirId], [OgrenciId], [Tarih], [Ucret]) VALUES (1, 1, CAST(N'2025-12-12' AS Date), 50.0000)
INSERT [dbo].[Camasirlar] ([CamasirId], [OgrenciId], [Tarih], [Ucret]) VALUES (2, 2, CAST(N'2024-11-11' AS Date), 100.0000)
INSERT [dbo].[Camasirlar] ([CamasirId], [OgrenciId], [Tarih], [Ucret]) VALUES (3, 3, CAST(N'2024-05-12' AS Date), 50.0000)
INSERT [dbo].[Camasirlar] ([CamasirId], [OgrenciId], [Tarih], [Ucret]) VALUES (4, 4, CAST(N'2025-01-08' AS Date), 150.0000)
INSERT [dbo].[Camasirlar] ([CamasirId], [OgrenciId], [Tarih], [Ucret]) VALUES (5, 5, CAST(N'2025-05-05' AS Date), 200.0000)
INSERT [dbo].[Camasirlar] ([CamasirId], [OgrenciId], [Tarih], [Ucret]) VALUES (6, 6, CAST(N'2024-02-07' AS Date), 100.0000)
INSERT [dbo].[Camasirlar] ([CamasirId], [OgrenciId], [Tarih], [Ucret]) VALUES (7, 7, CAST(N'2024-12-05' AS Date), 50.0000)
INSERT [dbo].[Camasirlar] ([CamasirId], [OgrenciId], [Tarih], [Ucret]) VALUES (8, 1, CAST(N'2024-07-07' AS Date), 50.0000)
INSERT [dbo].[Camasirlar] ([CamasirId], [OgrenciId], [Tarih], [Ucret]) VALUES (9, 2, CAST(N'2024-04-12' AS Date), 100.0000)
SET IDENTITY_INSERT [dbo].[Camasirlar] OFF
GO
SET IDENTITY_INSERT [dbo].[KalanBorc] ON 

INSERT [dbo].[KalanBorc] ([BorcId], [OgrenciId], [KalanBorc]) VALUES (1, 1, CAST(95000 AS Decimal(18, 0)))
INSERT [dbo].[KalanBorc] ([BorcId], [OgrenciId], [KalanBorc]) VALUES (2, 2, CAST(95000 AS Decimal(18, 0)))
INSERT [dbo].[KalanBorc] ([BorcId], [OgrenciId], [KalanBorc]) VALUES (3, 3, CAST(90000 AS Decimal(18, 0)))
INSERT [dbo].[KalanBorc] ([BorcId], [OgrenciId], [KalanBorc]) VALUES (4, 4, CAST(92500 AS Decimal(18, 0)))
INSERT [dbo].[KalanBorc] ([BorcId], [OgrenciId], [KalanBorc]) VALUES (5, 5, CAST(92000 AS Decimal(18, 0)))
INSERT [dbo].[KalanBorc] ([BorcId], [OgrenciId], [KalanBorc]) VALUES (6, 6, CAST(87500 AS Decimal(18, 0)))
INSERT [dbo].[KalanBorc] ([BorcId], [OgrenciId], [KalanBorc]) VALUES (7, 7, CAST(100000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[KalanBorc] OFF
GO
SET IDENTITY_INSERT [dbo].[Kartlar] ON 

INSERT [dbo].[Kartlar] ([KartId], [OgrenciId]) VALUES (1, 1)
INSERT [dbo].[Kartlar] ([KartId], [OgrenciId]) VALUES (2, 2)
INSERT [dbo].[Kartlar] ([KartId], [OgrenciId]) VALUES (3, 3)
INSERT [dbo].[Kartlar] ([KartId], [OgrenciId]) VALUES (4, 4)
INSERT [dbo].[Kartlar] ([KartId], [OgrenciId]) VALUES (5, 5)
INSERT [dbo].[Kartlar] ([KartId], [OgrenciId]) VALUES (6, 6)
INSERT [dbo].[Kartlar] ([KartId], [OgrenciId]) VALUES (7, 7)
SET IDENTITY_INSERT [dbo].[Kartlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Katlar] ON 

INSERT [dbo].[Katlar] ([KatId], [KatAdi]) VALUES (1, N'0')
INSERT [dbo].[Katlar] ([KatId], [KatAdi]) VALUES (2, N'1')
INSERT [dbo].[Katlar] ([KatId], [KatAdi]) VALUES (3, N'2')
INSERT [dbo].[Katlar] ([KatId], [KatAdi]) VALUES (4, N'3')
INSERT [dbo].[Katlar] ([KatId], [KatAdi]) VALUES (5, N'4')
INSERT [dbo].[Katlar] ([KatId], [KatAdi]) VALUES (6, N'5')
INSERT [dbo].[Katlar] ([KatId], [KatAdi]) VALUES (7, N'6')
SET IDENTITY_INSERT [dbo].[Katlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Odalar] ON 

INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (1, 101, 2, 1)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (3, 102, 2, 1)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (4, 103, 2, 2)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (5, 104, 2, 2)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (7, 105, 2, 3)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (8, 201, 3, 1)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (9, 202, 3, 1)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (10, 203, 3, 2)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (12, 204, 3, 2)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (13, 205, 3, 3)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (14, 301, 4, 1)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (15, 302, 4, 1)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (16, 303, 4, 2)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (17, 304, 4, 2)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (18, 305, 4, 3)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (19, 401, 5, 1)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (20, 402, 5, 1)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (21, 403, 5, 2)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (22, 404, 5, 2)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (23, 405, 5, 3)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (24, 501, 6, 1)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (25, 502, 6, 1)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (26, 503, 6, 2)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (27, 504, 6, 2)
INSERT [dbo].[Odalar] ([OdaId], [OdaNo], [KatId], [TipId]) VALUES (28, 505, 6, 3)
SET IDENTITY_INSERT [dbo].[Odalar] OFF
GO
SET IDENTITY_INSERT [dbo].[OdaTipi] ON 

INSERT [dbo].[OdaTipi] ([TipId], [TipAdı]) VALUES (1, N'Tek Kişi')
INSERT [dbo].[OdaTipi] ([TipId], [TipAdı]) VALUES (2, N'Çift Kişi')
INSERT [dbo].[OdaTipi] ([TipId], [TipAdı]) VALUES (3, N'Üç Kişi')
SET IDENTITY_INSERT [dbo].[OdaTipi] OFF
GO
SET IDENTITY_INSERT [dbo].[Ogrenciler] ON 

INSERT [dbo].[Ogrenciler] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OdaId], [TcId], [BolumId], [VeliId]) VALUES (1, N'Efe', N'Kocaefe', 9, 1, 1, 2)
INSERT [dbo].[Ogrenciler] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OdaId], [TcId], [BolumId], [VeliId]) VALUES (2, N'Serhat', N'Yıldırım', 25, 2, 2, 1)
INSERT [dbo].[Ogrenciler] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OdaId], [TcId], [BolumId], [VeliId]) VALUES (3, N'Ahmet', N'Bingöl', 15, 3, 3, 3)
INSERT [dbo].[Ogrenciler] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OdaId], [TcId], [BolumId], [VeliId]) VALUES (4, N'Murat', N'Kısa', 12, 4, 1, 4)
INSERT [dbo].[Ogrenciler] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OdaId], [TcId], [BolumId], [VeliId]) VALUES (5, N'Emre', N'Taş', 20, 5, 7, 5)
INSERT [dbo].[Ogrenciler] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OdaId], [TcId], [BolumId], [VeliId]) VALUES (6, N'Halit', N'Acet', 17, 6, 5, 6)
INSERT [dbo].[Ogrenciler] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OdaId], [TcId], [BolumId], [VeliId]) VALUES (7, N'Hasan', N'Çetinkaya', 7, 7, 8, 7)
INSERT [dbo].[Ogrenciler] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OdaId], [TcId], [BolumId], [VeliId]) VALUES (8, N'Yusuf', N'Barab', 18, 8, 10, 8)
INSERT [dbo].[Ogrenciler] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OdaId], [TcId], [BolumId], [VeliId]) VALUES (9, N'Görkem', N'Önder', 5, 9, 5, 9)
INSERT [dbo].[Ogrenciler] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OdaId], [TcId], [BolumId], [VeliId]) VALUES (10, N'Umut', N'Andaş', 3, 10, 9, 10)
INSERT [dbo].[Ogrenciler] ([OgrenciId], [OgrenciAd], [OgrenciSoyad], [OdaId], [TcId], [BolumId], [VeliId]) VALUES (11, N'Kerem', N'Sert', 5, 11, 4, 11)
SET IDENTITY_INSERT [dbo].[Ogrenciler] OFF
GO
SET IDENTITY_INSERT [dbo].[Personel] ON 

INSERT [dbo].[Personel] ([PersonelId], [PersonelAdi], [PersonelSoyadi], [PersonelTel]) VALUES (1, N'nurullah', N'selim', N'05545850564')
INSERT [dbo].[Personel] ([PersonelId], [PersonelAdi], [PersonelSoyadi], [PersonelTel]) VALUES (2, N'ayşe', N'düztaban', N'05234567891')
INSERT [dbo].[Personel] ([PersonelId], [PersonelAdi], [PersonelSoyadi], [PersonelTel]) VALUES (3, N'aysel', N'kılıç', N'05378754397')
INSERT [dbo].[Personel] ([PersonelId], [PersonelAdi], [PersonelSoyadi], [PersonelTel]) VALUES (4, N'Murat', N'Solmaz', N'05523652832')
INSERT [dbo].[Personel] ([PersonelId], [PersonelAdi], [PersonelSoyadi], [PersonelTel]) VALUES (5, N'Yüksel', N'Kaldırım', N'05643219854')
SET IDENTITY_INSERT [dbo].[Personel] OFF
GO
SET IDENTITY_INSERT [dbo].[Taksitler] ON 

INSERT [dbo].[Taksitler] ([TaksitId], [OgrenciId], [Odenen], [Tarih]) VALUES (1, 1, CAST(5000 AS Decimal(18, 0)), CAST(N'2005-05-25' AS Date))
INSERT [dbo].[Taksitler] ([TaksitId], [OgrenciId], [Odenen], [Tarih]) VALUES (2, 2, CAST(5000 AS Decimal(18, 0)), CAST(N'2025-01-01' AS Date))
INSERT [dbo].[Taksitler] ([TaksitId], [OgrenciId], [Odenen], [Tarih]) VALUES (3, 3, CAST(10000 AS Decimal(18, 0)), CAST(N'2025-01-02' AS Date))
INSERT [dbo].[Taksitler] ([TaksitId], [OgrenciId], [Odenen], [Tarih]) VALUES (4, 4, CAST(7500 AS Decimal(18, 0)), CAST(N'2025-02-15' AS Date))
INSERT [dbo].[Taksitler] ([TaksitId], [OgrenciId], [Odenen], [Tarih]) VALUES (5, 5, CAST(8000 AS Decimal(18, 0)), CAST(N'2025-01-17' AS Date))
INSERT [dbo].[Taksitler] ([TaksitId], [OgrenciId], [Odenen], [Tarih]) VALUES (7, 6, CAST(12500 AS Decimal(18, 0)), CAST(N'2025-01-08' AS Date))
SET IDENTITY_INSERT [dbo].[Taksitler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tcler] ON 

INSERT [dbo].[Tcler] ([TcId], [Tc]) VALUES (1, N'33787147910')
INSERT [dbo].[Tcler] ([TcId], [Tc]) VALUES (2, N'45562398654')
INSERT [dbo].[Tcler] ([TcId], [Tc]) VALUES (3, N'61267232131')
INSERT [dbo].[Tcler] ([TcId], [Tc]) VALUES (4, N'52161626116')
INSERT [dbo].[Tcler] ([TcId], [Tc]) VALUES (5, N'61231236771')
INSERT [dbo].[Tcler] ([TcId], [Tc]) VALUES (6, N'56498568961')
INSERT [dbo].[Tcler] ([TcId], [Tc]) VALUES (7, N'78951068231')
INSERT [dbo].[Tcler] ([TcId], [Tc]) VALUES (8, N'35671231279')
INSERT [dbo].[Tcler] ([TcId], [Tc]) VALUES (9, N'65326721754')
INSERT [dbo].[Tcler] ([TcId], [Tc]) VALUES (10, N'10054816251')
INSERT [dbo].[Tcler] ([TcId], [Tc]) VALUES (11, N'86532198621')
SET IDENTITY_INSERT [dbo].[Tcler] OFF
GO
SET IDENTITY_INSERT [dbo].[Temizlik] ON 

INSERT [dbo].[Temizlik] ([Temizlikld], [PersonelId], [OdaId], [Tarih]) VALUES (1, 4, 5, CAST(N'2025-01-01' AS Date))
INSERT [dbo].[Temizlik] ([Temizlikld], [PersonelId], [OdaId], [Tarih]) VALUES (2, 3, 27, CAST(N'2025-03-05' AS Date))
INSERT [dbo].[Temizlik] ([Temizlikld], [PersonelId], [OdaId], [Tarih]) VALUES (3, 2, 15, CAST(N'2025-02-10' AS Date))
INSERT [dbo].[Temizlik] ([Temizlikld], [PersonelId], [OdaId], [Tarih]) VALUES (4, 1, 12, CAST(N'2025-06-06' AS Date))
SET IDENTITY_INSERT [dbo].[Temizlik] OFF
GO
INSERT [dbo].[Veliler] ([VeliId], [VeliAd], [VeliSoyad], [VeliTel]) VALUES (1, N'mehmet', N'yıldırım', N'05432198761')
INSERT [dbo].[Veliler] ([VeliId], [VeliAd], [VeliSoyad], [VeliTel]) VALUES (2, N'ertan', N'kocaefe', N'05334221485')
INSERT [dbo].[Veliler] ([VeliId], [VeliAd], [VeliSoyad], [VeliTel]) VALUES (3, N'recep ', N'öztürk', N'05433960421')
INSERT [dbo].[Veliler] ([VeliId], [VeliAd], [VeliSoyad], [VeliTel]) VALUES (4, N'kemal', N'aslan', N'05215679876')
INSERT [dbo].[Veliler] ([VeliId], [VeliAd], [VeliSoyad], [VeliTel]) VALUES (5, N'ayşe', N'metin', N'05674120987')
INSERT [dbo].[Veliler] ([VeliId], [VeliAd], [VeliSoyad], [VeliTel]) VALUES (6, N'melisa', N'özkan', N'05414785326')
INSERT [dbo].[Veliler] ([VeliId], [VeliAd], [VeliSoyad], [VeliTel]) VALUES (7, N'ibrahim', N'ışık', N'05375678765')
INSERT [dbo].[Veliler] ([VeliId], [VeliAd], [VeliSoyad], [VeliTel]) VALUES (8, N'Mina', N'Bayda', N'05432167432')
INSERT [dbo].[Veliler] ([VeliId], [VeliAd], [VeliSoyad], [VeliTel]) VALUES (9, N'Veysel', N'Çetin', N'05416303246')
INSERT [dbo].[Veliler] ([VeliId], [VeliAd], [VeliSoyad], [VeliTel]) VALUES (10, N'Rümeysa', N'Yıldız', N'05374562318')
INSERT [dbo].[Veliler] ([VeliId], [VeliAd], [VeliSoyad], [VeliTel]) VALUES (11, N'Şebnem', N'Bozok', N'05385821745')
GO
SET IDENTITY_INSERT [dbo].[Yemekler] ON 

INSERT [dbo].[Yemekler] ([YemekId], [Cesit1], [Cesit2], [Cesit3], [Tarih]) VALUES (1, N'Çorba', N'et sote', N'pilav', CAST(N'2025-05-01' AS Date))
INSERT [dbo].[Yemekler] ([YemekId], [Cesit1], [Cesit2], [Cesit3], [Tarih]) VALUES (2, N'Çorba', N'tavuk sote', N'bulgur', CAST(N'2025-04-02' AS Date))
INSERT [dbo].[Yemekler] ([YemekId], [Cesit1], [Cesit2], [Cesit3], [Tarih]) VALUES (3, N'makarna', N'salata', N'patlıcan', CAST(N'2025-03-04' AS Date))
SET IDENTITY_INSERT [dbo].[Yemekler] OFF
GO
ALTER TABLE [dbo].[Camasirlar]  WITH CHECK ADD  CONSTRAINT [FK_Camasirlar_Ogrenciler] FOREIGN KEY([OgrenciId])
REFERENCES [dbo].[Ogrenciler] ([OgrenciId])
GO
ALTER TABLE [dbo].[Camasirlar] CHECK CONSTRAINT [FK_Camasirlar_Ogrenciler]
GO
ALTER TABLE [dbo].[KalanBorc]  WITH CHECK ADD  CONSTRAINT [FK_KalanBorc_Ogrenciler] FOREIGN KEY([OgrenciId])
REFERENCES [dbo].[Ogrenciler] ([OgrenciId])
GO
ALTER TABLE [dbo].[KalanBorc] CHECK CONSTRAINT [FK_KalanBorc_Ogrenciler]
GO
ALTER TABLE [dbo].[Kartlar]  WITH CHECK ADD  CONSTRAINT [FK_Kartlar_Ogrenciler] FOREIGN KEY([OgrenciId])
REFERENCES [dbo].[Ogrenciler] ([OgrenciId])
GO
ALTER TABLE [dbo].[Kartlar] CHECK CONSTRAINT [FK_Kartlar_Ogrenciler]
GO
ALTER TABLE [dbo].[Odalar]  WITH CHECK ADD  CONSTRAINT [FK_Odalar_Katlar] FOREIGN KEY([KatId])
REFERENCES [dbo].[Katlar] ([KatId])
GO
ALTER TABLE [dbo].[Odalar] CHECK CONSTRAINT [FK_Odalar_Katlar]
GO
ALTER TABLE [dbo].[Odalar]  WITH CHECK ADD  CONSTRAINT [FK_Odalar_OdaTipi] FOREIGN KEY([TipId])
REFERENCES [dbo].[OdaTipi] ([TipId])
GO
ALTER TABLE [dbo].[Odalar] CHECK CONSTRAINT [FK_Odalar_OdaTipi]
GO
ALTER TABLE [dbo].[Ogrenciler]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenciler_Bolumler] FOREIGN KEY([BolumId])
REFERENCES [dbo].[Bolumler] ([BolumId])
GO
ALTER TABLE [dbo].[Ogrenciler] CHECK CONSTRAINT [FK_Ogrenciler_Bolumler]
GO
ALTER TABLE [dbo].[Ogrenciler]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenciler_Odalar] FOREIGN KEY([OdaId])
REFERENCES [dbo].[Odalar] ([OdaId])
GO
ALTER TABLE [dbo].[Ogrenciler] CHECK CONSTRAINT [FK_Ogrenciler_Odalar]
GO
ALTER TABLE [dbo].[Ogrenciler]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenciler_Tcler] FOREIGN KEY([TcId])
REFERENCES [dbo].[Tcler] ([TcId])
GO
ALTER TABLE [dbo].[Ogrenciler] CHECK CONSTRAINT [FK_Ogrenciler_Tcler]
GO
ALTER TABLE [dbo].[Ogrenciler]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenciler_Veliler] FOREIGN KEY([VeliId])
REFERENCES [dbo].[Veliler] ([VeliId])
GO
ALTER TABLE [dbo].[Ogrenciler] CHECK CONSTRAINT [FK_Ogrenciler_Veliler]
GO
ALTER TABLE [dbo].[Taksitler]  WITH CHECK ADD  CONSTRAINT [FK_Taksitler_Ogrenciler] FOREIGN KEY([OgrenciId])
REFERENCES [dbo].[Ogrenciler] ([OgrenciId])
GO
ALTER TABLE [dbo].[Taksitler] CHECK CONSTRAINT [FK_Taksitler_Ogrenciler]
GO
ALTER TABLE [dbo].[Temizlik]  WITH CHECK ADD  CONSTRAINT [FK_Temizlik_Odalar] FOREIGN KEY([OdaId])
REFERENCES [dbo].[Odalar] ([OdaId])
GO
ALTER TABLE [dbo].[Temizlik] CHECK CONSTRAINT [FK_Temizlik_Odalar]
GO
ALTER TABLE [dbo].[Temizlik]  WITH CHECK ADD  CONSTRAINT [FK_Temizlik_Personel] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[Personel] ([PersonelId])
GO
ALTER TABLE [dbo].[Temizlik] CHECK CONSTRAINT [FK_Temizlik_Personel]
GO
/****** Object:  StoredProcedure [dbo].[SP_OgrenciOdemeDetayGetir]    Script Date: 7.01.2025 23:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OgrenciOdemeDetayGetir]
    @OgrenciId INT
AS
BEGIN
    SET NOCOUNT ON;  -- Gereksiz ek çıktıların önüne geçer

    SELECT 
        O.OgrenciId,
        O.OgrenciAd,
        O.OgrenciSoyad,
        -- Örneğin bir TC kolonunuz varsa ekleyebilirsiniz: Tc.Tc,
        T.TaksitId,
        T.Odenen         AS 'OdenenTutar',
        T.Tarih          AS 'OdemeTarihi',
        KB.KalanBorc     AS 'KalanBorc'
    FROM Ogrenciler AS O
    LEFT JOIN Taksitler  AS T  ON O.OgrenciId = T.OgrenciId
    LEFT JOIN KalanBorc  AS KB ON O.OgrenciId = KB.OgrenciId
    WHERE O.OgrenciId = @OgrenciId;

    -- Eğer aynı prosedürde başka işlemler de yapmak isterseniz,
    -- buraya ek sorgularınızı veya mantığınızı ekleyebilirsiniz.
END;
GO
