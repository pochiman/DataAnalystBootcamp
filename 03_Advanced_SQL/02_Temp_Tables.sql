/*
Temp Tables
*/



Temp Table 1 Query:
CREATE TABLE #temp_Employee (
    EmployeeID int,
    JobTitle varchar(100),
    Salary int
)



SELECT *
FROM #temp_Employee



INSERT INTO #temp_Employee 
VALUES ('1001', 'HR', '45000')



INSERT INTO #temp_Employee
SELECT *
FROM SQLTutorial..EmployeeSalary



Temp Table 2 Query:
CREATE TABLE #temp_Employee2 (
    JobTitle varchar(50),
    EmployeesPerJob int,
    AvgAge int,
    AvgSalary int
)



INSERT INTO #temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM SQLTutorial..EmployeeDemographics Demo
JOIN SQLTutorial..EmployeeSalary Sal
    ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle



SELECT *
FROM #temp_Employee2



DROP TABLE IF EXISTS #temp_Employee2
CREATE TABLE #temp_Employee2 (
    JobTitle varchar(50),
    EmployeesPerJob int,
    AvgAge int,
    AvgSalary int
)



INSERT INTO #temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM SQLTutorial..EmployeeDemographics Demo
JOIN SQLTutorial..EmployeeSalary Sal
    ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle



SELECT *
FROM #temp_Employee2