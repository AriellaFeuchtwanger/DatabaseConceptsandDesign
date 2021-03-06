create database GCS
go

USE [GCS]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 10/27/2013 11:59:41 ******/

CREATE TABLE [dbo].[Skill](
	[SkillID] [smallint] NOT NULL,
	[Description] [nvarchar](30) NULL,
	[PayRate] [smallint] NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY (	[SkillID] ASC)
)
GO
CREATE UNIQUE  INDEX [SkillDesc] ON [dbo].[Skill] (	[Description] ASC)

INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (1, N'Data Entry I', 10)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (2, N'Data Entry II', 12)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (3, N'Systems Analyst I', 50)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (4, N'Systems Analyst II', 150)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (5, N'Database Designer I', 50)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (6, N'Database Designer II', 150)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (7, N'Cobol I', 40)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (8, N'Cobol II', 100)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (9, N'C++ I', 80)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (10, N'C++ II', 200)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (11, N'VB I', 60)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (12, N'VB II', 100)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (13, N'ColdFusion I', 60)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (14, N'ColdFusion II', 120)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (15, N'ASP I', 60)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (16, N'ASP II', 130)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (17, N'Oracle DBA', 200)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (18, N'MS SQL Server DBA', 200)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (19, N'Network Engineer I', 70)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (20, N'Network Engineer II', 100)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (21, N'Web Administrator', 50)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (22, N'Technical Writer', 70)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (23, N'Project Manager', 100)
INSERT [dbo].[Skill] ([SkillID], [Description], [PayRate]) VALUES (24, N'Systems Analyst III', 120)
/****** Object:  Table [dbo].[REGION]    Script Date: 10/27/2013 11:59:41 ******/

GO

CREATE TABLE [dbo].[REGION](
	[REGIONID] [nchar](2) NOT NULL,
	[Description] [nchar](15) NULL,
 CONSTRAINT [PK_REGION] PRIMARY KEY (	[REGIONID] ASC)
 )
 
GO
INSERT [dbo].[REGION] ([REGIONID], [Description]) VALUES (N'ME', N'MidEast        ')
INSERT [dbo].[REGION] ([REGIONID], [Description]) VALUES (N'MN', N'MiddleNorth    ')
INSERT [dbo].[REGION] ([REGIONID], [Description]) VALUES (N'MS', N'MiddleSouth    ')
INSERT [dbo].[REGION] ([REGIONID], [Description]) VALUES (N'NE', N'NorthEast      ')
INSERT [dbo].[REGION] ([REGIONID], [Description]) VALUES (N'NW', N'NorthWest      ')
INSERT [dbo].[REGION] ([REGIONID], [Description]) VALUES (N'SE', N'SouthEast      ')
INSERT [dbo].[REGION] ([REGIONID], [Description]) VALUES (N'SW', N'SouthWest      ')
/****** Object:  Table [dbo].[Employee]    Script Date: 10/27/2013 11:59:41 ******/

CREATE TABLE [dbo].[Employee](
	[EmpID] [smallint] NOT NULL,
	[LastName] [nvarchar](30) NULL,
	[FirstName] [nvarchar](15) NULL,
	[MInitial] [nchar](10) NULL,
	[RegionID] [nchar](2) NULL,
	[HireDate] [smalldatetime] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY (	[EmpID] ASC)
 )
