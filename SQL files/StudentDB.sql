create database StudentDB;
use StudentDB;

create table student(
StudentId int primary key,
StudentName varchar(30),
Email varchar(20),
Phone varchar(10),
Address varchar(30),
dob date);


create table Admin(
ID int primary key,
Name varchar(20),
Email varchar(20),
Phone varchar(10));

create table payment(
StudentId int,
course_id int,
payId int primary key,
payDate date,
fees int,
status varchar(10),
foreign key(StudentId) references student(StudentId),
foreign key(course_id) references courses(course_id)
);

create table courses(
StudentId int,
ClgId int,
course_id int primary key,
courseName varchar(10),
foreign key(StudentId) references student(StudentId),
foreign key(ClgId) references colleges(ClgId)
);

 create table colleges(
ClgId int primary key,
Name varchar(10) ,
Address varchar(10),
contact int
);

insert into student values(101, "sayan", "sayan@gmail.com", '9098883334', 'Jharkhand', '1999-02-10'); 
insert into student values(112, "avi", "avi@gmail.com", '8098456732', 'Agartala', '2000-05-20'); 
insert into student values(21, "Monu", "monu34@gmail.com", '3409827634', 'Amritsar', '1998-12-10'); 
select * from student;

insert into admin values( 1, 'Ganesh', 'g@gmail.com', '9999999999');
insert into admin values(2, 'Mayan', 'mayu@gmail.com', '8888888888');

insert into payment values(101,1,1001, '2022-05-10', 70000, 'Pending');
insert into payment values(112,2,2001, '2022-03-19', 40000, 'Cleared');
insert into payment values(21,2, 1003, '2022-10-30', 78000, 'Pending');
describe payment;

insert into courses values(101,1,12, 'CSE');
insert into courses values(112,2,10, 'ECE');

insert into colleges values(1,'UEM', 'India',90070);
insert into colleges values(2,'VIT', 'India',98700);


select * from student;

select * from payment;
select * from courses;
