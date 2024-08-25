CREATE TABLE FrequencyAgeGroupEmployees (
    AgeGroup TEXT,
    CountOfEmployees INTEGER
);

INSERT INTO FrequencyAgeGroupEmployees (AgeGroup, CountOfEmployees)
VALUES
  ('20-29', 4),
  ('30-39', 13),
  ('40-50', 17),
  ('>50', 16);

CREATE TABLE FrequencyAgeGroupEmployeesbyGender (
    AgeGroup TEXT,
    Female INTEGER,
    Male INTEGER,
    GrandTotal INTEGER
);

INSERT INTO FrequencyAgeGroupEmployeesbyGender (AgeGroup, Female, Male, GrandTotal)
VALUES
  ('20-29', 1, 3, 4),
  ('30-39', 5, 8, 13),
  ('40-50', 6, 11, 17),
  ('>50', 9, 7, 16);

CREATE TABLE FrequencyAgeGroupEmployeesPercentbyGender (
    AgeGroup TEXT,
    FemalePercentage NUMERIC(10, 2),
    MalePercentage NUMERIC(10, 2),
    GrandTotal NUMERIC(10, 2)
);

INSERT INTO FrequencyAgeGroupEmployeesPercentbyGender (AgeGroup, FemalePercentage, MalePercentage, GrandTotal)
VALUES
  ('20-29', 25.00, 75.00, 100.00),
  ('30-39', 38.46, 61.54, 100.00),
  ('40-50', 35.29, 64.71, 100.00),
  ('>50', 56.25, 43.75, 100.00);

CREATE TABLE FrequencyDeptEmployeesbyGender (
    Department TEXT,
    Female INTEGER,
    Male INTEGER,
    GrandTotal INTEGER
);

INSERT INTO FrequencyDeptEmployeesbyGender (Department, Female, Male, GrandTotal)
VALUES
  ('Finance', 3, 8, 11),
  ('Human Resource', 3, 3, 6),
  ('Logistics', 2, 6, 8),
  ('Production', 8, 6, 14),
  ('Sales', 5, 6, 11);