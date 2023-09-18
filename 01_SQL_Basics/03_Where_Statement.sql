/*
Where Statement
=, <>, <, >, And, Or, Like, Null, Not Null, In
*/



SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim'



SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'



SELECT *
FROM EmployeeDemographics
WHERE Age > 30



SELECT *
FROM EmployeeDemographics
WHERE Age >= 30



SELECT *
FROM EmployeeDemographics
WHERE Age < 32



SELECT *
FROM EmployeeDemographics
WHERE Age <= 32



SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male'



SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'



SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%'



SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%o%'



SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%ott%'



SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%ott%c%'



SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%c%ott%'



SELECT *
FROM EmployeeDemographics
WHERE FirstName is NULL



SELECT *
FROM EmployeeDemographics
WHERE FirstName is NOT NULL



SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim' AND FirstName = 'Michael'



SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael')