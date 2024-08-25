CREATE TABLE CorrelationProdCatSalesProfit (
    ProductCategory TEXT,
    TotalSales INTEGER,
    TotalProfit INTEGER
);

INSERT INTO CorrelationProdCatSalesProfit (ProductCategory, TotalSales, TotalProfit)
VALUES
  ('Audio', 1029381, 591778),
  ('Cameras and camcorders', 17048932, 11374759),
  ('Cell phones', 5841156, 3639742),
  ('Computers', 21306971, 13613496),
  ('Music, Movies and Audio Books', 1057480, 671679),
  ('TV and Video', 9107839, 5697921);

CREATE TABLE CorrelationProdSubCatSalesProfit (
    ProductSubCategory TEXT,
    TotalSales INTEGER,
    TotalProfit INTEGER
);

INSERT INTO CorrelationProdSubCatSalesProfit (ProductSubCategory, TotalSales, TotalProfit)
VALUES
  ('Bluetooth Headphones', 277660, 142887),
  ('Camcorders', 8456121, 5670098),
  ('Cameras & Camcorders Accessories', 321829, 202945),
  ('Car Video', 2093144, 1243947),
  ('Cell phones Accessories', 825948, 558835),
  ('Computers Accessories', 709927, 395441),
  ('Desktops', 3491787, 1870700),
  ('Digital Cameras', 2539792, 1647076),
  ('Digital SLR Cameras', 5731190, 3854640),
  ('Home & Office Phones', 319645, 198426),
  ('Home Theater System', 4737968, 2946634),
  ('Laptops', 6403174, 4193350),
  ('Monitors', 1868936, 1268828),
  ('Movie DVD', 1057480, 671679),
  ('MP4&MP3', 459961, 288293),
  ('Printers, Scanners & Fax', 1796972, 1167342),
  ('Projectors & Screens', 7036175, 4717835),
  ('Recording Pen', 291760, 160597),
  ('Smart phones & PDAs', 2822295, 1708954),
  ('Televisions', 2064342, 1388547),
  ('Touch Screen Phones', 1873268, 1173528),
  ('VCD & DVD', 212386, 118793);