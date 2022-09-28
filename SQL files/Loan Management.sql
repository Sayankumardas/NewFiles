create database Loan_Management;
use Loan_Management;

create table customer(
Id int primary key,
Name varchar(30),
Email varchar(20),
Phone varchar(10),
Address varchar(10));

create table Loan(
loan_id int primary key auto_increment,
amount int,
date date,
loan_type varchar(20));

create table EMI(
Amount int,
balance int,
EMI_period int not null,
loan_id int not null,
foreign key(loan_id) references Loan(loan_id));

create table Loan_status(
last_date date,
Fine int,
status enum("Pending", "Fined", "Cleared"),
ID int not null,
loan_id int not null,
foreign key(Id) references customer(Id),
foreign key(loan_id) references Loan(loan_id));

insert into customer values(100, "sayan", "sayan@gmail.com", '3990947568', 'Jaipur'),
(89, "Nayan", "nayan@gmail.com", '9036542789', 'Kerala'),
(90, "karan", "karan@gmail.com", '9087654321', 'Chennai');

insert into Loan values(10, 100000, '2022-09-20', 'Home loan'),
(11,340000, '2022-08-10', 'Education Loan'),
(12,400000, '2022-09-20', 'Business Loan'),
(13,5500000, '2022-09-27', 'car loan'),
(14,2000000, '2022-06-28', 'Business Loan'),
(15,340000, '2022-08-10', 'Education Loan');

insert into EMI values(8000, 890000,6, 11),
(10000, 9000000,8, 13),
(7000, 1000000,3, 10);

insert into loan_status values('2022-12-09', 0, 'Cleared', 90, 13),
('2022-10-27', 10000, 'Fined' ,89, 10);


