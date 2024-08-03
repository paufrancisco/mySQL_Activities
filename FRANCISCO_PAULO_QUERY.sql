CREATE DATABASE DB_FranciscoPaulo;
USE DB_FranciscoPaulo

CREATE TABLE Professors(

professor_ID int not null primary key,
first_name varchar(50) not null,
last_name varchar(50) not null ,
contact_number int,
major varchar(50),
department varchar(50)

)

CREATE TABLE Courses (
course_id int not null primary key,
title varchar(50) not null,
description varchar(50) not null,
department varchar(50) not null,

)

CREATE TABLE Rooms(
 room_id int not null primary key,
 room_name varchar(50) not null,
 building varchar(50)

)

CREATE TABLE Students(
 student_id int not null primary key,
 first_name varchar(50) not null,
 last_name varchar(50) not null,
 contact_number int,
 address varchar(50) not null,
 course_id int not null,
 Foreign Key (course_id) references Courses(course_id)

)

CREATE TABLE ClassSchedules(
class_id int not null primary key,
course_id int not null,
subject varchar(50) not null,
schedule varchar(50) not null,
room_id int not null,
professor_id int not null
Foreign Key (course_id) references Courses(course_id),
Foreign Key (room_id) references Rooms(room_id),
Foreign key (professor_id) references Professors(professor_id)

)

SELECT * FROM Professors
SELECT * FROM ClassSchedules
SELECT * FROM Students
SELECT * FROM Rooms
SELECT * FROM Courses