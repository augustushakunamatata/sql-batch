create table emp1(emp int,name varchar(43),designation varchar(45),salary int)
insert into emp1 values(001,'augustus','ceo',100000),(002,'thair','Jfs',30000),(003,'gayathri','seniorboss',6000000),(004,'sowmiya','dot net ',200000)
select * from emp1

--Aggregate functions-avg,min,max,sum,count
select avg (Salary) as 'Average Salary' from emp1
select min(Salary) as 'Minimum Salary' from emp1
select max(Salary) as 'Maximum Salary' from emp1
select count(Salary) as 'Count Salary'from emp1
select sum(Salary) as 'Sum Salary' from emp1
select avg(Salary) as 'Average Salary',designation from emp1 group by Designation


--wrong way of retrieving records for specific records while using aggregate functions
select avg(Salary) as 'Average Salary',designation from emp1 group by designation having designation='seniorboss'

select * from emp1 order by salary




select * from emp1 order by salary desc

select * from emp1 order by salary desc,emp desc


select * from emp1

create synonym e2 for emp1
select *from e2



create table students
(
SID int primary key,
SName varchar(25) not null,
SDept varchar(25) not null,
SClub varchar (25)not null,
)
insert into students values(432,'arun','bca','red')

create table SDept
(
DID int primary key,
DeptName varchar(25) not null
)

create table SClub
(
CID int primary key,
ClubName varchar(25) not null
)


select * from students
select * from SDept


select SID,SName,SDept,DeptName from students inner join SDept on SDept=DID

select students.SID,students.SName,students.SDept,SDept.DeptName from students inner join SDept on students.SDept=SDept.DID

select * from SDept

select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s inner join SDept as d on s.SDept=d.DID
select * from SClub

select s.SID,s.SName,s.SDept,d.DeptName,c.ClubName,s.SClub from students as s left join SDept as d on s.SDept=d.DID full join SClub as c on s.SClub=c.CID

create table sample
(
id int primary key IDENTITY(1,1),
name varchar(20)
)
insert into sample values('Sam')
select * from sample
drop table sample

create sequence empid as INT start with 1 increment by 5
create table sample1
(
id int primary key ,
name varchar(20)
)
insert into sample1 values(NEXT VALUE FOR EMPID,'Peter')
select * from sample1
insert into sample1 values(NEXT VALUE FOR EMPID,'Paul')
insert into sample1 values(NEXT VALUE FOR EMPID,'John')
select NEXT VALUE FOR EMPID
select*from sample1
select * from students


create view Sports
as 
select * from students where SClub=200

select * from Sports
create view students_Dept
as
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s inner join SDept as d on s.SDept=d.DID

select * from students_Dept

select * from SClub
select * from SDept

select * from students
select SID,SName,DID from students inner join SDept on SID=DID