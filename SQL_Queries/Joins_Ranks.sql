
--Joins---


SELECT * FROM S_HRLOCATIONS sh 
select * FROM S_HRCOUNTRIES sh2 

--INNER QUERY 

SELECT
	SH.EMPLOYEE_ID,
	SH2.DEPARTMENT_NAME,
	FIRST_NAME ,
	LAST_NAME,sh2.DEPARTMENT_ID 
FROM
	DBO.S_HREMPLOYEES sh ,
	DBO.S_HRDEPARTMENTS sh2
WHERE
	SH.DEPARTMENT_ID = SH2.DEPARTMENT_ID;


-- INNER JOIN WITH INNER KEY WORD 


SELECT
	SH.EMPLOYEE_ID,
	SH2.DEPARTMENT_NAME,
	FIRST_NAME ,
	LAST_NAME
FROM
	DBO.S_HREMPLOYEES sh
INNER JOIN DBO.S_HRDEPARTMENTS sh2 
ON
	SH.DEPARTMENT_ID = SH2.DEPARTMENT_ID;



---LEFT JOIN QUE

SELECT
	*
FROM
	DBO.S_HREMPLOYEES sh ,
	DBO.S_HRDEPARTMENTS sh2,
	DBO.S_HRLOCATIONS sh3,
	DBO.S_HRCOUNTRIES sh4
WHERE
	SH.DEPARTMENT_ID = SH2.DEPARTMENT_ID
AND SH2.LOCATION_ID=SH3.lOCATION_ID AND SH3.COUNTRY_ID=SH4.COUNTRY_ID;


----Create two tables(like Employee--empId, name, zipcode) 
--and Address table--(zipcode, city, country)Define joins with different types:
--Inner Join
--Left Join
--Right Join
--Full Join
--Cross join

CREATE TABLE ANS_EMPLOYEE1(
EMP_ID INT,
NAME VARCHAR(50),
ZIPCODE INT);

CREATE TABLE ANS_ADDRESS(
ZIPCODE INT,
CITY VARCHAR(20),
COUNTRY VARCHAR(10));

INSERT INTO ANS_ADDRESS VALUES(456434,'STAVENGER','NORWAY'),
(676434,'MANGALORE','INDIA'),
(856434,'SEATLE','USA'),
(213434,'NEWYORK','USA');

INSERT INTO ANS_EMPLOYEE1 VALUES
(101,'JOHN',456434),
(102,'MARY',856434),
(103,'RAMYA',676434),
(104,'RITHA',856434),
(105,'KELVIN',213434),
(106,'JOSEPH',213434),
(107,'NITHYA',676434),
(108,'LILLY',456434)
(109,'CLIVE',226434);

SELECT * FROM ANS_EMPLOYEE1
SELECT * FROM ANS_ADDRESS 



--INNER JOIN--
SELECT E.EMP_ID,E.NAME,A.CITY,A.COUNTRY 
FROM ANS_EMPLOYEE1 AS E 
INNER JOIN ANS_ADDRESS A 
ON E.ZIPCODE=A.ZIPCODE;


--LEFT JOIN---
SELECT E.EMP_ID,E.NAME,A.CITY,A.COUNTRY 
FROM ANS_EMPLOYEE1 AS E 
LEFT JOIN ANS_ADDRESS A 
ON E.ZIPCODE=A.ZIPCODE;

--RIGHT JOIN--
SELECT E.EMP_ID,E.NAME,A.CITY,A.COUNTRY 
FROM ANS_EMPLOYEE1 AS E 
RIGHT JOIN ANS_ADDRESS A 
ON E.ZIPCODE=A.ZIPCODE;

--FULL JOIN--
SELECT E.EMP_ID,E.NAME,A.CITY,A.COUNTRY 
FROM ANS_EMPLOYEE1 AS E 
FULL JOIN ANS_ADDRESS A 
ON E.ZIPCODE=A.ZIPCODE;


--CROSS JOIN--
SELECT E.EMP_ID,E.NAME,A.CITY,A.COUNTRY 
FROM ANS_EMPLOYEE1 AS E ,ANS_ADDRESS A ; ----RETURNS 36 ROWS



--nested query---

SELECT * FROM  S_HREMPLOYEES sh WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID from S_HRDEPARTMENTS sh2 where DEPARTMENT_ID=90)

