use MyDb

select * from Student
where [FirstName] = 'Antonio'

select * from Student
where DateOfBirth > '01.01.1999'

select * from Student
where LastName like 'J%' and EnrolledDate <= '01.31.1998' and EnrolledDate >= '01.01.1998'

select * from Student
Order by FirstName asc

select LastName from Student
union
select FirstName from Teacher

alter table grade
add constraint FK_StudentId
foreign key (StudentId) references Student(Id)

alter table grade
add constraint FK_CourseId
foreign key (CourseId) references Course(Id)

alter table grade
add constraint FK_TeacherId
foreign key (TeacherId) references Teacher(Id)

alter table GradeDetails
add constraint FK_AchievementTypeId
foreign key (AchievementTypeId) references AchievementType(Id)

alter table GradeDetails
add constraint FK_GradeId
foreign key (GradeId) references Grade(Id)

select [Name] from Course
union all
select [Name] from AchievementType

select * from Teacher
LEFT JOIN Grade
on Grade.TeacherId = Teacher.Id
where Grade is null




