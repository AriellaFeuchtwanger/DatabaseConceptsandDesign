create database STUDENTADVISORS
go

--to activate the database
use STUDENTADVISORS
go

--create building table
create table BUILDING
(
BuildingID int not null,
BuildingName varchar(45) not null,
constraint [PK_Building] primary key (BuildingID),
constraint [UIX_BuildingName] unique (BuildingName)
)

create table OFFICE(
OfficeID char(4) not null,
BuildingID int not null,
constraint [PK_Office] primary key (OfficeID),
constraint [FK_Office_Building] foreign key 
(BuildingID) references Building(BuildingID) 
)

create table STUDENTRANKS(
StudentRankID int not null,
StudentRankDesc varchar(45) not null,
constraint [PK_StudentRanks] primary key (StudentRankID),
constraint [UIX_StudentRankDesc] unique (StudentRankDesc)
)

create table STUDENT(
StudentID int not null,
StuFirstName varchar(20) not null,
StuLastName varchar(30) not null,
Stud_Major int not null,
Stud_GPA decimal(3,2) not null,
Stud_Hours int not null,
StuClass int not null,
AdvisorID int not null,

constraint [PK_StudentID] primary key (StudentID),
--constraint [FK_StudentMajor] foreign key (Stud_Major) references MAJOR(MajorID),
--constraint [FK_StudentAdvisor] foreign key (AdvisorID) references Professor(ProfessorID),
--constraint [FK_StudentRank] foreign key (StuClass) references STUDENTRANKS(StudentRankID)
)

create table PROFESSOR(
ProfessorID int not null,
ProfFirstName varchar(20) not null,
ProfLastName varchar(30) not null,
ProfOffice char(4), --Not all professors have an office
ProfPhoneExt char(4), --Same as above
DeptID int not null,

constraint [PK_ProfessorID] primary key (ProfessorID),
--constraint [FK_Office] foreign key (ProfOffice) references OFFICE(OfficeID),
--constraint [FK_ProfessorDept] foreign key (DeptID) references DEPARTMENT(DeptID)
)

create table MAJOR(
MajorID int not null,
MajorDesc varchar(45) not null,
DeptID int not null,

constraint [PK_MajorID] primary key (MajorID),
--constraint [FK_Department] foreign key (DeptID) references DEPARTMENT(DeptID)
)

create table DEPARTMENT(
DeptID int not null,
DeptName varchar(45) not null,
DeptPhone char(10) not null,
DeptChairID int not null,

constraint [PK_DeptID] primary key (DeptID),
--constraint [FK_DepartmentChairperson] foreign key (DeptChairID) references Professor(ProfessorID)
)

