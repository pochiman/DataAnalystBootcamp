/*
Stored Procedures
*/



CREATE PROCEDURE TEST
AS
SELECT *
FROM EmployeeDemographics



EXEC TEST



CREATE PROCEDURE temp_Employee
AS
CREATE TABLE #temp_Employee (
JobTitle varchar(100),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #temp_Employee
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM SQLTutorial..EmployeeDemographics Demo
JOIN SQLTutorial..EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle

SELECT * 
FROM #temp_Employee



EXEC temp_Employee



/*
Go into dbo.temp_Employee and we actually need to change the stored procedure. 
Click Modify then we need to add a parameter. 

When we are executing the stored procedure, we can specify an input into that 
stored procedure so that we get a specific result back.

***** Remember to Run this Modify / Alter command below. *****



USE [SQLTutorial]
GO
/*
Object: StoredProcedure [dbo].[temp_Employee]
*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[temp_Employee]
@JobTitle nvarchar(100)
AS
CREATE TABLE #temp_Employee (
JobTitle varchar(100),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #temp_Employee
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM SQLTutorial..EmployeeDemographics Demo
JOIN SQLTutorial..EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
WHERE JobTitle = @JobTitle
GROUP BY JobTitle

SELECT * 
FROM #temp_Employee
*/



EXEC temp_Employee @JobTitle = 'Salesman'