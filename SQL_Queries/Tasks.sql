--10-09-2022--

        
 SELECT CHARINDEX('O',STUDENT_NAME) AS INDEXES, STUDENT_NAME FROM ANS_STUDENT T    


SELECT EMPLOYEE_ID  FROM S_HREMPLOYEES sh WHERE DEPARTMENT_ID IN (10,20)

select CONCAT('anu',NULL) from ANS_STUDENT as2 ---anu----

select CONCAT(50,0001) from ANS_STUDENT as2 


SELECT salary + NULL 
FROM S_HREMPLOYEES sh 
WHERE EMPLOYEE_ID  = 105 -----NULL ---


SELECT (100-25)/15*(20-3) from ANS_STUDENT as2  --85---

SELECT SUBSTRING('NEHA SINGH',CHARINDEX(' ', 'NEHA SINGH') , LEN('NEHA SINGH')) FROM S_HREMPLOYEES sh 


SELECT CASE WHEN DEPARTMENT_ID =20 THEN 'IT'
WHEN DEPARTMENT_ID =10 THEN 'HR '
WHEN DEPARTMENT_ID =30 AND SALARY >10000 AND FIRST_NAME <>'DAVID' THEN 'FINANCE'
ELSE 'OTHERS'
END AS DEPARTMENT_NAME, FIRST_NAME, DEPARTMENT_ID  FROM S_HREMPLOYEES sh ;

SELECT CONCAT(SUBSTRING('WGH7878AAA',1,3),SUBSTRING('WGH7878AAA',8,10)) FROM S_HREMPLOYEES sh 


SELECT DISTINCT DEPARTMENT_ID, EMPLOYEE_ID FROM S_HREMPLOYEES sh 


---deleting duplicate rows--

WITH DEL_REC AS
(
SELECT *, ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) as xy
from ANS_DEMO

)
delete from DEL_REC where xy>1