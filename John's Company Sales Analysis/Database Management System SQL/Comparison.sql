CREATE TABLE ComparisonYear (
    Year INT,
    TotalSales BIGINT,
    TotalProfit BIGINT
);

INSERT INTO ComparisonYear (Year, TotalSales, TotalProfit)
VALUES
    (2018, 18919151, 12057185),
    (2019, 17741637, 11378957),
    (2020, 17284124, 11237878),
    (2021, 1446849, 915355);

SELECT * FROM ComparisonYear;

CREATE TABLE ComparisonProductCat (
    Product_Category TEXT,
    Total_Profit BIGINT
);

INSERT INTO ComparisonProductCat (Product_Category, Total_Profit)
VALUES
    ('Audio', 591778),
    ('Cameras and camcorders', 11374759),
    ('Cell phones', 3639742),
    ('Computers', 13613496),
    ('Music, Movies and Audio Books', 671679),
    ('TV and Video', 5697921);

CREATE TABLE ComparisonManufacturer (
    Manufacturer TEXT,
    Total_Sales BIGINT
);

INSERT INTO ComparisonManufacturer (Manufacturer, Total_Sales)
VALUES
    ('A. Datum Corporation', 4404982),
    ('Adventure Works', 7467704),
    ('Contoso, Ltd', 9996750),
    ('Fabrikam, Inc.', 12054281),
    ('Litware, Inc.', 2134837),
    ('Northwind Traders', 136572),
    ('Proseware, Inc.', 5996829),
    ('Southridge Video', 3112730),
    ('The Phone Company', 4386164),
    ('Wide World Importers', 5700910);

CREATE TABLE ComparisonProdChannelSales (
    ProductCategory TEXT,
    Catalog INTEGER,
    Online INTEGER,
    Reseller INTEGER,
    Store INTEGER,
    GrandTotal INTEGER
);

INSERT INTO ComparisonProdChannelSales (ProductCategory, Catalog, Online, Reseller, Store, GrandTotal)
VALUES
  ('Audio', 53274, 248765, 159539, 567803, 1029381),
  ('Cameras and camcorders', 1641341, 3514850, 1933395, 9959345, 17048932),
  ('Cell Phones', 527490, 1114245, 845416, 3354004, 5845611),
  ('Computers', 1682876, 4290928, 304515, 1227652, 2136979),
  ('Music, Movies, and Audio Books', 1111079, 1856541, 191945, 579712, 1058977),
  ('TV and Video', 984231, 215775, 100703, 4972131, 910389)
;

SELECT * FROM ComparisonProdChannelSales;

CREATE TABLE ComparisonProdSubCat (
    ProductSubCategory TEXT,
    TotalProfit INTEGER
);

INSERT INTO ComparisonProdSubCat (ProductSubCategory, TotalProfit)
VALUES
  ('Bluetooth Headphones', 142887),
  ('Camcorders', 5670098),
  ('Cameras & Camcorders Accessories', 202945),
  ('Car Video', 1243947),
  ('Cell phones Accessories', 558835),
  ('Computers Accessories', 395441),
  ('Desktops', 1870700),
  ('Digital Cameras', 1647076),
  ('Digital SLR Cameras', 3854640),
  ('Home & Office Phones', 198426),
  ('Home Theater System', 2946634),
  ('Laptops', 4193350),
  ('Monitors', 1268828),
  ('Movie DVD', 671679),
  ('MP4&MP3', 288293),
  ('Printers, Scanners & Fax', 1167342),
  ('Projectors & Screens', 4717835),
  ('Recording Pen', 160597),
  ('Smart phones & PDAs', 1708954),
  ('Televisions', 1388547),
  ('Touch Screen Phones', 1173528),
  ('VCD & DVD', 118793);

CREATE TABLE ComparisonCountrySalesProf (
    Country TEXT,
    TotalSales INTEGER,
    TotalProfit INTEGER
);

INSERT INTO ComparisonCountrySalesProf (Country, TotalSales, TotalProfit)
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

CREATE TABLE ComparisonManufacOrderQty (
    Manufacturer TEXT,
    TotalOrderQuantity INTEGER
);

INSERT INTO ComparisonManufacOrderQty (Manufacturer, TotalOrderQuantity)
VALUES
  ('A. Datum Corporation', 1342),
  ('Adventure Works', 1125),
  ('Contoso, Ltd', 4891),
  ('Fabrikam, Inc.', 1605),
  ('Litware, Inc.', 348),
  ('Northwind Traders', 206),
  ('Proseware, Inc.', 1639),
  ('Southridge Video', 1540),
  ('The Phone Company', 1314),
  ('Wide World Importers', 990);

CREATE TABLE ComparisonBrandsProfit (
    Brand TEXT,
    AverageProfit INTEGER
);

INSERT INTO ComparisonBrandsProfit (Brand, AverageProfit)
VALUES
  ('A. Datum', 2199),
  ('Adventure Works', 4195),
  ('Contoso', 1303),
  ('Fabrikam', 5075),
  ('Litware', 3884),
  ('Northwind Traders', 265),
  ('Proseware', 2400),
  ('Southridge Video', 1207),
  ('The Phone Company', 2050),
  ('Wide World Importers', 3544);

CREATE TABLE ComparisonChannelsOrderQty (
    Channels TEXT,
    CountOfOrderQty INTEGER
);

INSERT INTO ComparisonChannelsOrderQty (Channels, CountOfOrderQty)
VALUES
  ('Catalog', 884),
  ('Online', 2351),
  ('Reseller', 1784),
  ('Store', 9981);

CREATE TABLE ComparisonProdCatOrderQty (
    ProductCategory TEXT,
    TotalOrderQty INTEGER
);

INSERT INTO ComparisonProdCatOrderQty (ProductCategory, TotalOrderQty)
VALUES
  ('Audio', 732),
  ('Cameras and camcorders', 3590),
  ('Cell phones', 2609),
  ('Computers', 5359),
  ('Music, Movies and Audio Books', 832),
  ('TV and Video', 1878);

CREATE TABLE ComparisonProdCatProfit (
    ProductCategory TEXT,
    TotalProfit INTEGER
);

INSERT INTO ComparisonProdCatProfit (ProductCategory, TotalProfit)
VALUES
  ('Audio', 591778),
  ('Cameras and camcorders', 11374759),
  ('Cell phones', 3639742),
  ('Computers', 13613496),
  ('Music, Movies and Audio Books', 671679),
  ('TV and Video', 5697921);

CREATE TABLE ComparisonManufacturerProfit (
    Manufacturer TEXT,
    TotalProfit INTEGER
);

INSERT INTO ComparisonManufacturerProfit (Manufacturer, TotalProfit)
VALUES
  ('A. Datum Corporation', 2951322),
  ('Adventure Works', 4719802),
  ('Contoso, Ltd', 6373842),
  ('Fabrikam, Inc.', 8144932),
  ('Litware, Inc.', 1351715),
  ('Northwind Traders', 54668),
  ('Proseware, Inc.', 3933085),
  ('Southridge Video', 1858139),
  ('The Phone Company', 2693366),
  ('Wide World Importers', 3508504);