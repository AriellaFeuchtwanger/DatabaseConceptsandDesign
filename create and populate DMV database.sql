use master -- Tells you which database to use - here, master. Use master
--to create any new databases
create database DMV -- create is to create anything, database says what, and 
-- DMV is the name of it 
go
use DMV --says to use the database
go
create table StateList(
  StateID char(2) not null, --cannot be null
  StateName varchar(20) not null,
  constraint [PK_StateList] primary key (StateID),
  constraint [UIX - StateName] unique(StateName)

)
insert into StateList(StateID,StateName) values 
                ('AL','ALABAMA'),
	            ('AK','ALASKA'),
	            ('AZ','ARIZONA'),
	            ('AR','ARKANSAS'),
	            ('CA','CALIFORNIA'),
	            ('CO','COLORADO'),
	            ('CT','CONNECTICUT'),
	            ('DE','DELAWARE'),
	            ('FL','FLORIDA'),
	            ('GA','GEORGIA'),
	            ('HI','HAWAII'),
	            ('ID','IDAHO'),
	            ('IL','ILLINOIS'),
	            ('IN','INDIANA'),
	            ('IA','IOWA'),
	            ('KS','KANSAS'),
	            ('KY','KENTUCKY'),
	            ('LA','LOUISIANA'),
	            ('ME','MAINE'),
	            ('MD','MARYLAND'),
	            ('MA','MASSACHUSETTS'),
	            ('MI','MICHIGAN'),
	            ('MN','MINNESOTA'),
	            ('MS','MISSISSIPPI'),
	            ('MO','MISSOURI'),
	            ('MT','MONTANA'),
	            ('NE','NEBRASKA'),
	            ('NV','NEVADA'),
	            ('NH','NEW HAMPSHIRE'),
	            ('NJ','NEW JERSEY'),
	            ('NM','NEW MEXICO'),
	            ('NY','NEW YORK'),
	            ('NC','NORTH CAROLINA'),
	            ('ND','NORTH DAKOTA'),
	            ('OH','OHIO'),
	            ('OK','OKLAHOMA'),
	            ('OR','OREGON'),
	            ('PA','PENNSYLVANIA'),
	            ('RI','RHODE ISLAND'),
	            ('SC','SOUTH CAROLINA'),
	            ('SD','SOUTH DAKOTA'),
	            ('TN','TENNESSEE'),
	            ('TX','TEXAS'),
	            ('UT','UTAH'),
	            ('VA','VIRGINIA'),
	            ('VT','VERMONT'),
	            ('WA','WASHINGTON'),
	            ('WV','WEST VIRGINIA'),
	            ('WI','WISCONSIN'),
	             ('WY','WYOMING');


create table Motorist(
   MotoristID int not null,
   FirstName varchar(15) not null,
   LastName varchar(25) not null,
   Street varchar(30) not null,
   City varchar(30) not null,
   AddressState char(2) not null,
   ZipCode char(9) null,   --zip plus
   constraint [FK_Motorist_State] foreign key (AddressState)
   references StateList(StateID),
   BirthDate date not null,
    constraint [CHK_BirthDate] check(datediff(year,birthdate,getdate())>=16),
   Gender char(1) not null,
   constraint [CHK_Gender] check (Gender in ('M','F')),
   EyeColor char(2) not null, 
   constraint [CHK_EyeColor] check( EyeColor in('B','BR','BL','GN','GR','H')),
   --blue, brown, black,green,grey,hazel
   Height int not null,
   constraint [CHK_Height] check (height >= 56 and height <= 77),
   Balance smallmoney not null
   constraint [DFLT_Balance] default (0.0),
   constraint [PK_Motorist] primary key (MotoristID)
 
)


go 
insert into Motorist 
  ( MotoristID,FirstName,LastName, Street,City, AddressState,
    BirthDate,Gender, EyeColor,   Height ,   Balance )
values
  (1,'Delores','Bunkley','198 St Johns Pl','Brooklyn','NY','9/19/1970','F','B',62,0.0),
  (2,'Barry', 'Burd', '626 Banner Ave','Brooklyn','NY', '10/15/1995','M','BR',68,0.0),
  (3,'Grace', 'Burg', '6421 14 Ave','Brooklyn',   'NY',     '3/2/1990', 'F', 'GN',64,0.0),
  (4,'Michael', 'Burks','470 Eastern Pkwy', 'Brooklyn','NY','7/8/1980','M', 'BR',69,0.0),
  (5, 'Claudia', 'Chacon', '8610 17 Ave', 'Brooklyn','NY',  '8/4/1982','F', 'B',65,0.0),
  (6, 'Pauline','Chambers', '441 E 21', 'Brooklyn' ,'NY', '11/1/1983' , 'F', 'H', 64,0.0),
  (7, 'Tony',    'Conelli', '292 Hoyt' ,'Brooklyn', 'NY', '5/7/1997', 'M',  'BR', 69, 0.0),
  (8, 'Susannah' , 'Donahue', '741 58', 'Brooklyn','NY', '6/5/1982','F',   'B',  64,  0.0),
  (9, 'Robert','Falk', '835 Ocean Ave', 'Albany', 'NY', '9/2/1996', 'M','BR',70, 0.0),
  (10,'Aron','Gendelman', '706 Washington Ave', 'Buffalo','NY', '4/15/1982','M','GN',68,0.0),
  (11,'Simon', 'Burg', '6421 14 Ave','Brooklyn','NY', '6/7/1985', 'M','B', 69,0.0)  
  
  go
