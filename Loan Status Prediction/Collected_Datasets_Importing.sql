CREATE TABLE LOANPREDICTION(
	Gender VARCHAR(500),
	Married VARCHAR(500),
	Dependents INT,
	Education VARCHAR(500),
	Self_Employed VARCHAR(500),
	ApplicantIncome FLOAT,
	CoapplicantIncome FLOAT,
	LoanAmount FLOAT,
	Loan_Amount_Term FLOAT,
	Credit_History FLOAT,
	Property_Area VARCHAR(500),
	Loan_Status VARCHAR(500)
);

COPY LOANPREDICTION(Gender, Married, Dependents, 
	Education,Self_Employed,ApplicantIncome,CoapplicantIncome,
	LoanAmount,Loan_Amount_Term,Credit_History,Property_Area,
	Loan_Status)
FROM 'E:\Data Analyst Projects\Loan Status Prediction\Collected Datasets\Exported Loan Prediction.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM LOANPREDICTION;

CREATE TABLE LOANTEST(
	Loan_ID VARCHAR(500),
	Gender VARCHAR(500),
	Married VARCHAR(500),
	Dependents INT,
	Education VARCHAR(500),
	Self_Employed VARCHAR(500),
	ApplicantIncome FLOAT,
	CoapplicantIncome FLOAT,
	LoanAmount FLOAT,
	Loan_Amount_Term FLOAT,
	Credit_History FLOAT,
	Property_Area VARCHAR(500),
	Loan_Status VARCHAR(500),
	LoanAmount_log FLOAT
);

COPY LOANTEST(Loan_ID, Gender, Married, Dependents, 
	Education,Self_Employed,ApplicantIncome,CoapplicantIncome,
	LoanAmount,Loan_Amount_Term,Credit_History,Property_Area,Loan_Status,LoanAmount_log)
FROM 'E:\Data Analyst Projects\Loan Status Prediction\Collected Datasets\Exported Loan Test.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM LOANTEST;

CREATE TABLE LOANTRAIN(
	Loan_ID VARCHAR(500),
	Gender VARCHAR(500),
	Married VARCHAR(500),
	Dependents INT,
	Education VARCHAR(500),
	Self_Employed VARCHAR(500),
	ApplicantIncome FLOAT,
	CoapplicantIncome FLOAT,
	LoanAmount FLOAT,
	Loan_Amount_Term FLOAT,
	Credit_History FLOAT,
	Property_Area VARCHAR(500),
	Loan_Status VARCHAR(500),
	LoanAmount_log FLOAT,
	TotalIncome FLOAT,
	TotalIncome_log FLOAT
);

COPY LOANTRAIN(Loan_ID, Gender, Married, Dependents, 
	Education,Self_Employed,ApplicantIncome,CoapplicantIncome,
	LoanAmount,Loan_Amount_Term,Credit_History,Property_Area,Loan_Status,LoanAmount_log,
	TotalIncome,
	TotalIncome_log)
FROM 'E:\Data Analyst Projects\Loan Status Prediction\Collected Datasets\Exported Loan Train.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM LOANTRAIN;

CREATE TABLE LOANAPPROVED(
	loan_id VARCHAR(500),
	no_of_dependents INT,
	education VARCHAR(500),
	self_employed VARCHAR(500),
	income_annum FLOAT,
	loan_amount FLOAT,
	loan_term FLOAT,
	cibil_score FLOAT,
	residential_assets_value FLOAT,
	commercial_assets_value FLOAT,
	luxury_assets_value FLOAT,
	bank_asset_value FLOAT,
	loan_status VARCHAR(500)
);

COPY LOANAPPROVED(loan_id,	 
	no_of_dependents,	 
	education,	 
	self_employed,	 
	income_annum,	
	loan_amount,	 
	loan_term,	 
	cibil_score,	 
	residential_assets_value,	 
	commercial_assets_value,	 
	luxury_assets_value,	 
	bank_asset_value,	 
	loan_status)
FROM 'E:\Data Analyst Projects\Loan Status Prediction\Collected Datasets\Loan_Approval_Datasets.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM LOANAPPROVED;