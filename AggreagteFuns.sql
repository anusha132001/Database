--08-09-2022--

SELECT * FROM  S_HREMPLOYEES sh2 WHERE  DEPARTMENT_ID =120  

select sum(salary) as salary from S_HREMPLOYEES sh  

select avg(salary) as avg, JOB_ID from S_HREMPLOYEES sh group by JOB_ID 

select min(salary) as Minimun, max(salary) as maximum, DEPARTMENT_ID  from S_HREMPLOYEES sh group by DEPARTMENT_ID 

SELECT count(1) ,DEPARTMENT_ID  from S_HREMPLOYEES sh group by DEPARTMENT_ID  ;


SELECT count(1), DEPARTMENT_ID from S_HREMPLOYEES sh WHERE DEPARTMENT_ID  is NOT NULL 
GROUP BY DEPARTMENT_ID having COUNT(1)>1
ORDER BY DEPARTMENT_ID 


CREATE TABLE ANS_COURSE
(
COURSE_ID INTEGER PRIMARY KEY,
COURSE_NAME VARCHAR(20) NOT NULL
);

CREATE TABLE ANS_STUDENT
(
 STUDENT_ID INT PRIMARY KEY,
 STUDENT_NAME VARCHAR(20) NOT NULL,
 STUDENT_AGE INTEGER CHECK(STUDENT_AGE<=18),
 COURSE_ID INTEGER FOREIGN KEY REFERENCES ANS_COURSE(COURSE_ID)
);

INSERT INTO ANS_STUDENT VALUES (1,'John Deo',17,1),
(2, 'Max Ruin', 16, 2),
(3, 'Arnold', 16,3);
INSERT INTO ANS_STUDENT VALUES
(4, 'Krish Star', 17, 4),
(5, 'John Mike', 16, 1),
(6, 'Alex John', 17,2),
(7, 'My John Rob',17,3);

Insert INTO ANS_COURSE VALUES(1,'CIVIL');
Insert INTO ANS_COURSE VALUES(2,'CSE');
Insert INTO ANS_COURSE VALUES(3,'ISE');
Insert INTO ANS_COURSE VALUES(4,'ECE');
Insert INTO ANS_COURSE VALUES(5,'MECHANICAL');

SELECT * FROM ANS_STUDENT

SELECT * FROM ANS_COURSE 

SELECT * FROM ANS_STUDENT WHERE STUDENT_AGE=16

SELECT * FROM ANS_STUDENT WHERE STUDENT_NAME LIKE 'M%'

SELECT COUNT(1) AS NO_OF_STUDENTS,COURSE_ID FROM ANS_STUDENT GROUP BY COURSE_ID 

SELECT SUM(STUDENT_AGE) AS SUMAGE,COURSE_ID FROM ANS_STUDENT GROUP BY COURSE_ID HAVING SUM(STUDENT_AGE)>17

SELECT DENSE_RANK () OVER(PARTITION BY COURSE_ID ORDER BY STUDENT_AGE DESC)AS DNSRNK,STUDENT_AGE,COURSE_ID FROM ANS_STUDENT 

SELECT * FROM ANS_STUDENT AS S INNER JOIN ANS_COURSE AS C ON S.COURSE_ID=C.COURSE_ID

SELECT * FROM ANS_STUDENT AS S LEFT JOIN ANS_COURSE AS C ON S.COURSE_ID=C.COURSE_ID

SELECT SUBSTRING(STUDENT_NAME,1,4) AS SUBSTRINGS,STUDENT_NAME FROM ANS_STUDENT T 

SELECT REPLACE(STUDENT_NAME,' ', '@'), STUDENT_NAME FROM ANS_STUDENT 



SELECT CHARINDEX('O',STUDENT_NAME) AS INDEXES, STUDENT_NAME FROM ANS_STUDENT T
