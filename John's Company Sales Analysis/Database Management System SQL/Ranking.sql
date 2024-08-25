CREATE TABLE RankingCountrySales (
    Country TEXT,
    TotalSales INTEGER
);

INSERT INTO RankingCountrySales (Country, TotalSales)
VALUES
  ('United States', 31635241),
  ('China', 7557974),
  ('Germany', 4314956),
  ('France', 2628401),
  ('United Kingdom', 1324267),
  ('Canada', 1148316),
  ('Japan', 958334),
  ('Australia', 632643),
  ('India', 598405),
  ('Russia', 434240),
  ('Turkmenistan', 412370),
  ('Iran', 367953),
  ('Syria', 329671),
  ('Italy', 316881),
  ('Pakistan', 296571);

CREATE TABLE RankingProductProfit (
    ProductName TEXT,
    TotalProfit INTEGER
);

INSERT INTO RankingProductProfit (ProductName, TotalProfit)
VALUES
  ('A. Datum SLR Ca', 129087),
  ('A. Datum SLR Ca', 104428),
  ('Adventure Works', 136985),
  ('Adventure Work:', 114173),
  ('Adventure Works', 147914),
  ('Adventure Work:', 135910),
  ('Adventure Work:', 128914),
  ('Adventure Works', 143720),
  ('Adventure Work:', 168576),
  ('Adventure Work!', 121686),
  ('Contoso Home T', 175997),
  ('Contoso Home T', 116619),
  ('Contoso Projecto', 343349),
  ('Contoso Project', 170378),
  ('Contoso Project', 337366),
  ('Contoso Projecto', 115628),
  ('Contoso SLR Can', 116885),
  ('Fabrikam Busine!', 168787),
  ('Fabrikam Indepe', 157707),
  ('Fabrikam Indepe', 208870),
  ('Fabrikam Indepe', 114479),
  ('Fabrikam Indepe', 108729),
  ('Fabrikam Indepe', 102453),
  ('Fabrikam Laptop', 145691),
  ('Fabrikam Laptop', 169978),
  ('Fabrikam Trends', 107596),
  ('Fabrikam Trends', 133873),
  ('Fabrikam Trends', 152408),
  ('Fabrikam Trends', 108504),
  ('Fabrikam Trends', 166059),
  ('Fabrikam Trends', 185393),
  ('Fabrikam Trends', 149322),
  ('Fabrikam Trends', 163132),
  ('Proseware Proje', 212056),
  ('Proseware Proje', 268987),
  ('Proseware Proje', 157357),
  ('Proseware Proje', 277263),
  ('Proseware Proje', 337808),
  ('WWI Laptop15', 123165),
  ('WWI Laptop15.4', 108291),
  ('WWI Laptop19M', 110776),
  ('WWI Laptop19M', 204271),
  ('WWI LCD24 X301', 108914),
  ('WWI Projector 1', 123514),
  ('WWI Projector 1', 116607);

CREATE TABLE RankingCountrySalesProfit (
    Country TEXT,
    TotalSales INTEGER,
    SalesRanking INTEGER,
    TotalProfit INTEGER,
    ProfitRanking INTEGER
);

INSERT INTO RankingCountrySalesProfit (Country, TotalSales, SalesRanking, TotalProfit, ProfitRanking)
VALUES
  ('Australia', 632643, 8, 426288, 9),
  ('Canada', 1148316, 6, 694190, 6),
  ('China', 7557974, 2, 4955106, 2),
  ('France', 2628401, 4, 1500337, 4),
  ('Germany', 4314956, 3, 2672333, 3),
  ('India', 598405, 9, 428186, 8),
  ('Iran', 367953, 12, 193023, 15),
  ('Italy', 316881, 14, 207847, 13),
  ('Japan', 958334, 7, 625167, 7),
  ('Pakistan', 296571, 15, 198851, 14),
  ('Russia', 434240, 10, 262549, 10),
  ('Syria', 329671, 13, 220881, 12),
  ('Turkmenistan', 412370, 11, 239050, 11),
  ('United Kingdom', 1324267, 5, 830578, 5),
  ('United States', 31635241, 1, 20450813, 1);

CREATE TABLE RankingProdSubCatSales (
    ProductSubCategory TEXT,
    TotalSales INTEGER
);

INSERT INTO RankingProdSubCatSales (ProductSubCategory, TotalSales)
VALUES
  ('Camcorders', 8456121),
  ('Projectors & ', 7036175),
  ('Laptops', 6403174),
  ('Digital SLR C', 5731190),
  ('Home Theat', 4737968);

CREATE TABLE RankingCountryProfitSales (
    Country TEXT,
    TotalSales INTEGER,
    TotalProfit INTEGER
);

INSERT INTO RankingCountryProfitSales (Country, TotalSales, TotalProfit)
VALUES
  ('Armenia', 172935, 135132),
  ('Australia', 632643, 426288),
  ('Bhutan', 161292, 116520),
  ('Canada', 1148316, 694190),
  ('China', 7557974, 4955106),
  ('Denmark', 79145, 54735),
  ('France', 2628401, 1500337),
  ('Germany', 4314956, 2672333),
  ('Greece', 68528, 53280),
  ('India', 598405, 428186),
  ('Iran', 367953, 193023),
  ('Ireland', 92124, 66199),
  ('Italy', 316881, 207847),
  ('Japan', 958334, 625167),
  ('Kyrgyzstan', 127115, 73147),
  ('Malta', 112295, 71621),
  ('Pakistan', 296571, 198851),
  ('Poland', 87830, 63123),
  ('Portugal', 126382, 64637),
  ('Romania', 102279, 70254),
  ('Russia', 434240, 262549),
  ('Singapore', 99223, 55999),
  ('Slovenia', 79881, 61623),
  ('South Korea', 250601, 164187),
  ('Spain', 143433, 101018),
  ('Sweden', 78107, 59534),
  ('Switzerland', 99362, 76118),
  ('Syria', 329671, 220881),
  ('Taiwan', 189009, 125267),
  ('Thailand', 258249, 199626),
  ('the Netherlands', 107747, 72155),
  ('Turkmenistan', 412370, 239050),
  ('United Kingdom', 1324267, 830578),
  ('United States', 31635241, 20450813);