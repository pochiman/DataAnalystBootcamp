/*
Group By, Order By
*/



SELECT Gender
FROM EmployeeDemographics
GROUP BY Gender



SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender



SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age



SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender



SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender DESC



SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY Gender DESC



SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY Gender ASC



SELECT *
FROM EmployeeDemographics
ORDER BY Age



SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC



SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender



SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender DESC



SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC



SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC