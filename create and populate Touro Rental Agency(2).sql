use master
go

create database TouroRentalAgency
go
use TouroRentalAgency
go
create table Address(
  AddressID int not null identity(1,1),
  Street varchar(45) not null,
  City varchar(35) not null,
  AddressState char(2) null,
  PostCode varchar(15) not null,
  constraint [PK_Address] primary key (AddressID)

);

SET IDENTITY_INSERT [dbo].[Address] ON
INSERT [dbo].[Address] ([AddressID], [Street], [City], [AddressState], [PostCode]) 
VALUES (1, N'1 High St', N'Largs', NULL, N'KA30 9DD'),
 (2, N'12 Strumpetwise Street', N'Lagrange Orage', NULL, N'PP2 1BB'),
 (3, N'12 Rock Way', N'Bedrock', NULL, N'BD3 8RK'),
 (4, N'12 Rock Way', N'Bedrock', NULL, N'BD3 8RK'),
 (5, N'1 Vik Way', N'Rekjavik', NULL, N'RK22 3RD'),
 (6, N'1 Rich Street', N'Seattle', NULL, N'SE2 TTL'),
 (7, N'1 Way St.', N'Chicago', NULL, N'PO34 5FB'),
 (8, N'1 Super Way', N'Smallville', NULL, N'SM4 2ME'),
 (9, N'5 High St', N'Paisley', NULL, N'PA2 2BB'),
 (10, N'1 Snip St.', N'Scissorland', NULL, N'SC1 2XX'),
 (11, N'1 Wayne Manor', N'Gotham', NULL, N'BA01 TT0'),
 (12, N'12 Long Island Way', N'New Jersey', NULL, N'NJ44 2RD'),
 (13, N'16 Holhead', N'Aberdeen', NULL, N'AB7 5SU'),
 (14, N'5 Novar Drive', N'Glasgow', NULL, N'G12 9AX'),
 (15, N'18 Dale Road', N'Glasgow', NULL, N'G12'),
 (16, N'2 Manor Road', N'Glasgow', NULL, N'G32 4QX'),
 (17, N'6 Lawrence Street', N'Glasgow', NULL, N'G11 9QX'),
 (18, N'Muir Drive', N'Aberdeen', NULL, N'AB42 1DD'),
 (19, N'6 Argyll Street', N'London', NULL, N'NW2'),
   (20, '1 Ave A', 'Brooklyn', 'NY','11230'),
   (21, '2 Ave B', 'Brooklyn','NY','11229'),
   (22,  '3 Ave C', 'Utica', 'NY', '30045'),
   (23, '4 Ave D','Newark','NJ', '102304')
           
SET IDENTITY_INSERT [dbo].[Address] OFF


CREATE TABLE [dbo].[Person](
	[PersonNo] [char](4) not  NULL,
	[fName] [varchar](20) not NULL,
	[lName] [varchar](45) not NULL,	
	[gender] [char](10) not NULL,	
	[Telephone] [char](10) not NULL,
	[Mobile] [char](10) NULL,
	[Email] [varchar](50) NULL,
	AddressID  int not null,
	constraint [PK_Person] primary key (PersonNo),
	constraint [FK_Person_Address] foreign key (AddressID)
	 references Address(AddressID)
) 
GO
INSERT Person ([PersonNo], [fName], [lName],  [gender],  [Telephone], [Mobile], [Email],AddressID) 
 VALUES ('SA9', 'Mary', 'Howe','F', '7182227777', '0795551245', 'MaryHowe@Dreamhome.co.uk',13),
  ('SG14', 'David', 'Ford', 'M', '2123334444', '0795551234', 'DavidFord@Dreamhome.co.uk',14),
('SG37', 'Ann', 'Beech',  'F',  '2012220224','0795552346', 'AnnBeech@Dreamhome.co.uk',15),
 ('SG5', 'Susan', 'Brand',  'F', '5160225123', '0795551223', 'SusanBrand@Dreamhome.co.uk',16),
 ('SL21', 'John', 'White', 'M','4102223151', '0905551234', 'JohnWhite@Dreamhome.co.uk',17),
 ('SL41', 'Julie', 'Lee',  'F',  '9733331514', '0905551634', 'JulieLee@Dreamhome.co.uk',18),
 ('SA15','Bill','Nevius','M', '6462221212',  '9174356677','tomNev@Dreamhome.co.uk',19), 
 
   ('CR40', 'Joe', 'Schmoe', 'M', '123459678', NULL, 'joes@largy.com', 1),
 ('CR55', 'Ferdinand', 'Oblogiotta', 'M', '1238795555', NULL, 'ferdy@orage.com', 2),
 ('CR56', 'Fred', 'Flintstone', 'M', N'5554561234', NULL, 'fred@flintyrock.com', 3),
 ('CR62', 'Wilma', 'Flintstone', 'F', '5559891234', NULL, 'wilma@flintyrock.com', 4),
 ('CR63', 'Snorrie', 'Sturrluson', 'M', '3333464567', NULL, 'snorrie@iceland.com', 5),
 ('CR72', 'Bill', 'Gates', 'M', '1236785555', NULL, 'bill@gatesland.com', 6),
 ('CR74', 'Albert', 'Johnstone', 'M', '5559876677', NULL, 'albie@johnstone.com', 7),
 ('CR77', 'Clark', 'Kent', 'M', '5555479999', NULL, 'clark@supersite.com', 8),
 ('CR79', 'Joe', 'Blog', 'M', '1235454567', NULL, 'joe@paisley.com', 9),
 ('CR83', 'Edward', 'Scissorhands', 'M', '1237884567', NULL, 'eddie@scix.com', 10),
 ('CR90', 'Bruce', 'Wayne', 'M', '5558766789', NULL, 'wayne@batty.com', 11),
 ('CR99', 'Albert', 'Enistein', 'M', '5556776789', NULL, 'bert@nuclearintent.com', 12),

    ('CO40', 'Jill','Johnson','F','9172134587',null, 'jillj@gmail.com',20),
	('CO93','Susan','Chase','F', '9172456678',null,'susanc@yahoo.com',21),
	('CO87','Fred','Williams','M', '2125678900',null,'fredch@gmail.com',22),
	('CO46','Lisa','Abrams','F','2129877898',null,'lisaab@gmail.com',23)
 
 
 CREATE TABLE [dbo].[Staff](
	[StaffNo] [char](4) not NULL,	
	[Position] [nvarchar](50)not NULL,
	[DOB] [date]not NULL,
	HireDate date not null,
	[Salary] [decimal](8,2) NULL,
	 [CommRate] decimal(2,2) null,
	[branchNo] [char](4) NULL,	
	reportsTo char(4) null,
	constraint [PK_Staff] primary key (StaffNo),
	constraint [FK_Staff_Person] foreign key (StaffNo) references
	 Person(PersonNo),
	 constraint [FK_Staff_Staff] foreign key (reportsTo)
	   references Staff(StaffNo)
);

GO
INSERT [Staff] ([staffNo],  [Position],  [DOB],HireDate, [salary], [branchNo],reportsTo) 
VALUES ('SA9','Assistant', '2/19/1970','6/3/2000', 35000.00, 'B007','SA15'),
 ('SG14','Supervisor','3/24/1958', '3/4/1980', 85000.00, 'B003','SG5' ),
 ('SG37', 'Assistant','11/10/1960','7/8/1997',75000.00,'B003','SG14'),
 ('SG5', 'Manager', '6/3/1948','9/2/1990', 86000.00, 'B003',null),
 ('SL21', 'Manager','10/1/1950','11/4/1970', 72000.00, 'B005',null),
 ('SL41',  'Assistant', '6/3/1965','10/8/1976', 59000.00, 'B005','SL21'),
 ('SA15','Supervisor','4/12/1965','11/3/1995',50000.00,'B007',null)


CREATE TABLE [dbo].[PropertyType](
	[PropertyTypeID] [char](4) NOT NULL,
	[PropertyTypeDescription] [varchar](15) NOT NULL,
 CONSTRAINT [PK_PropertyType] PRIMARY KEY (	[PropertyTypeID] ),
 
 CONSTRAINT [UIX_PropTypeDesc] UNIQUE (	[PropertyTypeDescription])
 );
 
 INSERT [dbo].[PropertyType] ([PropertyTypeID], [PropertyTypeDescription]) 
 VALUES (N'PT03', N'CONDO'),
('PT02', 'FLAT'),
 ('PT01', 'HOUSE')
/****** Object:  Table [dbo].[Property]    Script Date: 11/09/2015 00:40:21 ******/

CREATE TABLE [Client](
	[ClientNo] [char](4) not NULL,
	[JoinedOn] [date] not NULL,
	[Region] [varchar](30) NULL,
	[PrefType] [char](4) NULL,
	[MaxRent] [smallint] not NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY (clientNo ),
 constraint [FK_Client_PropType] foreign key (PrefType)
  references PropertyType(PropertyTypeID)
 
 
 )
 
 INSERT into [Client] ( [clientNo],  [JoinedOn], [Region], [prefType], [maxRent]) 
 values( 'CR56',   '5/9/2004', NULL, 'PT01', 450),
  ( 'CR62',  '5/9/2004', NULL, 'PT02', 350),
  ( 'CR74', '5/9/2004', '(N/A)', 'PT02', 450),
  ( 'CR77',  '5/9/2004', '(N/A)', 'PT02', 400),
  ( 'CR79', '5/10/2004', 'London (North West)', 'PT01', 450),
  ( 'CR83', '5/21/2004', '(N/A)', 'PT01', 300),
  ( 'CR99', '5/21/2004', 'London (North West)', 'PT03', 450),
  ( 'CR63',  '5/21/2004', '(N/A)', NULL, 400),
  ( 'CR55', '5/31/2004', '(N/A)', 'PT01', 450),
  ( 'CR40',  '5/31/2004', '(N/A)', 'PT01', 550),
  ( 'CR72',  '6/1/2004', 'London (South)', 'PT01', 1000),
  ( 'CR90',  '11/22/2004', 'Glasgow', 'PT01', 900)
 
 

 
 

CREATE TABLE [Property](
	[PropertyNo] [char](4) not NULL,
	[PropTypeID] [char](4) not NULL,
	[Rooms] [int] not NULL,
	[Rent] [int] not NULL,
	[OwnerNo] [char](4)not NULL,
	[StaffNo] [char](4) not NULL,
	[BranchNo] [char](4)not  NULL,	
	AddressID int not null,
	constraint [PK_Property]primary key (PropertyNo),
	constraint [FK_Property_Address] foreign key (AddressID)
	  references Address(AddressID),
	constraint [FK_Property_Staff] foreign key (StaffNo)
	  references Staff(StaffNo),
	constraint [FK_Property_Person] foreign key (OwnerNo)
	  references Person(PersonNo),
	constraint [FK_Property_PropType] foreign key (PropTypeID)
	  references PropertyType (propertyTypeID)     
) 



INSERT into [Property] ([propertyNo], PropTypeID, [rooms], [rent], [ownerNo], [staffNo], [branchNo],AddressID) 
values( 'PA14',  'PT01', 6, 650, 'CO46', 'SA9', 'B007',13),
  ('PG16', 'PT02', 4, 450, 'CO93', 'SG14', 'B003',14),
  ('PG21',  'PT01', 5, 600, 'CO87', 'SG37', 'B003',15), 
   ('PG36',  'PT02', 3, 375, 'CO93', 'SG37', 'B003',16), 
 ( 'PG4',  'PT02', 3, 350, 'CO40', 'SA9', 'B003',17), 
 ( 'PG97',  'PT01', 3, 380, 'CO46', 'SA9', 'B007',18),  
  ( 'PL94',  'PT02', 4, 400, 'CO87', 'SL41', 'B005',19) 
    
   
create table lease(
  LeaseNo int not null,
   PropertyNo char(4) not null,
   ClientNo char(4) not null,
  StartDate date not null,
  EndDate date not null,
  Duration varchar(10) not null,
  MonthRent decimal(8,2) not null,
  DateSigned date not null,
  constraint [PK_Lease] primary key(LeaseNo),
  constraint [FK_Lease_Client] foreign key (ClientNo)
    references CLIENT(ClientNo),
  constraint [FK_Lease_Property] foreign key (PropertyNo)
    references Property(PropertyNo),
  constraint [CK_EndDate] check (EndDate > StartDate),
  constraint [CK_DateSigned] check (datesigned <= startdate)
  

)


insert into Lease 
values (1, 'PA14','CR40','7/1/2013','6/30/2015','2 Year',650.00,'6/15/2013'),
       (2, 'PG16','CR55','5/1/2013','4/30/2014','1 Year',475.00,'2/20/2013'),
       (3, 'PG21','CR56','9/1/2013','8/31/2015','2 Year',650.00,'8/13/2013'),
       (4, 'PG36','CR62','11/15/2013','11/14/2014','1 Year',400.00,'11/1/2013'),
       (5, 'PA14','CR40','7/1/2015','6/30/2016','1 Year',700.00,'6/18/2015'),
       (6, 'PG16','CR63','5/1/2014','4/30/2016','2 Year',500.00,'4/15/2014'),
       (7, 'PG21','CR74','10/1/2015','9/30/2017','2 Year',700.00,'9/15/2015'),
       (8, 'PG36', 'CR62','11/15/2014','10/31/2016','2 Year',425.00,'11/1/2014')
       
create table Payment(
          PaymentNo char(5) not null,
          PaymentMethod varchar(10) not null,
          PaymentDate date not null,
          Amount decimal(8,2) not null,
          Processed bit not null,
          checkNo int null,
          LeaseNo int not null,
          constraint [PK_Payment] primary key (PaymentNo),
          constraint [CHK_PayMethod] check (PaymentMethod in ('CHECK','CREDITCARD','CASH')),
          constraint [FK_Payment_Lease] foreign key (LeaseNo) references 
             Lease(LeaseNo));
             
       
       insert into Payment
       values ('PA001','CHECK','6/15/2013',650.00,1,1000,1),
                ('PA002','CHECK','7/1/2013',650.00,1, 1001,1),
                ('PA003', 'CHECK','8/1/2013',650.00,1, 1002,1),
                ('PA004','CHECK','9/1/2013',650.00,1, 1003,1),
                ('PA005','CHECK','10/1/2013',650.00,1, 1004,1),
                ('PA006','CHECK','11/1/2013',650.00,1, 1005,1),
                 ('PA007','CHECK','12/1/2013',650.00,1, 1006,1),
                 ('PA008','CHECK','1/1/2014',650.00,1, 1007,1),
                 ('PA009','CHECK','2/1/2014',650.00,1, 1008,1),
                 ('PA010','CHECK','3/1/2014',650.00,1, 1009,1),
                 ('PA011','CHECK','4/1/2014',650.00,1, 1010,1),
                 ('PA012','CHECK','5/1/2014',650.00,1, 1011,1),
                 ('PA013','CHECK','6/1/2014',650.00,1,1012,1),
                ('PA014','CHECK','7/1/2014',650.00,1, 1013,1),
                ('PA015', 'CHECK','8/1/2014',650.00,1, 1014,1),
                ('PA016','CHECK','9/1/2014',650.00,1, 1015,1),
                ('PA017','CHECK','10/1/2014',650.00,1, 1016,1),
                ('PA018','CHECK','11/1/2014',650.00,1, 1017,1),
                 ('PA019','CHECK','12/1/2014',650.00,1, 1018,1),
                 
                  ('PA020','CHECK','1/1/2015',650.00,1, 1019,1),
                 ('PA021','CHECK','2/1/2015',650.00,1, 1020,1),
                 ('PA022','CHECK','3/1/2015',650.00,1, 1021,1),
                 ('PA023','CHECK','4/1/2015',650.00,1, 1022,1),
                 ('PA024','CHECK','5/1/2015',650.00,1, 1023,1),
                 ('PA025','CHECK','6/1/2015',650.00,1,1024,1),
              
                 ('PA026','CREDITCARD','2/20/2013',475.00,1,null,2),
                 ('PA027','CREDITCARD','5/1/2013',475.00,1,null,2),
                 
                 ('PA028','CHECK','6/1/2013',475.00,1,2000,2),
                ('PA029', 'CHECK','7/1/2013',475.00,1, 2001,2),
                ('PA030', 'CHECK','8/1/2013',475.00,1, 2002,2),
                ('PA031','CHECK','9/1/2013',475.00,1, 2003,2),
                ('PA032','CHECK','10/1/2013',475.00,1, 2004,2),
                ('PA033','CHECK','11/1/2013',475.00,1, 2005,2),
                 ('PA034','CHECK','12/1/2013',475.00,1, 2006,2),
                 ('PA035','CHECK','1/1/2014',475.00,1, 2007,2),
                 ('PA036','CHECK','2/1/2014',475.00,1, 2008,2),
                 ('PA037','CHECK','3/1/2014',475.00,1, 2009,2),
                 ('PA038','CHECK','4/1/2014',475.00,1, 2010,2),
                 
                 
                 
                 ('PA039','CASH','8/13/2013',650.00,1,null,3),
                  ('PA040','CHECK','9/1/2013',650.00,1, 2015,3),
                ('PA041','CHECK','10/1/2013',650.00,1, 2016,3),
                ('PA042','CHECK','11/1/2013',650.00,1, 2017,3),
                 ('PA043','CHECK','12/1/2013',650.00,1, 2018,3),
                 ('PA044','CHECK','1/1/2014',650.00,1, 2019,3),
                 ('PA045','CHECK','2/1/2014',650.00,1, 2020,3),
                 ('PA046','CHECK','3/1/2014',650.00,1, 2021,3),
                 ('PA047','CHECK','4/1/2014',650.00,1, 2022,3),
                 
                 
                  ('PA048','CHECK','5/1/2014',650.00,1, 2023,3),
               ('PA049','CHECK','6/1/2014',650.00,1,2024,3),
                ('PA050','CHECK','7/1/2014',650.00,1, 2024,3),
               ('PA051', 'CHECK','8/1/2014',650.00,1, 2025,3),
              ('PA052','CHECK','9/1/2014',650.00,1, 2026,3),
                ('PA053','CHECK','10/1/2014',650.00,1, 2027,3),
              ('PA054','CHECK','11/1/2014',650.00,1, 2028,3),
                 ('PA055','CHECK','12/1/2014',650.00,1, 2029,3),
                 
                  ('PA056','CHECK','1/1/2015',650.00,1, 2030,3),
                ('PA057','CHECK','2/1/2015',650.00,1, 2031,3),
                ('PA058','CHECK','3/1/2015',650.00,1, 2032,3),
            ('PA059','CHECK','4/1/2015',650.00,1, 2033,3),
                 ('PA060','CHECK','5/1/2015',650.00,1, 2034,3),
                ('PA061','CHECK','6/1/2015',650.00,1,2035,3),
                
             ('PA062', 'CASH','11/1/2013',400.00,1,null,4  ),
             ('PA063','CREDITCARD','6/18/2015',700.00,1,null,5),
             ('PA064','CASH','4/15/2014',500.00,1,null,6),
             ('PA065','CHECK','9/15/2015',700.00,1,3001,7),
             ('PA066','CHECK','11/1/2014',425.00,1, 4015,8)
             
 


CREATE TABLE [dbo].[Viewing](
	[TransactionID] [int] NOT NULL,
	[ClientNo] [char](4) NOT NULL,
	[PropertyNo] [char](4) NOT NULL,
	[ViewDate] [date] NOT NULL,
	[viewHour] [tinyint] NULL,
	[Comment] [varchar](255) NULL,
	[WishToRent] [bit] NOT NULL,
 CONSTRAINT [PK_Viewing] PRIMARY KEY ([TransactionID] ),
 constraint [FK_Viewing_Client] foreign key (ClientNo)
  references Client (ClientNo),
  constraint [FK_Viewing_Property] foreign key (PropertyNo)
  references Property(PropertyNo)
) ;
GO
SET ANSI_PADDING OFF
GO
INSERT [Viewing] ([TransactionID], [ClientNo], [PropertyNo], [ViewDate], [viewHour], [Comment], [WishToRent])
 VALUES (1, 'CR62', 'PA14', '6/20/2004', 12, NULL, 0),
 (2, 'CR77', 'PG21',  '11/22/2004', 9, 'Not bad at all', 0),
 (3, 'CR77', 'PG36','11/23/2004', 9, 'Kitchen too small', 0),
 (4, 'CR77', 'PG16', '11/23/2004', 9, NULL, 0),
(5, 'CR90', 'PG21', '11/25/2004', 11, NULL, 0),
 (6, 'CR56', 'PA14', '7/1/2004', 11, NULL, 0),
 (7, 'CR74', 'PG36', '7/1/2004', 12, NULL, 0),
 (8, 'CR77', 'PG4 ', '7/1/2004', 12, 'Tidy but too small', 0),
 (9, 'CR79', 'PA14', '7/2/2004', 10, NULL, 0),
 (10, 'CR83', 'PG4 ', '7/2/2004', 14, NULL, 0),
 (11, 'CR62', 'PA14', '6/20/2004', 12, NULL, 0),
 (12, N'CR62', N'PG21', '6/21/2004', 13, NULL, 0)
/****** Object:  Table [dbo].[lease]    Script Date: 11/09/2015 00:40:21 ******/