create table License(
   LicenseID varchar(11) not null,
   LicenseState char(2) not null,
   DateIssued date not null,
   ExpirationDate date not null,
   constraint [CHK_ExpireDate] check (datediff(yy, dateIssued, ExpirationDate ) = 8),
   LicenseClassType char(2) not null,
   constraint [CHK_ClassType] check (LicenseClassType in ('A','B','C','D','E','DJ','MJ')),
   LicenseStatus char (1) not null,
   constraint [CHK_LicenseStatus] check (LicenseStatus in ('A','R','S','E')),
   -- active, revoked, suspended, expired
   MotoristID int not null,
   constraint [PK_License] primary key (LicenseID, LicenseState)
)
go

insert into License 
  values ('123456789','NY','8/15/2012','9/19/2020','D','A',1),
          ('234567890','NY', '9/01/2014','10/15/2022','D','A',2),
          ('345678915','NY', '2/27/2010',  '3/2/2018','D','A',3),
          ('456789123','NY', '6/30/2009' ,'7/8/2017'  ,'D','S',4),
          ('567890132', 'NY', '7/29/2010','8/4/2018', 'D','R',5),
          ('678901234', 'NY', '10/20/2014','11/1/2022','D','A',6),
          ('789123456','NY',  '4/28/2015', '5/7/2023', 'B','A',7),
          ('890123654','NY',  '5/30/2015', '6/15/2023','D', 'A',8),
          ('901234567','NY',   '8/12/2015', '9/2/2023','B','A',9),
          ('987654321','NY',   '4/1/2009',  '4/15/2017','B','A',10)
		  ;
create table Restrictions(
  RestrictionID char(1) not null,
  RestrictionNote varchar(30) not null,
  RestrictionDesc varchar(50) null
  constraint [PK_Restrictions] primary key (RestrictionID)
)


insert into Restrictions(RestrictionID,RestrictionNote)
values ('A', 'Accel left of Brake'),
       ('B' , 'corrective lenses'),
        ('C', 'mechanical aid'),
        ('D' , 'prosthetic device'),
        ('E','automatic transmission'),
        ('F', 'hearing aid'),
        ('G', 'daylight driving only'),
        ('P', 'power brakes');
        
  
create table LicenseRestrictions(
    LicenseID varchar(11) not null,
    LicenseState char(2) not null,
    constraint [FK_License_Restrictions] foreign key (LicenseID, LicenseState)
    references License(LicenseID, LicenseState),
    RestrictionID char not null,
    constraint [FK_LicenseRestrictions_Restrictions] foreign key(RestrictionID)
    references Restrictions(RestrictionID),
    constraint [PK_LicenseRestrictions] primary key (LicenseID,LicenseState,RestrictionID)
)

insert into LicenseRestrictions 
values ('123456789','NY','B'),
       ('345678915','NY','B'),
       ('678901234', 'NY','B'),
       ('678901234', 'NY','G')

create table Endorsements(
     EndorsementID char(1) not null,
     EndorsementDesc varchar(30) not null,
     constraint [PK_Endorsements] primary key (EndorsementID)
     
)

insert into Endorsements values
   ('F','Farm Class A Vehicles'),
   ('G', 'Farm Class B Vehicles'),
   ('H', 'Hazardous Materials'),
    ('M', 'Metal Coil'),
    ('N','Tank Vehicles'),
    ('P', 'Passenger Transport'),
    ('S', 'School Bus'),
    ('T', 'Tow Truck');
    
 update Motorist
 set balance = 150.00
 where motoristid = 2   
 
 update Motorist
 set balance = 80.00
 where MotoristID = 6
 
 update Motorist 
 set balance= 80.00
 where motoristid  = 4
 
 update Motorist
 set balance = 50.00
 where MotoristID = 10
 
 create table Violations(
   ViolationID int not null,
   constraint [PK_Violations] primary key (ViolationID),
   ViolationDesc varchar(50) not null,
   PointsOnLicense int not null
   constraint [DFLT_PointsOnLicense] default(1),
   constraint [CHK_PointsOnLicense] check (PointsOnLicense >=0 and
           PointsOnLicense <=12),
   FineFee smallmoney not null,
   constraint [CHK_FineFee] check (FineFee >=0.0)
 
 )
 
 
 
 
 
 insert into Violations
 values (1,'Speeding 1_10 Miles over limit',3,100.00),
        (2, 'Speeding 11_20 miles over limit', 3, 150.00)
        


 
