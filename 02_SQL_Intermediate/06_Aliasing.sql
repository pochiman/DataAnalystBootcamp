/*
Aliasing
*/



SELECT FirstName AS Fname
FROM SQLTutorial.dbo.EmployeeDemographics



SELECT FirstName Fname
FROM SQLTutorial.dbo.EmployeeDemographics



SELECT FirstName + ' ' + LastName AS FullName
FROM SQLTutorial.dbo.EmployeeDemographics



SELECT AVG(Age) AS AvgAge
FROM SQLTutorial.dbo.EmployeeDemographics



SELECT Demo.EmployeeID
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo



SELECT Demo.EmployeeID, Sal.Salary
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
    ON Demo.EmployeeID = Sal.EmployeeID



SELECT Demo.EmployeeID, Sal.Salary
FROM SQLTutorial.dbo.EmployeeDemographics Demo
JOIN SQLTutorial.dbo.EmployeeSalary Sal
    ON Demo.EmployeeID = Sal.EmployeeID



-- Do not do this.
SELECT a.EmployeeID, a.FirstName, a.FirstName, b.JobTitle, c.Age
FROM SQLTutorial.dbo.EmployeeDemographics a
LEFT JOIN SQLTutorial.dbo.EmployeeSalary b
    ON a.EmployeeID = b.EmployeeID
LEFT JOIN SQLTutorial.dbo.WarehouseEmployeeDemographics c
    ON a.EmployeeID = c.EmployeeID



-- Do this instead.
SELECT Demo.EmployeeID, Demo.FirstName, Demo.FirstName, Sal.JobTitle, Ware.Age
FROM SQLTutorial.dbo.EmployeeDemographics Demo
LEFT JOIN SQLTutorial.dbo.EmployeeSalary Sal
    ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN SQLTutorial.dbo.WarehouseEmployeeDemographics Ware
    ON Demo.EmployeeID = Ware.EmployeeID