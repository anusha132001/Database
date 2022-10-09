

--22-09-2022---
---VIEWS---------
CREATE VIEW ANS_EMP_DEP
AS SELECT E.EMP_ID, E.EMP_NAME, E.EMP_AGE, E.EMP_EMAIL,D.DEP_ID,D.DEP_NAME 
FROM ANS_EMPLOYEE2 AS E
INNER JOIN ANS_DEPARTMENT2 AS D 
ON E.DEP_ID =D.DEP_ID ;

SELECT * FROM ANS_EMP_DEP 

ALTER VIEW ANS_EMP_DEP AS 
SELECT E.EMP_ID, E.EMP_NAME, E.EMP_AGE, E.EMP_EMAIL,E.DEP_ID
FROM ANS_EMPLOYEE2 AS E
WHERE E.EMP_AGE > 25;

INSERT INTO ANS_EMP_DEP VALUES(1008,'RAKESH',26,'raK@gmail.com',1);


UPDATE ANS_EMP_DEP SET EMP_AGE=30 WHERE EMP_ID=1002;

--LEFT  jOIN--

CREATE VIEW ANS_EMP_DEP2
AS SELECT E.EMP_ID, E.EMP_NAME, E.EMP_AGE, E.EMP_EMAIL,D.DEP_ID,D.DEP_NAME 
FROM ANS_EMPLOYEE2 AS E
LEFT JOIN ANS_DEPARTMENT2 AS D 
ON E.DEP_ID =D.DEP_ID ;

SELECT * FROM ANS_EMP_DEP2


--RIGHT  jOIN--

CREATE VIEW ANS_EMP_DEP3
AS SELECT E.EMP_ID, E.EMP_NAME, E.EMP_AGE, E.EMP_EMAIL,D.DEP_ID,D.DEP_NAME 
FROM ANS_EMPLOYEE2 AS E
RIGHT JOIN ANS_DEPARTMENT2 AS D 
ON E.DEP_ID =D.DEP_ID ;

SELECT * FROM ANS_EMP_DEP3


--FULL  jOIN--

CREATE VIEW ANS_EMP_DEP4
AS SELECT E.EMP_ID, E.EMP_NAME, E.EMP_AGE, E.EMP_EMAIL,D.DEP_ID,D.DEP_NAME 
FROM ANS_EMPLOYEE2 AS E
FULL JOIN ANS_DEPARTMENT2 AS D 
ON E.DEP_ID =D.DEP_ID ;

SELECT * FROM ANS_EMP_DEP4


--CROSS jOIN--

CREATE VIEW ANS_EMP_DEP5
AS SELECT E.EMP_ID, E.EMP_NAME, E.EMP_AGE, E.EMP_EMAIL,D.DEP_ID,D.DEP_NAME 
FROM ANS_EMPLOYEE2 AS E, ANS_DEPARTMENT2 AS D 


SELECT * FROM ANS_EMP_DEP5;   ----RETURNS 32 ROWS 


DROP VIEW ANS_EMP_DEP5

SELECT * FROM ANS_EMP_DEP5


---NORMALIZATION---

--1NF---

CREATE TABLE ANS_EMP
(
EMP_ID INT,
EMP_NAME VARCHAR(50),
EMP_MOBILE VARCHAR(30)
)



SELECT * FROM ANS_EMP;

INSERT INTO ANS_EMP VALUES(101,'RITHA','5652522,7787878');

INSERT INTO ANS_EMP VALUES(101,'RITHA','5652522')
INSERT INTO ANS_EMP VALUES(101,'RITHA','7787878');

TRUNCATE TABLE ANS_EMP;


---2NF--
CREATE TABLE ANS_EMP1
(
EMP_ID INT PRIMARY KEY,
EMP_NAME VARCHAR(50),
EMP_MOBILE VARCHAR(30),
DEP_ID INT,
DEP_NAME VARCHAR(20)
)                      ----NOT IN 2NF

