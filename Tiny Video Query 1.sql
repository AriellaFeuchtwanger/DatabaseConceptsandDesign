use TinyVideo
go

select mem_num
from Rentals.MEMBERSHIP
where mem_balance > 0

--Most money
select mem_fName, mem_lName
from Rentals.MEMBERSHIP
where MEM_BALANCE in
( select max(mem_balance)
from Rentals.MEMBERSHIP
)

--Members who have rented a video
select distinct MEM_NUM
from Rentals.MEMBERSHIP
where MEM_NUM in
(select MEM_NUM
from Rentals.RENTAL)

--Member who have not rented a video
select MEM_NUM
from Rentals.MEMBERSHIP
where MEM_NUM not in
(select MEM_NUM
from Rentals.RENTAL)

--Times each video has been rented
select vid_num, COUNT(vid_num) As [Number of Times Rented]
from Rentals.RENTALDETAILS
group by VID_NUM


--Videos for each movie
select Vid_Movie_Num, COUNT(VID_NUM) [Number of Videos per Movie]
from Inventory.VIDEO
group by VID_MOVIE_NUM

--Avg price for movie genre
select MOVIE_GENRE, AVG(MOVIE_COST)
from Inventory.MOVIE
group by MOVIE_GENRE

--Highest avg
select MOVIE_GENRE, AVG(Movie_Cost)
from Inventory.MOVIE
group by MOVIE_GENRE
having avg(MOVIE_COST)  =
(select max(highest)
from
(select AVG(MOVIE_COST) As highest
from Inventory.MOVIE
group by MOVIE_GENRE) As Averages
)

--oldest movie
select MOVIE_TITLE, MOVIE_YEAR
from Inventory.MOVIE
where MOVIE_YEAR = 
(select min(Movie_Year)
from Inventory.MOVIE)

--how many employees of each type
select Emp_TYPE, COUNT(Emp_Type)
from HumanResources.EMPLOYEE
group by Emp_TYPE

--type of employee not in database
select EmpTYPEID
from HumanResources.EMPTYPES
where EmpTypeID not in
(select Emp_TYPE
from HumanResources.EMPLOYEE)

--employee earning most money
select EmpID, Emp_FName, Emp_LName
from HumanResources.EMPLOYEE
where Emp_Salary = 
(select max(Emp_Salary)
from HumanResources.EMPLOYEE)

--longest working employee
select EmpID, Emp_FName, Emp_LName
from HumanResources.EMPLOYEE
where Emp_HireDate = 
(select min(Emp_HireDate)
 from HumanResources.EMPLOYEE
)
--age of each employee
select EmpID, datediff(year, Emp_BirthDate, GETDATE()) As [Age]
from HumanResources.EMPLOYEE

--oldest employee
select Emp_FName, Emp_LName, Emp_BirthDate
from HumanResources.EMPLOYEE
where Emp_BirthDate =
(select MAX(Emp_BirthDate)
from HumanResources.EMPLOYEE)