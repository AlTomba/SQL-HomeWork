create database MyDB
use MyDB

create table Student
(
Id int identity(1,1) primary key,
FirstName nvarchar(255),
LastName nvarchar(255),
DateOfBirth date,
EnrolledDate date,
Gender char,
NationalIdNumber nvarchar(15),
StudentCardNumber nvarchar(15)
)

create table AchievementType
(
Id int identity(1,1) primary key,
[Name] nvarchar(255),
[Description] nvarchar(255),
ParticipationRate int
)

create table Course
(
Id int identity(1,1) primary key,
[Name] nvarchar(255),
Credit int,
AcademicYear int,
Semester int
)

create table Grade
(
Id int identity(1,1) primary key,
StudentId int,
CourseId int,
TeacherId int,
Grade int,
Comment nvarchar(255),
CreatedDate datetime
)

create table GradeDetails
(
Id int identity(1,1) primary key,
GradeId int,
AchievementTypeId int,
AchievementPoints int,
AchievementMaxPoints int,
AchievementDate datetime
)

create table Teacher
(
Id int identity(1,1) primary key,
FirstName nvarchar(255),
LastName nvarchar(255),
DateOfBirth date,
AcademicRank nvarchar(100),
HireDate date
)