GO
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (1, N'Seaton', N'Amy', NULL, N'NW', CAST(0x975C0000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (2, N'Williams', N'Josh', NULL, N'SW', CAST(0x97790000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (3, N'Underwood', N'Trish', NULL, N'MS', CAST(0x99060000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (4, N'Craig', N'Brett', NULL, N'NE', CAST(0x99070000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (5, N'Sewell', N'Beth', NULL, N'SE', CAST(0x99250000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (6, N'Robbins', N'Erin', NULL, N'NW', CAST(0x960D0000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (7, N'Bush', N'Emily', NULL, N'SW', CAST(0x97B90000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (8, N'Zebras', N'Steve', NULL, N'MS', CAST(0x964D0000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (9, N'Chandler', N'Joseph', NULL, N'NE', CAST(0x94C20000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (10, N'Burklow', N'Shane', NULL, N'SE', CAST(0x99480000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (11, N'Yarbrough', N'Peter', NULL, N'NW', CAST(0x97DA0000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (12, N'Smith', N'Mary', NULL, N'SW', CAST(0x96850000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (13, N'Pascoe', N'Jonathan', NULL, N'MS', CAST(0x99260000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (14, N'Kattan', N'Chris', NULL, N'NE', CAST(0x8F4A0000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (15, N'Epahnor', N'Victor', NULL, N'SE', CAST(0x8DBD0000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (16, N'Summers', N'Anna', NULL, N'NW', CAST(0x8C300000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (17, N'Ellis', N'Maria', NULL, N'SW', CAST(0x8A8D0000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (18, N'Batts', N'Mellisa', NULL, N'MS', CAST(0x8D680000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (19, N'Smith', N'Jose', NULL, N'NE', CAST(0x962F0000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (20, N'Rogers', N'Adam', NULL, N'SE', CAST(0x97B50000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (21, N'Cope ', N'Leslie', NULL, N'NW', CAST(0x97610000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (22, N'Bible', N'Hannah', NULL, N'SW', CAST(0x99090000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (23, N'Newton', N'Christopher', NULL, N'MS', CAST(0x96500000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (24, N'Duarte', N'Miriam', NULL, N'NE', CAST(0x98190000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (25, N'Kilby', N'Surgena', NULL, N'SE', CAST(0x8E330000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (26, N'Bender', N'Larry', NULL, N'NW', CAST(0x8FCA0000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (27, N'Paine', N'Brad', NULL, N'SW', CAST(0x735D0000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (28, N'Mudd', N'Roger', NULL, N'MS', CAST(0x74B50000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (29, N'Kenyon', N'Tiffany', NULL, N'NE', CAST(0x76390000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (30, N'Conner', N'Sean', NULL, N'SE', CAST(0x72040000 AS SmallDateTime))
INSERT [dbo].[Employee] ([EmpID], [LastName], [FirstName], [MInitial], [RegionID], [HireDate]) VALUES (31, N'Donalds', N'Don', NULL, N'NW', CAST(0x98A90000 AS SmallDateTime))
/****** Object:  Table [dbo].[EmployeeSkills]    Script Date: 10/27/2013 11:59:41 ******/

GO
CREATE TABLE [dbo].[EmployeeSkills](
	[EmpID] [smallint] NOT NULL,
	[SkillID] [smallint] NOT NULL,
 CONSTRAINT [PK_EmployeeSkills] PRIMARY KEY (	[EmpID] ASC,	[SkillID] ASC)
)

GO
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (1, 1)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (1, 2)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (2, 1)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (2, 2)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (3, 1)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (4, 3)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (5, 3)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (6, 3)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (6, 4)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (7, 3)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (7, 13)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (7, 14)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (7, 15)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (7, 19)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (7, 20)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (7, 21)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (8, 3)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (8, 11)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (8, 12)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (9, 4)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (10, 4)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (11, 5)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (11, 6)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (11, 18)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (12, 5)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (12, 19)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (12, 20)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (12, 21)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (13, 6)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (13, 17)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (14, 7)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (14, 8)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (15, 7)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (15, 8)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (16, 7)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (17, 7)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (17, 11)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (18, 8)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (19, 9)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (19, 17)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (19, 18)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (20, 9)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (20, 10)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (21, 9)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (22, 10)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (23, 12)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (23, 14)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (23, 16)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (23, 21)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (24, 13)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (24, 15)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (24, 16)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (25, 22)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (26, 22)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (27, 23)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (28, 23)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (29, 23)
INSERT [dbo].[EmployeeSkills] ([EmpID], [SkillID]) VALUES (30, 23)
/****** Object:  ForeignKey [FK_Employee_Region]    Script Date: 10/27/2013 11:59:41 ******/
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Region] FOREIGN KEY([RegionID])
REFERENCES [dbo].[REGION] ([REGIONID])
GO

/****** Object:  ForeignKey [FK_EmployeeSkills_Employee]    Script Date: 10/27/2013 11:59:41 ******/
ALTER TABLE [dbo].[EmployeeSkills]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeSkills_Employee] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Employee] ([EmpID])

GO
/****** Object:  ForeignKey [FK_EmployeeSkills_Skill]    Script Date: 10/27/2013 11:59:41 ******/
ALTER TABLE [dbo].[EmployeeSkills]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeSkills_Skill] FOREIGN KEY([SkillID])
REFERENCES [dbo].[Skill] ([SkillID])
GO

