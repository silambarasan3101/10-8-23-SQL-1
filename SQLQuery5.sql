CREATE DATABASE OurExercisDb ON PRIMARY
(NAME = 'ExerciseDb_Db', FILENAME='E:\car\10-8-23-Assign 1 SQL\ExerciseDb_Db.mdf',
SIZE=28MB,FILEGROWTH=8MB)
LOG ON
(NAME = 'ExerciseDb_log', FILENAME='E:\car\10-8-23-Assign 1 SQL\ExerciseDb_log.ldf',
SIZE=28MB,FILEGROWTH=8MB)

COLLATE SQL_Latin1_General_CP1_CI_AS

use OurExercisDb
create table StudentRegistrations
(StudentId int not null,
CourseCode nvarchar(50) not null,
RegistrationDate date,
constraint pk_Student primary key (StudentId,CourseCode)
)

insert into StudentRegistrations values ('1','1122','5/5/2023')
insert into StudentRegistrations values (2,'1133','05/06/2023')
insert into StudentRegistrations(StudentId,CourseCode,RegistrationDate) values (2,'1122','05/06/2023'),(3,'1133','05/06/2023'),(4,'1123','05/06/2023')


select * from StudentRegistrations