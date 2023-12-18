create database HospitalOlenuk;



use HospitalOlenuk;
go
create table Department
(
id int NOT NULL PRIMARY KEY IDENTITY (1,1),
Building INT NOT NULL CHECK(Building >=1 and Building <=5),
Finansing INT NOT NULL CHECK(Finansing >=1),
Name nvarchar(100) NOT NULL UNIQUE CHECK(Name <>''),
);

create table Diseases
(
id int NOT NULL PRIMARY KEY IDENTITY (1,1),
Name nvarchar(100) NOT NULL UNIQUE CHECK(Name <> ''),
Severity int NOT NULL DEFAULT (1) CHECK(Severity >0),
);

create table Doctors
(
id int NOT NULL PRIMARY KEY IDENTITY (1,1),
Name nvarchar(max) NOT NULL CHECK(Name <> ''),
Phone nvarchar(10) NOT NULL,
Salary money NOT NULL CHECK(Salary >=1),
Surname nvarchar(max) NOT NULL,
);
create table Examinations
(
id int NOT NULL PRIMARY KEY IDENTITY(1,1),
DayOfWeek int NOT NULL CHECK(DayOfWeek >0 and DayOfWeek >8),
EndTime time NOT NULL,
Name nvarchar(100) NOT NULL UNIQUE CHECK(Name <>''),
StarTime time NOT NULL CHECK(StarTime >='8.00' and StarTime <='18.00'),
CHECK (EndTime > StarTime),
);

--select * from Doctors

--insert into Doctors ([Name], Phone, Salary, Surname) values('Ivan', '221570', '2000', 'Simar');