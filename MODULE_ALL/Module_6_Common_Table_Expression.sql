-- CTE = Common Table Expressions
WITH TMP AS(SELECT *
            FROM EMPLOYEES
            LIMIT 5)
SELECT *
FROM TMP

-- CTE = Common Table Expressions
WITH TMP_AVG_SALARY AS (
    SELECT AVG(salary) AS avg_salary
    FROM EMPLOYEES
)
SELECT EMPLOYEES.first_name, EMPLOYEES.salary
FROM EMPLOYEES
JOIN TMP_AVG_SALARY ON EMPLOYEES.salary > avg_salary;


-- CTE = Common Table Expressions
-- 2TA CTE BANIYE THEN SORTO SAPEKKHE EMPLOYER SALARY BER KORA HOYECHE
WITH AVGIT AS(
             SELECT AVG(SALARY) AS AVGS
             FROM EMPLOYEES 
             WHERE DEPARTMENT_ID = 60 -- IT DEPARTMENT ER AVG SALARY
             ),
	MAXMKT AS(
             SELECT MAX(SALARY) AS MAXS
             FROM EMPLOYEES 
             WHERE DEPARTMENT_ID = 20 -- MARKETING DEPARTMENT ER MAX SALARY
             )
SELECT *
FROM EMPLOYEES
WHERE SALARY > (SELECT AVGS FROM AVGIT) AND SALARY < (SELECT MAXS FROM MAXMKT);

--OR WITHOUT CLE
SELECT *
FROM EMPLOYEES
WHERE SALARY > (
             SELECT AVG(SALARY)
             FROM EMPLOYEES 
             WHERE DEPARTMENT_ID = 60 -- IT DEPARTMENT ER AVG SALARY
             ) 
             AND SALARY < (
                           SELECT MAX(SALARY)
						   FROM EMPLOYEES 
                           WHERE DEPARTMENT_ID = 20 -- MARKETING DEPARTMENT ER MAX SALARY
                           );