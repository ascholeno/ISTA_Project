--Name: Anthony Scholeno
--File: ISTA_Project database creation


use ISTA_Project;

--Users Table
drop table if exists Users
go
create table  Users
	(
	 userID varchar(50) constraint userID primary key, firstName varchar(50), lastName varchar(50), email varchar(50)
	);
go

BULK INSERT Users FROM 'C:\Users\antho\Desktop\MSSA\quantico06\ISTA_Project\SQL_Database\Users.csv'
  WITH 
    (
       DATAFILETYPE    = 'char',
       FIELDTERMINATOR = ',',
       ROWTERMINATOR   = '\n'
    );
GO

--Exam Table

drop table if exists Exams
go
create table  Exams
	(
	 examID varchar(50) constraint Exam_ID primary key, examName varchar(50)
	);
go

BULK INSERT Exams FROM 'C:\Users\antho\Desktop\MSSA\quantico06\ISTA_Project\SQL_Database\Exams.csv'
  WITH 
    (
       DATAFILETYPE    = 'char',
       FIELDTERMINATOR = ',',
       ROWTERMINATOR   = '\n'
    );
GO

--Question Table

drop table if exists Questions
go
create table Questions
	(
	 queID varchar(50) constraint Question_ID primary key, examID varchar(50) foreign key references Exams(examID), question varchar (200) not null, correctAnswer varchar(200) not null
	);
go

BULK INSERT Questions FROM 'C:\Users\antho\Desktop\MSSA\quantico06\ISTA_Project\SQL_Database\Questions.csv'
  WITH 
    (
       DATAFILETYPE    = 'char',
       FIELDTERMINATOR = ',',
       ROWTERMINATOR   = '\n'
    );
GO

--Answers

drop table if exists Answers
go
create table Answers
	(
	 answer1 varchar(50) primary key, answer2 varchar(50), answer3 varchar(50),queID varchar(50) foreign key references Questions(queID)
	);
go

BULK INSERT Answers FROM 'C:\Users\antho\Desktop\MSSA\quantico06\ISTA_Project\SQL_Database\Answers.csv'
  WITH 
    (
       DATAFILETYPE    = 'char',
       FIELDTERMINATOR = ',',
       ROWTERMINATOR   = '\n'
    );
GO

--Results

drop table if exists Results
go
create table Results
	(
	 grade varchar(50) primary key, userID varchar(50) foreign key references Users(userID), examID varchar(50) foreign key references Exams(examID)
	);
go

BULK INSERT Results FROM 'C:\Users\antho\Desktop\MSSA\quantico06\ISTA_Project\SQL_Database\Results.csv'
  WITH 
    (
       DATAFILETYPE    = 'char',
       FIELDTERMINATOR = ',',
       ROWTERMINATOR   = '\n'
    );
GO
