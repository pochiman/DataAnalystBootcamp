/*
String Functions - TRIM, LTRIM, RTRIM, Replace, SUBSTRING, UPPER, LOWER
*/

-- DROP TABLE EmployeeErrors;



CREATE TABLE EmployeeErrors (
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

INSERT INTO EmployeeErrors VALUES 
('1001  ', 'Jimbo', 'Halbert'),
('  1002', 'Pamela', 'Beasely'),
('1005', 'TOby', 'Flenderson - Fired')

SELECT *
FROM EmployeeErrors



-- Using TRIM, LTRIM, RTRIM
SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors



-- Using REPLACE
SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed
FROM EmployeeErrors



-- Using SUBSTRING
SELECT SUBSTRING(FirstName,1,3)
FROM EmployeeErrors

SELECT SUBSTRING(FirstName,3,3)
FROM EmployeeErrors



-- Fuzzy Match
SELECT Err.FirstName, Demo.FirstName
FROM EmployeeErrors Err
JOIN EmployeeDemographics Demo
    ON Err.FirstName = Demo.FirstName



SELECT SUBSTRING(Err.FirstName,1,3), SUBSTRING(Demo.FirstName,1,3)
FROM EmployeeErrors Err
JOIN EmployeeDemographics Demo
    ON SUBSTRING(Err.FirstName,1,3) = SUBSTRING(Demo.FirstName,1,3)



SELECT Err.FirstName, SUBSTRING(Err.FirstName,1,3), Demo.FirstName, SUBSTRING(Demo.FirstName,1,3)
FROM EmployeeErrors Err
JOIN EmployeeDemographics Demo
    ON SUBSTRING(Err.FirstName,1,3) = SUBSTRING(Demo.FirstName,1,3)



/*
When doing Fuzzy Matching, you should ideally include the following to get 
a very high accuracy in matching people across tables whether or not for 
example you have an EmployeeID.  
-- Gender
-- LastName
-- Age
-- DOB
*/



SELECT SUBSTRING(Err.FirstName,1,3), SUBSTRING(Demo.FirstName,1,3), SUBSTRING(Err.LastName,1,3), SUBSTRING(Demo.LastName,1,3)
FROM EmployeeErrors Err
JOIN EmployeeDemographics Demo
	ON SUBSTRING(Err.FirstName,1,3) = SUBSTRING(Demo.FirstName,1,3)
	AND SUBSTRING(Err.LastName,1,3) = SUBSTRING(Demo.LastName,1,3)



-- Using UPPER and LOWER
SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors