drop database if exists school_db;
create database school_db;
use school_db;

create table student (
	id			int				primary key auto_increment,
    FirstName	varchar(25)		not null,
    LastName	varchar(25)		not null,
    Address		varchar(50)		not null,
    City		varchar(50)		not null,
    State		varchar(2)		not null,
    Zip			varchar(5)		not null,
    DOB			date			not null,
    Phone		varchar(12)		not null,
    Email		varchar(50)		not null,
    SSN			varchar(11)		not null
    );
insert into student (firstname, lastname, address, city, state, zip, dob, phone, email, ssn)
	values ('Cody', 'Ramsden', '1234 Dontknow Rd.', 'Seaman', 'OH', '45133', '1991-06-08', '937-661-0001', 'cramsden@jabbycomm.com', 'xx-xx-xxxx'),
    ('Anthony', 'Price', '623 W Main St.', 'Hillsboro', "OH", '45133', '1988-12-15', '937-403-2136', 'aprice@jabbycomm.com', 'xxx-xx-2596'),
    ('Carla', 'Eldridge', '123 N West St.', 'Hillsboro', 'OH', '45133', '1996-05-21', '937-509-5000', 'clewis@jabbycomm.com', 'xxx-xx-xxxx');
create table course (
	id			int				primary key auto_increment,
    Subject		varchar(50)		not null,
    Name		varchar(100)	not null
    );
    
insert into course (subject, name)
	values ('Math', 'Calc 101'),
    ('Science', 'Physics 110'),
    ('Psychology', 'Psych 101'),
    ('Science', 'Human Anatomy & Physiology'),
    ('English', 'English 101');
    
create table enrollment (
	id			int				primary key auto_increment,
    StudentID	int				not null,
    CourseID	int				not null,
    Grade		varchar(1)		not null,
    foreign key (StudentID) references student(id),
    foreign key	(CourseID) references course(id)
);
insert into enrollment (StudentID, CourseID, Grade)
	values (1, 1, 'C'),
    (1, 2, 'B'),
    (1, 5, 'A'),
    (2, 3, 'A'),
    (2, 1, 'A'),
    (2, 4, 'A'),
    (3, 2, 'C'),
    (3, 1, 'D'),
    (3, 5, 'A');
    

    
    