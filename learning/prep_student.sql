create database college_stu;
use college_stu;
create table student(
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(2),
    city varchar(20)
);
insert into student
(rollno,name,marks,grade,city)
values
(101,"ABHI",77,"B+","PUNE"),
(102,"DIVYA",87,"A-","DELHI"),
(103,"SHIVI",92,"A+","MUMBAI"),
(104,"VENKAT",67,"B-","MUMBAI"),
(105,"AARTI",84,"A-","INDORE");

select city , avg(marks)
from student
group by city
order by avg(marks) desc;

alter table student
change column name full_name varchar(50);

SET SQL_SAFE_UPDATES = 0;

delete from student
where marks < 70;

alter table student
drop column grade;

create table info(
	id int primary key,
    name varchar(50)
    );
    
insert into info
	(id,name)
    values
    (101,"BOB"),
    (102,"ADAM"),
    (103,"EVE"),
    (104,"PAM");
    
create table course(
	id int primary key,
    course varchar(50)
    );
    
insert into course
	(id,course)
    values
    (101,"science"),
    (105,"maths"),
    (103,"physics"),
    (107,"english");
    
select *
from info as a
left join course as b
on a.id = b.id
where b.id is null;

select *
from info as a
right join course as b
on a.id = b.id
where a.id is null;

select*from student;
