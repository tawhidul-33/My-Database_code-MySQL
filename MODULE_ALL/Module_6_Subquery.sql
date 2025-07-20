SELECT *
FROM EMPLOYEES
WHERE SALARY < (
                SELECT SALARY
                FROM EMPLOYEES
                WHERE EMPLOYEE_ID = 144
                );
                

SELECT * -- FOR HIGHT SALARY BER KORE THEN TAR ALL DETEILS WITH SUBQUERY
FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY)
                FROM EMPLOYEES
                );


SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID = (SELECT DEPARTMENT_ID
					   FROM DEPARTMENTS
                       WHERE DEPARTMENT_NAME='MARKETING');

SELECT DEPARTMENT_NAME
FROM DEPARTMENTS
WHERE DEPARTMENT_ID = ( SELECT DEPARTMENT_ID
					   FROM EMPLOYEES
                       WHERE FIRST_NAME='MICHAEL'AND EMPLOYEE_ID=201
                       );
              

SELECT COUNT(*)
FROM EMPLOYEES
WHERE DEPARTMENT_ID = (SELECT DEPARTMENT_ID
					   FROM DEPARTMENTS
                       WHERE DEPARTMENT_NAME='IT');
                       
SELECT *
FROM EMPLOYEES
WHERE JOB_ID=(SELECT JOB_ID
             FROM JOBS
             WHERE JOB_TITLE='PROGRAMMER');
			
SELECT SUM(SALARY)
FROM EMPLOYEES
WHERE JOB_ID=(SELECT JOB_ID
             FROM JOBS
             WHERE JOB_TITLE='PROGRAMMER');



--Advanced Subquery

-- MAXIMUM SECOND SALARY WITHOUT ADVACED SUBQUER WAY
SELECT *
FROM EMPLOYEES
WHERE SALARY = (SELECT DISTINCT SALARY
                FROM EMPLOYEES
                ORDER BY SALARY DESC
                LIMIT 1
				OFFSET 1);
                
 -- MAXIMUM SECOND SALARY WITH ADVACED SUBQUER WAY               
SELECT *
FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY)
                FROM EMPLOYEES
				WHERE SALARY < (SELECT MAX(SALARY)
                                FROM EMPLOYEES
                                )
				);
 -- MAXIMUM THERD SALARY WITH ADVACED SUBQUER WAY  
SELECT *
FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY)
                FROM EMPLOYEES
				WHERE SALARY < (SELECT MAX(SALARY)
                                FROM EMPLOYEES
                                WHERE SALARY < (SELECT MAX(SALARY)
                                               FROM EMPLOYEES
                                               )
								)
				);