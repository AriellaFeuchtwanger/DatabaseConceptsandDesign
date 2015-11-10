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
