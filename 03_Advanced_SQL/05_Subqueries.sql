/*
Subqueries (in the SELECT, FROM, and WHERE statement)
*/



SELECT *
FROM EmployeeSalary



-- Subquery in SELECT
SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) AS AllAvgSalary
FROM EmployeeSalary



-- How to do it with PARTITION BY
SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
FROM EmployeeSalary



-- Why GROUP BY does not work
SELECT EmployeeID, Salary, AVG(Salary) AS AllAvgSalary
FROM EmployeeSalary
GROUP BY EmployeeID, Salary
ORDER BY 1,2



-- Subquery in FROM
SELECT a.EmployeeID, AllAvgSalary
FROM (SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
    FROM EmployeeSalary) a



-- Subquery in WHERE
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID IN (
    SELECT *
    FROM EmployeeDemographics)

SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID IN (
    SELECT EmployeeID
    FROM EmployeeDemographics
    WHERE Age > 30)