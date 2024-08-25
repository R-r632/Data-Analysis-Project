CREATE TABLE ParetoProfitContribution (
    ProductName TEXT,
    TotalProfit INTEGER,
    ProfitContribution NUMERIC(10, 5),
    CumulativeProfitContribution NUMERIC(10, 5)
);

COPY ParetoProfitContribution (ProductName, TotalProfit, ProfitContribution, CumulativeProfitContribution)
FROM 'E:/John Company Sales Analysis/Pareto Analysis/ParetoCSV.csv'
DELIMITER ','
CSV HEADER;