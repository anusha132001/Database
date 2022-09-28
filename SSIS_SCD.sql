--23-09-2022--
---Slowly changind dimensions--
CREATE TABLE EMPLOYEE
(
ID INT,
NAME VARCHAR(20),
PLACE VARCHAR(20),
SALARY INT,
DEPT VARCHAR(10),
START_DATE DATE,
END_DATE DATE,
STATUS VARCHAR(30));

INSERT INTO EMPLOYEE VALUES
(102,'RITHA','Karnataka',30000,'IT',NULL,NULL,' ')

(101,'JOHN','Mumbai',20000,'HR',NULL,NULL,' '); 


SELECT * FROM EMPLOYEE aet 

DELETE FROM EMPLOYEE_T;

 

UPDATE EMPLOYEE  SET DEPT='IT',PLACE='Chennai' WHERE ID=102;

UPDATE EMPLOYEE  SET PLACE='Pune' WHERE ID=102;

CREATE TABLE EMPLOYEE_T
(
ID INT,
NAME VARCHAR(20),
PLACE VARCHAR(20),
SALARY INT,
DEPT VARCHAR(10),
START_DATE DATE,
END_DATE DATE,
STATUS VARCHAR(30));


SELECT * from EMPLOYEE_T


UPDATE EMPLOYEE  SET PLACE='Punjab' WHERE ID=102;

SELECT distinct city from Sales_Data sd 

select * from BANK_DATA hr 

---TOTAL NUMBER OF BANK DEPLOYED IN A YEAR----
select year,count(bank_name) from BANK_DATA bd 
group by year

---THE TOTAL NUMBER OF ATM DEPLOYED IN ONSITE FOR PARTICULAR BANK IN A YEAR--- 
select year,bank_name ,sum(no_atms_on_site)as ATM from BANK_DATA bd 
group by year,bank_name 

---BANKS IN A YEAR--------

select year ,count(bank_name )as Num_Bank from BANK_DATA bd 
group by year

SELECT DISTINCT bank_name from BANK_DATA bd 

select * from BANK_DATA bd where bank_name ='AMERICAN EXPRESS' and year='2015'
