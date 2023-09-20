/*
Partition By
*/



SELECT *
FROM SQLTutorial..EmployeeDemographics

SELECT *
FROM SQLTutorial..EmployeeSalary



SELECT *
FROM SQLTutorial..EmployeeDemographics Demo
JOIN SQLTutorial..EmployeeSalary Sal
    ON Demo.EmployeeID = Sal.EmployeeID



SELECT FirstName, LastName, Gender, Salary,
    COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM SQLTutorial..EmployeeDemographics Demo
JOIN SQLTutorial..EmployeeSalary Sal
    ON Demo.EmployeeID = Sal.EmployeeID



SELECT FirstName, LastName, Gender, Salary, COUNT(Gender)
FROM SQLTutorial..EmployeeDemographics Demo
JOIN SQLTutorial..EmployeeSalary Sal
    ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY FirstName, LastName, Gender, Salary



-- What the PARTITION BY is doing is basically taking this query 
-- right here and sticking it on one line in the SELECT statement.
SELECT Gender, COUNT(Gender)
FROM SQLTutorial..EmployeeDemographics Demo
JOIN SQLTutorial..EmployeeSalary Sal
    ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY Gender