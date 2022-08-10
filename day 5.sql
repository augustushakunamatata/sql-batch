create  database  students
select *from students1 where sid=1
 

 select *from students1
 create clustered index ix_sid on  students1(sid)

 create index ix_sname on students1(sname)

  create table students1
  (
  sid int not null,
  sname varchar(25),
  sdept varchar(25),

  )

  insert into students1 values(1,'sowmiya','CSE'),
              (2,'daisy','ECE'),
			  (3,'sharmi','EEE'),
			  (4,'sangeetha','IT')

			  
	select *from students1



	
create unique index ix_sname on students(sname)

select * from students1 where sname='daisy'

create index ix_ename on students(sname) where sname='sangeetha '


select *from students1
create trigger trg_insert
on students1
FOR INSERT
as
begin
	print 'You cannot insert data'
	rollback transaction --undo the insert query
end



drop trigger trg_insert

insert into  students1 values(4,'jaisri','MBA')

create trigger trg_dml
on students1
FOR INSERT,UPDATE,DELETE                  -- DML operatin its used in insert ,delete ,update
as
begin
	print 'You cannot perform DML Operations'
	rollback transaction --undo the DML Statements
end


insert into  students1 values(5,'AJISHA','ME')
update students1 set sid=5 where sid=4
delete from students1 where sid=4
select * from students1


drop trigger trg_dml

disable trigger trg_dml on students1
enable trigger trg_dml on students1

INSERT INTO  students VALUES(6,'Jancy','BBA')
delete from students where SNAME='jaisri'

update students set sid=4 where sid=5

update students set sid=5 where sid=6
delete from students where sname='ajisha'

select * from students

create trigger trg_inserted
on sample1
for insert
as 
begin 
	
	 -- trigger table
end

select * from sample1


create trigger trg_deleted
on  sample1
for delete
as 
begin 
	 select * from deleted -- trigger table
end


create trigger trg_update
on sample1
for update
as 
begin 
    select * from inserted
	select * from deleted -- trigger table
end


create trigger trg_ddl
on database
for CREATE_TABLE,ALTER_TABLE,DROP_TABLE
AS
	begin
		print 'You cannot perform DDL Operations on sqlbatch db'
		rollback transaction --undo the DML Statements
	end

disable trigger trg_ddl on database

use students

create  table demo
(
  sid int 
  )
  drop table demo

create trigger trg_ddlserver
on ALL SERVER
for CREATE_TABLE,ALTER_TABLE,DROP_TABLE
AS
	begin
		print 'You cannot perform DDL Operations on SERVER'
		rollback transaction --undo the DML Statements
	end
	disable trigger trg_ddlserver  on all server

select * from students

BEGIN TRANSACTION
	insert into students values(7,'hema','cse','blue') -- gets commited
	SAVE TRANSACTION insert_stmt
	delete from  students where sid =7 --rollback
ROLLBACK TRANSACTION insert_stmt
COMMIT TRANSACTION

--IMPLICIT TRANSACTION
SET IMPLICIT_TRANSACTIONS Off







