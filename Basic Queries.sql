-- Creating Database
create database information;

-- using database
use information;

-- Creating Table Named Info 
create table info(
id int auto_increment primary key not null,
emp varchar(60),
age int,
salary bigint,
addr varchar(250)
);

-- Inserting values into tables.
insert into info(emp,age,salary,addr) values('Laiba',18,50000,'Gulshan-e-Iqbal');
insert into info(emp,age,salary,addr) values('Suwaiba Ahmer',9,60000,'F.B Area');
insert into info(emp,age,salary,addr) values('Zainab Ahmer',17,30000,'F.B Area');
insert into info(emp,age,salary,addr) values('Muhammad Hashim',67,24000,'Maymar Town');
insert into info(emp,age,salary,addr) values('Fatima',38,58000,'DHA');
insert into info(emp,age,salary,addr) values('Bina',28,46000,'DHA-Phase1');
insert into info(emp,age,salary,addr) values('Tariq',64,89000,'Gulshan-Town');
insert into info(emp,age,salary,addr) values('Ahmed',27,42000,'Abid Town');
insert into info(emp,age,salary,addr) values('Zaim',22,59000,'Defence');
insert into info(emp,age,salary,addr) values('Nameer',42,37000,'F.B Area');
insert into info(emp,age,salary,addr) values('Naima',24,55670,'Punjab Transfer');
insert into info(emp,age,salary,addr) values('Maham',43,78000,'Islamabad Transfer');
insert into info(emp,age,salary,addr) values('Saima',16,80000,'F.B Area');
insert into info(emp,age,salary,addr) values('Sufia',18,10000,'Gulshan-E-Hadid');

-- Select all from info.
select * from info;

-- Delete With Where Clause & truncate. 
delete from info where emp='Laiba';
delete from info where id=6;
truncate table info;

-- Update info 
update info set id=1 where id=2;

-- Ascending and descending order
select * from info order by emp Asc;
select * from info order by emp desc;

-- select where things are null & is not null
Select * from info where addr is null;
Select * from info where addr is not null;

-- or & and
select * from info where (emp='laiba' and age =18);
select * from info where (emp='laiba' or age =18);

-- is not
select * from info where not age = 18; 

-- --Sum
select   SUM(Salary) from info;
select  SUM(Salary) AS 'Faculty Salary 'from info;
-- --Count
select  Count(Salary) from info;
select  Count(Salary) AS 'Faculty Salary 'from info;
-- --Avg
select  Avg(Salary) from info;
select  Avg(Salary) AS 'Faculty Salary 'from info;
-- --min
select  Min(Salary)from info;
select  Min(Salary) AS 'Faculty Salary 'from info;
-- --Max
select  Max(Salary) from info;
select  Max(Salary) AS 'Faculty Salary 'from info;

-- If Error 1175 is there SQL_Safe_Update when delete is executed.
SET SQL_SAFE_UPDATES = 0;


