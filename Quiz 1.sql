use RENTALAGENCY
go

--1. Select first and last name, and city
select FName, LName, City
from Client

--2. Listthe full name and full address of each client
select rtrim(FName) + ' ' + LName As [Name], Street + ' ' + PostCode + ' '
+ City As [Address] 
from Client

--3. List the first name and last name and ID of each client whose record is missing the prefType
select rtrim(FName) + ' ' + LName As [Name], ClientNo
from Client
where PrefType is null

--4. Lis tthe first name and last name of each client whose postal code starts with BD
select rtrim(FName) + ' ' + LName As [Name]
from Client
where PostCode like 'BD%' --Sorry, I forgot the wildcard!

--5. List the first name, last name of each client that currently lives in Bedrock
select rtrim(FName) + ', ' + LName As [Name]
from Client
where City = 'Bedrock'

--6. List the first name, last name of each client who joined in May of 2004
select rtrim(FName) + ', ' + LName As [Name], JoinedOn
from Client
where JoinedOn > '04/30/2004' And JoinedOn < '06/01/2004'

--7. For each type of dwelling, list how many clients are interested in renting it
select distinct PrefType, Count(ClientNo) As [Number of Interested Clients]
from Client
group by PrefType

--8. How many clients are interested in paying a max rent from $400-500?
select Count(clientno) As [Total]
from Client
where MaxRent >= 400 And MaxRent <= 500

--9. List the names of clients that would like to rent either a house or a condo
select FName, LName, PrefType
from Client
where PrefType = 'House' or PrefType = 'Condo'

--10. For each amount of rent, list how many clients (>2) are interested
select distinct MaxRent, count(ClientNo) As [No. of Customers]
from Client
group by MaxRent
having count(clientno) > 1

--Viewing Table
Use RENTALAGENCY
go

create table[Viewing](
[TransactionID] int,
[ClientNo] char(4),
[PropertyNo] char(4),
[ViewDate] date,
[ViewHour] varchar(45),
[Comment] varchar(255),
[WishToRent] BIT

constraint[PK_Viewing] primary key (TransactionID),
constraint[FK_ClientNo] foreign key (ClientNo) references Client,
constraint[FK_PropertyNo] foreign key (PropertyNo) references Property,
)