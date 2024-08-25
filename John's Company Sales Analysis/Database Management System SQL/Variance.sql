CREATE TABLE VarianceProdSubCatDesktop (
    ProductSubCategory TEXT,
    VarianceFromDesktops NUMERIC(10, 2)
);

INSERT INTO VarianceProdSubCatDesktop (ProductSubCategory, VarianceFromDesktops)
VALUES
  ('Bluetooth Headphones', 7.95),
  ('Camcorders', 242.17),
  ('Cameras & Camcorders Accessories', 9.22),
  ('Car Video', 59.94),
  ('Cell phones Accessories', 23.65),
  ('Computers Accessories', 20.33),
  ('Desktops', 100.00),
  ('Digital Cameras', 72.74),
  ('Digital SLR Cameras', 164.13),
  ('Home & Office Phones', 9.15),
  ('Home Theater System', 135.69),
  ('Laptops', 183.38),
  ('Monitors', 53.52),
  ('Movie DVD', 30.28),
  ('MP4&MP3', 13.17),
  ('Printers, Scanners & Fax', 51.46),
  ('Projectors & Screens', 201.51),
  ('Recording Pen', 8.36),
  ('Smart phones & PDAs', 80.83),
  ('Televisions', 59.12),
  ('Touch Screen Phones', 53.65),
  ('VCD & DVD', 6.08);

CREATE TABLE VarianceSalesbetweenMonths (
    Month TEXT,
    Year INTEGER,
    TotalSales INTEGER,
    VarianceBetweenMonths NUMERIC(10, 2),
    VariancePercentage NUMERIC(10, 2)
);

INSERT INTO VarianceSalesbetweenMonths (Month, Year, TotalSales, VarianceBetweenMonths, VariancePercentage)
VALUES
  ('Jan', 2019, 2081908, NULL, NULL),
  ('Feb', 2019, 1252298, -829610.73, -39.85),
  ('Mar', 2019, 1507751, 255453.42, 20.40),
  ('Apr', 2019, 1103451, -404300.32, -26.81),
  ('May', 2019, 1408131, 304680.69, 27.61),
  ('Jun', 2019, 1657980, 249848.65, 17.74),
  ('Jul', 2019, 1248653, -409327.17, -24.69),
  ('Aug', 2019, 1593694, 345040.70, 27.63),
  ('Sep', 2019, 1340433, -253261.09, -15.89),
  ('Oct', 2019, 1300579, -39853.34, -2.97),
  ('Nov', 2019, 1511809, 211229.74, 16.24),
  ('Dec', 2019, 1734950, 223141.40, 14.76);

CREATE TABLE VariancePercentSalesbetweenMonths (
    Month TEXT,
    VariancePercentage NUMERIC(10, 2)
);

INSERT INTO VariancePercentSalesbetweenMonths (Month, VariancePercentage)
VALUES
  ('Jan', NULL),
  ('Feb', -39.85),
  ('Mar', 20.40),
  ('Apr', -26.81),
  ('May', 27.61),
  ('Jun', 17.74),
  ('Jul', -24.69),
  ('Aug', 27.63),
  ('Sep', -15.89),
  ('Oct', -2.97),
  ('Nov', 16.24),
  ('Dec', 14.76);

