create database company;
use company;
create table employe(ID INT primary key,NAME varchar(30),SALARY INT unsigned not null);
insert into employe value(1,"ayush",1000000),(2,"himanshu",2000000),(3,"ravi",300220);
select *from employe;