--DECOMPOSE TWO TABLES---
CREATE TABLE ANS_EMP2
(
EMP_ID INT PRIMARY KEY,
EMP_NAME VARCHAR(50),
EMP_MOBILE VARCHAR(30),
DEP_ID INT
);

CREATE TABLE ANS_DEP2(
DEP_ID INT PRIMARY KEY,
DEP_NAME VARCHAR(20)
)     

----3NF----

--THE BELOW TABLE HAVING TRANSITIVE DEPENDENCY---
--STUDENT_ID-->SUBJECT_ID-->SUBJECT_NAME--
---STUDENT_ID-->SUBJECT_NAME--
CREATE TABLE ANS_STUDENT_INFO
(
STUDENT_ID INT PRIMARY KEY,
STUDENT_NAME VARCHAR(20),
SUBJECT_ID INT,
SUBJECT_NAME VARCHAR(20),
DOB DATE
)

---REMOVE THE TRANSITIVE DEPENDENCY---
CREATE TABLE ANS_STUD1
(
STUDENT_ID INT PRIMARY KEY,
STUDENT_NAME VARCHAR(20),
SUBJECT_ID INT,
DOB DATE
)

CREATE TABLE STUDENT_INFO
(
SUBJECT_ID INT PRIMARY KEY,
SUBJECT_NAME VARCHAR(20)
)




SELECT E.EMP_ID,E.NAME,A.CITY,A.COUNTRY,D.DEP_ID
FROM ANS_EMPLOYEE1 AS E ,ANS_ADDRESS A,ANS_DEPT D


CREATE TABLE ANS_EMPL1
(
ID INT,
NAME VARCHAR(20),
AGE INT,
SALARY INT);

INSERT INTO ANS_EMPL1 VALUES(101,'JOHN',27,20000); 

INSERT INTO ANS_EMPL1 VALUES
(102,'MEGHANA',22,10000),
(103,'RAMYA',25,21000),
(104,'RITHA',23,23000)



SELECT * FROM ANS_EMPL1 aet 

TRUNCATE TABLE ANS_EMPL1


UPDATE ANS_EMPL1 SET SALARY =30000 WHERE ID=101;

UPDATE ANS_EMPL1 SET SALARY =42000 WHERE ID=102;


SELECT * FROM ANS_EMPLOYEES5



---19-09-2022---
Select * from ANI_STORE as3 



UPDATE ANS_STORE1 SET ORDER_ID =?,SHIP_MODE=?,SEGMENT=?,COUNTRY=? WHERE ROW_ID =?;

--20-09-2022---
SELECT * FROM ANS_EMPCONTAINERS ae 

Truncate table ANS_EMPCONTAINERS


select * FROM ANS_STUD_DETAILS2

Truncate table ANS_STUDENT

Truncate table ANS_SEQUENCE_STUD 

select * FROM ANS_SEQUENCE_STUD ass 



--21-09-2022------

CREATE TABLE ANS_CUSTOMER1(
cust_id int, 
cust_name varchar(100), 
cust_mob varchar(15), 
cust_country varchar(50)) ;


CREATE TABLE ANS_ORDER1(
order_id int,
cust_id int,
order_date date
)

insert into ANS_CUSTOMER1 values(1,'John','78278276278','India'),
(2,'Riva','99278276278','US'),
(3,'Rita','88278276278','India'),
(4,'Mary','76678276278','UK'),
(5,'Richard','99288276278','US');

INSERT into ANS_ORDER1 values
(202,1,'2022-03-10'),
(203,2,'2022-02-12'),
(204,2,'2022-02-09'),
(205,3,'2022-03-02'),
(206,3,'2022-04-10'),
(207,4,'2022-05-11'),
(208,4,'2022-05-08'),
(209,5,'2022-04-05'),
(210,5,'2022-05-02');

SELECT * from ANS_ORDER1 

SELECT c.cust_id,c.cust_name,o.order_id,o.order_date from ANS_CUSTOMER1 as c inner join ANS_ORDER1 as o on
c.cust_id=o.cust_id;







