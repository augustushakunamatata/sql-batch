CREATE TABLE Worker (
WORKER_ID VARCHAR(10) NOT NULL PRIMARY KEY,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY VARCHAR(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25),
)
INSERT INTO Worker VALUES(001, 'Monika', 'Arora', 100000, '05-08-2020 16:08:00', 'HR')

SELECT * FROM Worker

INSERT INTO Worker VALUES(002, 'Niharika', 'Verma', 80000, '05-08-2020 16:08:00', 'Admin')
INSERT INTO Worker VALUES(003, 'Vishal', 'Singhal', 300000, '05-08-2020 16:08:00', 'HR')
INSERT INTO Worker VALUES(004, 'Amitabh', 'Singh', 500000, '05-08-2020 16:08:00', 'Admin')
INSERT INTO Worker VALUES(005, 'Vivek', 'Bhati', 500000, '05-08-2020 16:08:00', 'Admin')
INSERT INTO Worker VALUES(006, 'Vipul', 'Diwan', 200000, '05-08-2020 16:08:00', 'Account')
INSERT INTO Worker VALUES(007, 'Satish', 'Kumar', 75000, '05-08-2020 16:08:00', 'Account')
INSERT INTO Worker VALUES(008, 'Geetika', 'Chauhan', 90000, '05-08-2020 16:08:00', 'Admin')
SELECT * FROM Worker
Select FIRST_NAME AS WORKER_NAME from Worker;
SELECT * FROM Worker
select UPPER(FIRST_NAME) from worker;
SELECT * FROM Worker
create database sqlbatch2
CREATE TABLE Worker1 (
WORKER_ID VARCHAR(10) NOT NULL PRIMARY KEY,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY VARCHAR(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25),
)
INSERT INTO Worker1 VALUES(001, 'Monika', 'Arora', 100000, '05-08-2020 16:08:00', 'HR')

SELECT * FROM Worker1

INSERT INTO Worker1 VALUES(002, 'Niharika', 'Verma', 80000, '05-08-2020 16:08:00', 'Admin')
INSERT INTO Worker1 VALUES(003, 'Vishal', 'Singhal', 300000, '05-08-2020 16:08:00', 'HR')
INSERT INTO Worker1 VALUES(004, 'Amitabh', 'Singh', 500000, '05-08-2020 16:08:00', 'Admin')
INSERT INTO Worker1 VALUES(005, 'Vivek', 'Bhati', 500000, '05-08-2020 16:08:00', 'Admin')
SELECT * FROM Worker
INSERT INTO Worker VALUES(006, 'Vipul', 'Diwan', 200000, '05-08-2020 16:08:00', 'Account')
INSERT INTO Worker VALUES(007, 'Satish', 'Kumar', 75000, '05-08-2020 16:08:00', 'Account')
INSERT INTO Worker VALUES(008, 'Geetika', 'Chauhan', 90000, '05-08-2020 16:08:00', 'Admin')
SELECT * FROM Worker1
Select FIRST_NAME AS WORKER_NAME from Worker1; --questsion1
SELECT * FROM Worker1
select UPPER(FIRST_NAME) from worker1; --question2
SELECT * FROM Worker1
select distinct DEPARTMENT from Worker1-- question3
SELECT * FROM Worker1
select substring(FIRST_NAME,1,3) from worker1;---question 4
select CONCAT(FIRST_NAME,LAST_NAME)AS 'COMPLETE_NAME' FROM WORKER1;----question6
SELECT DISTINCT LEN(DEPARTMENT) FROM worker1;---question5
select * from worker1 where FIRST_NAME in('vipul','satish');---question7
select * from worker1 where DEPARTMENT like'admin%';---question8

select * from Worker1 where FIRST_NAME like'%a';--question 9

select * from Worker1 where FIRST_NAME like'%a%';--question 10