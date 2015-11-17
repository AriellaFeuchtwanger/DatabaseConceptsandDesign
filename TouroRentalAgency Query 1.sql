use TouroRentalAgency
go

select * from Staff

--Average salary paid by company

select staffno
from staff
where salary <

(select 
AVG(salary)
from Staff)  -- subquery. Executes before the outer query

select staffno
from staff
where salary >

(select 
AVG(salary)
from Staff)

--Oldest employee
select staffno, dob
from staff
where dob = 
(select min(dob)
from Staff)

--longest working employee
select staffno, hiredate
from Staff
where HireDate = 
(select min(hireDate)
from Staff)

--Smallest Property
select * from Property

select PropertyNo
from Property
where Rooms = 
(select min(Rooms)
from Property)

--Branch with most staff members
select * from Staff

select branchno, count(staffno) As NumEmployees
from staff
group by branchno
having count(staffno) =
(select max(QtyEmps)
from
(select COUNT(StaffNo) As qtyEmps
from Staff
group by branchNo) As BranchCounts --Row Query
)

--Get staff
SELECT personno, fName, LName
from Person

where personno in
(select staffno
from Staff)

--List the firstname, lastname of all employees who manage properties
select *
from Property

select *
from Staff

select fName, lName
from Person
where PersonNo in
(select distinct staffNo
from Property
)

--Intersect:
select personno
from Person
intersect
select distinct staffno
from Property

--Inner join:
select distinct personno, fname, lName
from Person
inner join 
Property
on personno = staffno

--Ppl who do not manage properties
select fName, lName
from Person
where PersonNo not in
(select distinct staffNo
from Property
)

--Using outer join
select personno, fname, lName
from Person
left outer join --left means take everthing from the table on the left (person) regardless
--of if it's in the table on the right
Property
on personno = staffno
where  PropertyNo is null

--Who did not rent a property
select ClientNo
from Client 
where ClientNo in 
(
select ClientNo
from lease
)

select * from Client
select * from Property