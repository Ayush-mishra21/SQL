use college;
select *from student;
alter table student change roolno Rollno int;
create table course(co_id int primary key,name varchar(10));
insert into course value(13,"math"),(22,"sci"),(33,"hindi");
insert into course value(16,"math"),(24,"sci"),(34,"hindi");
select *from (select * from student left join course on student.Rollno=course.co_id 
 UNION
 select * from student right join course on student.Rollno=course.co_id) as a order by Rollno;