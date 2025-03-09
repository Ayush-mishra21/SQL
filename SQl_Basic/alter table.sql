use college;
create table dept(dept_id int primary key,name varchar(10));
insert into dept value(101,"cse"),(102,"it"),(103,"ece"),(104,"iot"),(105,"civil");
select *from dept;
alter table dept add column bloc varchar(10) not null;
alter table dept drop column bloc;
SET SQL_SAFE_UPDATES = 0;
UPDATE dept 
SET bloc = case WHEN dept_id = 101 THEN 'A'
    WHEN dept_id = 102 THEN 'B'
    WHEN dept_id = 103 THEN 'C'
    WHEN dept_id = 104 THEN 'D'
    WHEN dept_id = 105 THEN 'E'
    end