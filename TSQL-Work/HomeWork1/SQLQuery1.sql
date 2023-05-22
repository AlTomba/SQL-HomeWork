create database SEDCACADEMYDB
use SEDCACADEMYDB

create table Students
(
Id int identity(1,1) primary key,
FirstName nvarchar(255) not null,
LastName nvarchar(255) not null,
DateOfBirth date not null,
EnrolledDate datetime2 not null,
Gender char not null,
NationalIdNumber char(15) not null,
StudentCardNumber int not null
)

create table Teachers
(
Id int identity(1,1) primary key,
FirstName nvarchar(255) not null,
LastName nvarchar(255) not null,
DateOfBirth date not null,
AcademicRank nvarchar(100) not null,
HireDate datetime2 not null
)

create table Grades
(
Id int identity(1,1) primary key,
StudentId int foreign key references Students(Id),
CourseId int foreign key references Courses(Id),
TeacherId int foreign key references Teachers(Id),
Grade char not null,
Comment nvarchar(255),
CreatedDate datetime2 not null,
)

create table Courses
(
Id int identity(1,1) primary key,
[Name] nvarchar(255) not null,
Credit int not null,
AcademicYear nvarchar(50) not null,
Semester nvarchar(50) not null,
)

create table GradeDetails
(
Id int identity(1,1) primary key,
GradeId int foreign key references Grades(Id),
AchievementTypeId int foreign key references AchievementTypes(Id),
AchievementPoints int not null,
AchievementMaxPoints int not null,
AchievementDate datetime2 not null,
)

create table AchievementTypes
(
Id int identity(1,1) primary key,
[Name] nvarchar(255) not null,
[Description] nvarchar(255) not null,
ParticipationRate decimal(18,2) not null,
)
