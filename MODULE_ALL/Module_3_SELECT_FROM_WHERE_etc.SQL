-- ASSIGNMENT-1 er answer
--Employee table qusn a ace
SELECT DISTINCT Department
FROM Employee;

SELECT LastName
FROM Employee
ORDER BY Age DESC;


SELECT LastName
FROM Employee
WHERE Age>30 AND Department = 'Marketing';


SELECT *
FROM Employee;

SELECT *
FROM Employee
WHERE LastName LIKE '%son%';

SELECT *
FROM Employee
WHERE Department = 'Engineering';
