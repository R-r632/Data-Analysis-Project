CREATE TABLE ContributionProdCatSales (
    ProductCategory TEXT,
    TotalSales INTEGER,
    TotalSalesPercentage NUMERIC(10, 2)
);

INSERT INTO ContributionProdCatSales (ProductCategory, TotalSales, TotalSalesPercentage)
VALUES
  ('Audio', 1029381, 1.86),
  ('Cameras and camcorders', 17048932, 30.78),
  ('Cell phones', 5841156, 10.55),
  ('Computers', 21306971, 38.47),
  ('Music, Movies and Audio Books', 1057480, 1.91),
  ('TV and Video', 9107839, 16.44);

CREATE TABLE ContributionProdCatProfit (
    ProductCategory TEXT,
    TotalProfitPercentage NUMERIC(10, 2)
);

INSERT INTO ContributionProdCatProfit (ProductCategory, TotalProfitPercentage)
VALUES
  ('Audio', 1.66),
  ('Cameras and camcorders', 31.96),
  ('Cell phones', 10.23),
  ('Computers', 38.25),
  ('Music, Movies and Audio Books', 1.89),
  ('TV and Video', 16.01);

CREATE TABLE ContributionProdCatChannelSalesPercent (
    ProductCategory TEXT,
    Catalog NUMERIC(10, 2),
    Online NUMERIC(10, 2),
    Reseller NUMERIC(10, 2),
    Store NUMERIC(10, 2),
    GrandTotal NUMERIC(10, 2)
);

INSERT INTO ContributionProdCatChannelSalesPercent (ProductCategory, Catalog, Online, Reseller, Store, GrandTotal)
VALUES
  ('Audio', 5.18, 24.17, 15.50, 55.16, 100.00),
  ('Cameras and camcorders', 9.63, 20.62, 11.34, 58.42, 100.00),
  ('Cell phones', 9.03, 19.08, 14.47, 57.42, 100.00),
  ('Computers', 7.90, 20.14, 14.29, 57.67, 100.00),
  ('Music, Movies and Audio Books', 10.50, 17.56, 17.12, 54.82, 100.00),
  ('TV and Video', 10.81, 23.56, 11.04, 54.59, 100.00);

CREATE TABLE ContributionProdCatRegionSalesPercent (
    ProductCategory TEXT,
    Asia NUMERIC(10, 2),
    Europe NUMERIC(10, 2),
    NorthAmerica NUMERIC(10, 2),
    GrandTotal NUMERIC(10, 2)
);

INSERT INTO ContributionProdCatRegionSalesPercent (ProductCategory, Asia, Europe, NorthAmerica, GrandTotal)
VALUES
  ('Audio', 24.66, 19.96, 55.38, 100.00),
  ('Cameras and camcorders', 22.78, 17.25, 59.98, 100.00),
  ('Cell phones', 23.67, 18.26, 58.08, 100.00),
  ('Computers', 22.48, 19.02, 58.49, 100.00),
  ('Music, Movies and Audio Books', 17.56, 23.49, 58.96, 100.00),
  ('TV and Video', 21.05, 18.47, 60.48, 100.00);

CREATE TABLE ContributionCountryProfitPercent (
    Country TEXT,
    TotalProfit INTEGER,
    ProfitPercentage NUMERIC(10, 2)
);

INSERT INTO ContributionCountryProfitPercent (Country, TotalProfit, ProfitPercentage)
VALUES
  ('Armenia', 135132, 0.38),
  ('Australia', 426288, 1.20),
  ('Bhutan', 116520, 0.33),
  ('Canada', 694190, 1.95),
  ('China', 4955106, 13.92),
  ('Denmark', 54735, 0.15),
  ('France', 1500337, 4.22),
  ('Germany', 2672333, 7.51),
  ('Greece', 53280, 0.15),
  ('India', 428186, 1.20),
  ('Iran', 193023, 0.54),
  ('Ireland', 66199, 0.19),
  ('Italy', 207847, 0.58),
  ('Japan', 625167, 1.76),
  ('Kyrgyzstan', 73147, 0.21),
  ('Malta', 71621, 0.20),
  ('Pakistan', 198851, 0.56),
  ('Poland', 63123, 0.18),
  ('Portugal', 64637, 0.18),
  ('Romania', 70254, 0.20),
  ('Russia', 262549, 0.74),
  ('Singapore', 55999, 0.16),
  ('Slovenia', 61623, 0.17),
  ('South Korea', 164187, 0.46),
  ('Spain', 101018, 0.28),
  ('Sweden', 59534, 0.17),
  ('Switzerland', 76118, 0.21),
  ('Syria', 220881, 0.62),
  ('Taiwan', 125267, 0.35),
  ('Thailand', 199626, 0.56),
  ('the Netherlands', 72155, 0.20),
  ('Turkmenistan', 239050, 0.67),
  ('United Kingdom', 830578, 2.33),
  ('United States', 20450813, 57.46);

CREATE TABLE ContributionProdCatYearProfitPercent (
    ProductCategory TEXT,
    Year2018 NUMERIC(10, 2),
    Year2019 NUMERIC(10, 2),
    Year2020 NUMERIC(10, 2),
    Year2021 NUMERIC(10, 2),
    GrandTotal NUMERIC(10, 2)
);

INSERT INTO ContributionProdCatYearProfitPercent (ProductCategory, Year2018, Year2019, Year2020, Year2021, GrandTotal)
VALUES
  ('Audio', 20.00, 34.88, 42.45, 2.67, 100.00),
  ('Cameras and camcorders', 40.06, 30.63, 27.04, 2.27, 100.00),
  ('Cell phones', 34.63, 29.98, 33.04, 2.35, 100.00),
  ('Computers', 30.77, 31.54, 35.23, 2.46, 100.00),
  ('Music, Movies and Audio Books', 39.38, 35.11, 23.94, 1.57, 100.00),
  ('TV and Video', 29.27, 36.28, 30.75, 3.70, 100.00);

CREATE TABLE ContributionProdCatProfitPercent (
    ProductCategory TEXT,
    ProfitPercentage NUMERIC(10, 2)
);

INSERT INTO ContributionProdCatProfitPercent (ProductCategory, ProfitPercentage)
VALUES
  ('Audio', 1.66),
  ('Cameras and camcorders', 31.96),
  ('Cell phones', 10.23),
  ('Computers', 38.25),
  ('Music, Movies and Audio Books', 1.89),
  ('TV and Video', 16.01);

CREATE TABLE ContributionRegionProfit (
    Region TEXT,
    TotalProfit INTEGER
);

INSERT INTO ContributionRegionProfit (Region, TotalProfit)
VALUES
  ('Asia', 8156432),
  ('Europe', 6287941),
  ('North America', 21145003);

CREATE TABLE ContributionRegiontProfitPercent (
    Region TEXT,
    TotalProfitPercentage NUMERIC(10, 2)
);

INSERT INTO ContributionRegiontProfitPercent (Region, TotalProfitPercentage)
VALUES
  ('Asia', 22.92),
  ('Europe', 17.67),
  ('North America', 59.41);