SELECT * FROM S_HREMPLOYEES sh 

SELECT EMPLOYEE_ID ,DEPARTMENT_ID  FROM  S_HREMPLOYEES sh WHERE  EXISTS 
(SELECT DEPARTMENT_ID from S_HRDEPARTMENTS sh2 where 
SH.DEPARTMENT_ID=SH2.DEPARTMENT_ID )


SELECT * FROM S_HRDEPARTMENTS sh 

select DEPARTMENT_ID ,DEPARTMENT_NAME from S_HRDEPARTMENTS 
WHERE DEPARTMENT_ID  in (select DEPARTMENT_ID  from S_HRDEPARTMENTS
WHERE MANAGER_ID= 108)

select DEPARTMENT_ID ,DEPARTMENT_NAME,MANAGER_ID  from S_HRDEPARTMENTS s 
WHERE EXISTS(select * from S_HRDEPARTMENTS s1
WHERE s.DEPARTMENT_ID =s1.DEPARTMENT_ID  and s1.DEPARTMENT_ID >=120)

UPDATE S_HREMPLOYEES set LAST_NAME ='AAHI' 
WHERE EXISTS (SELECT * FROM S_HREMPLOYEES WHERE EMPLOYEE_ID=138)


--12-09-2022----

create table ANS_DEMO
(
id integer,
name varchar(20));

insert into ANS_DEMO values(1,'john'),
(1,'john'),(1,'john'),(1,'john'),(1,'john'),
(2,'rita'),(2,'rita'),(2,'rita')

delete from ANS_DEMO where id notselect distinct id,name  from ANS_DEMO

select name,count(1) from ANS_DEMO group by name

SELECT * FROM ANS_STUDENT WHERE STUDENT_NAME LIKE '%r'

---dense rank---

SELECT * FROM (
SELECT DENSE_RANK () OVER (PARTITION  BY DEPARTMENT_ID ORDER BY SALARY DESC) AS DRNK,SALARY,DEPARTMENT_ID
FROM DBO.S_HREMPLOYEES sh 
--WHERE DEPARTMENT_ID=90
)X
WHERE DRNK=2

SELECT * FROM (
SELECT DENSE_RANK () OVER (PARTITION  BY name ORDER BY id DESC) AS DRNK,id,name
FROM ANS_DEMO 
--WHERE DEPARTMENT_ID=90
)X



select * from ANS_DEMO ad

----Dense_rank,rank,row number---

SELECT * FROM ANS_EMPLOYEES5

SELECT ROW_NUMBER () OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) 
AS RANKS,SALARY,DEPARTMENT_ID
FROM ANS_EMPLOYEES5
             
SELECT DENSE_RANK () OVER (PARTITION  BY DEPARTMENT_ID ORDER BY SALARY DESC) AS DRNK,SALARY,DEPARTMENT_ID
FROM ANS_EMPLOYEES5


SELECT RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) 
AS RANKS,SALARY,DEPARTMENT_ID
FROM ANS_EMPLOYEES5

CREATE TABLE ANS_CUS
(
cus_id integer,
name varchar(50));

SELECT * FROM  ANS_CUS
--14-09-2022---


SELECT * FROM S_HREMPLOYEES_ANS sha 


CREATE TABLE ANS_STUD_DETAILS(
STUDENT_ID INTEGER,
NAME VARCHAR(20),
ADVISOR_ID INTEGER,
STUDENT_AGE INTEGER);



SELECT * FROM ANS_STUD_DETAILS


create table ANS_orders(
    order_id integer,
    order_name varchar(20),
    cus_id integer,
    cus_name varchar(50));
    
INSERT INTO ANS_orders VALUES
(1,'Keyboard','22','John'),
(2, 'Mouse', '13','Tom'),
(3, 'Monitor','23','Jenny'),
(4, 'Mousepad', '17','Peter'),
(5, 'Printer', '16','Ritha'),
(6, 'Mouse', '26','Nithu');

UPDATE ANS_orders SET cus_id=20 WHERE order_id=3;

DELETE FROM ANS_orders WHERE ORDER_ID=1;

TRUNCATE TABLE ANS_orders;

DROP TABLE ANS_orders ;


SELECT * FROM ans_orders;






















