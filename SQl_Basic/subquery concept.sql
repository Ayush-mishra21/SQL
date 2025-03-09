create database subquery;
use subquery;
create table student(ID int primary key,NAME varchar(10),MARKS int);
insert into student value(1,"ayush",59),(2,"ayushi",59),(3,"aisha",60),(4,"himanshu",59),(5,"ravi",60);
truncate table student;
alter table student drop column CITY;
alter table student
add column CITY varchar(10) default "delhi";
select NAME as Even_Roll_Number_Name from student where ID%2 =0;
update student set CITY=case
     when ID=2 then "mumbai"
     when ID=5 then "BIHAR"
     when ID=1 then "delhi"
     when ID=3 then "delhi"
     when ID=4 then "delhi"
     end;
select *from student where CITY="delhi";
select max(MARKS) from (select *from student where CITY="delhi")as a;
select max(MARKS) from student ;
create view view1 as select ID,NAME from student;
select *from view1;