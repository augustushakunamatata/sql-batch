create database sqlbatch

create table batch2
(
EID int,
EName varchar(15),
EContact varchar(10),
EDesignation varchar(20)
)

insert into batch2 values(1,'augustus','123456789','software engineer')
insert into batch2 values(2,'Thair','123456719','full stack developer')
insert into batch2 values(3,'gayathri','789654321','full stack developer')
insert into batch2 values(4,'sowmiya','231456789','dot net developer') 
select * from batch2
alter table batch2 add salary varchar(20)
update batch2 set salary='20000' where EID=1;
update batch2 set salary='2000' where EID=2;
update batch2 set salary='200' where EID=4;
delete from  batch2 where eid=3

select * from batch2

truncate table batch1
select * from batch2 where Salary>2000
select* from batch2 where Salary<20000

select * from batch2 where Salary between 200 and 20000

select * from batch2 WHERE EID in (1,2)


update batch2 set EDesignation='Designer' where EID=2 


create table demo
(
id int,
name varchar(10)
)


alter table demo add designation varchar(10)
alter table demo add contactnumber varchar(10)
insert into demo values(1,'augustus','developer','9876543210'),(2,'thair','ui','9876543212')
select *from demo

drop table demo

select * from employees

insert into batch2(EID,ENAME) values(3,'apple')
select * from batch2
select * from dept
select * from dept
create table dept2
(
did int PRIMARY KEY,
dname varchar(20) NOT NULL
)

insert into dept2 values(1,'Admin')
insert into dept2 values(2,'Developer')
insert into dept2 values(6,'Designer')
insert into dept2 values(4,'Tester')


select * from dept2
select *from parent

select * from child









