create database scholl;
use scholl;
create table student(ID int primary key,NAME varchar(30),GRADE varchar(20),MARKS int ,CITY varchar(10));
insert into student value(1,"a","A",85,"delhi"),(2,"S","A",85,"kolakata"),(3,"c","A",85,"mumbai"),(4,"H","A+",99,"bihar"),(6,"b","B",55,"delhi");
select *from student where (CITY="delhi" AND MARKS>80)or GRADE="A+";
select *from student order by MARKS desc limit 3;