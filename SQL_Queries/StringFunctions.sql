


--07-09-2022---
---string functions---

SELECT UPPER(FIRST_NAME ) AS FNAME FROM S_HREMPLOYEES sh ;

SELECT LOWER(FIRST_NAME ) AS FNAME FROM S_HREMPLOYEES sh ;

SELECT LTRIM(FIRST_NAME),RTRIM(LAST_NAME)  FROM S_HREMPLOYEES sh ;

SELECT TRIM('   Database    ') from S_HREMPLOYEES sh ;

SELECT Len(DEPARTMENT_ID) as DEPARTMENT_ID , len(FIRST_NAME) as FIRST_NAME  FROM S_HREMPLOYEES sh ;

SELECT * FROM S_HREMPLOYEES sh ;

SELECT EMPLOYEE_ID , REPLACE(DEPARTMENT_ID,'90','NOT EXIST') AS DEPARTMENT_ID  FROM S_HREMPLOYEES sh  ;

---Case---
SELECT CASE WHEN SALARY<5000 THEN 'LOW'
WHEN SALARY> 5000 AND SALARY<10000 THEN 'MEDIUM '
ELSE 'HIGH'
END AS SALARY_STATUS,EMPLOYEE_ID, SALARY FROM S_HREMPLOYEES sh ;


SELECT FIRST_NAME ,SUBSTRING(FIRST_NAME,1,4) AS SUBSTRING_FN FROM S_HREMPLOYEES sh  

SELECT FIRST_NAME ,CHARINDEX('a',FIRST_NAME) as INDEX_OF_A from S_HREMPLOYEES sh 

 ----Case---

SELECT CASE 
WHEN DEPARTMENT_ID =10 THEN 'HR '
ELSE 'OTHERS'
END AS DEPARTMENT_NAME, FIRST_NAME, DEPARTMENT_ID  FROM S_HREMPLOYEES sh ;


--if account number cotain the $%^& then remove the speciol char and replace with - and get the result set
SELECT * FROM S_HREMPLOYEES sh 


--fetch the domain name only from email address (After @part)
SELECT SUBSTRING('rita@gmail.com',CHARINDEX('@', 'rita@gmail.com')+1 , 
LEN('rita@gmail.com')) FROM S_HREMPLOYEES sh       
        
SELECT REPLACE('45625$%^&674647','$%^&', '-'), 
STUDENT_NAME FROM ANS_STUDENT    


SELECT * FROM ANS_STORE1 as2 where ROW_ID=9995;



CREATE TABLE dlithe.dbo.ANS_STUD_DETAILS2 (
	STUDENT_ID int NULL,
	NAME varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ADVISOR_ID int NULL,
	STUDENT_AGE int NULL
);


SELECT * FROM S_HREMPLOYEES sh 

















