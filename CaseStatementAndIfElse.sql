use information;
-- Marksheet  
create table marks(
rollno int auto_increment primary key not null,
stname varchar(250) not null,
pyear bigint ,
exam varchar(40),
perc int
);
alter table marks auto_increment=311000;
-- Creating Stored Procedure;
DELIMITER //
CREATE PROCEDURE INSERTVALUE(names varchar(250),passyear bigint,exams varchar(40),perce int) 
BEGIN
INSERT INTO marks(stname,pyear,exam,perc) VALUES(names,passyear,exams,perce) ;
END //
DELIMITER ; 

-- Calling Procedure
call INSERTVALUE('MISBAH',2020,'Annual',81); 
call INSERTVALUE('LAIBA',2021,'Annual',82);
call INSERTVALUE('MARYAM',2020,'Annual',71);
call INSERTVALUE('UMAIMA',2020,'Annual',65); 
call INSERTVALUE('FATIMAH',2020,'Annual',55);
call INSERTVALUE('ZAINAB',2020,'Annual',31);
call INSERTVALUE('AFFAN',2019,'Supply',71); 
call INSERTVALUE('OSMAN',2020,'Annual',81);
call INSERTVALUE('HASSAN',2018,'Supply',55);
call INSERTVALUE('HAMZA',2021,'Annual',61);
call INSERTVALUE('ZUBAIR',2021,'Annual',88); 
call INSERTVALUE('ABUBAKAR',2020,'Annual',66);
call INSERTVALUE('OMER',2020,'Annual',88);

-- SELECT ALL FROM MARKS
SELECT * FROM MARKS;

-- NOW IF ELSE CONDITION
SELECT * ,IF(PERC>=90 AND PERC=100 ,'A+','NOT MATCHED') AS GRADE FROM marks;
SELECT * ,IF(PERC<=90 AND PERC<=80 ,'A','NOT MATCHED') AS GRADE FROM marks;
SELECT * ,IF(PERC<=80 AND PERC<=70 ,'B+','NOT MATCHED') AS GRADE FROM marks;
SELECT * ,IF(PERC<=70 AND PERC<=60 ,'B','NOT MATCHED') AS GRADE FROM marks;
SELECT * ,IF(PERC<=60 AND PERC<=50 ,'C','NOT MATCHED') AS GRADE FROM marks;
SELECT * ,IF(PERC<=50 AND PERC<=40 ,'D','NOT MATCHED') AS GRADE FROM marks;
 
-- CASE ON MARKSHEET 
 SELECT rollno AS ROLLNO, stname AS STUDENT ,pyear AS PASSINGYEAR ,exam AS EXAMTYPE,perc AS PERCENTAGE,
 CASE 
 WHEN PERC>=90 OR PERC=100  THEN "A+" 
 WHEN PERC<=90 AND PERC>=80   THEN "A" 
 WHEN PERC<=80 AND PERC>=70  THEN "B+" 
 WHEN PERC<=70 AND PERC>=60   THEN "B"
 WHEN PERC<=60 AND PERC>=50   THEN "C" 
 WHEN PERC<=50 AND PERC>=40   THEN "D" 
 ELSE "FAIL"
 END AS GRADE
 FROM marks;
 

 
 