--insert additional data into a table
--A motorist - first check what info you need
insert into motorist
values(107, 'A.', 'F.', '1602 Ave J', 'Brooklyn', 'NY', null, '11/18/96', 'F',
'BR', 60, 0.0)

--insert additional data, identifying the fields
insert into motorist(
motoristID, lastname, firstname, street, city, addressstate, birthdate,
gender, eyecolor, height, balance
)
--the values now follow the order above
values(108, 'G.', 'F.', '1607 Avenue K', 'Brooklyn', 'NY', '7/25/1999', 
'M', 'BL', 60, 200)

select * --everything in the table
from motorist --which table you want it from

select MotoristID, FirstName, LastName, Street, City,
AddressState, ZipCode, BirthDate, Gender, Height, EyeColor, Balance
from motorist

select MotoristID, FirstName, LastName
from motorist

select *
from violations

select ViolationDesc, FineFee
from violations