use PREMIERE
go

--1. List names of sales reps
select REP_LNAME, REP_FNAME
from SALESREP

--1a. List name as one fiels
select REP_FNAME + ' ' + REP_LNAME
from SALESREP

--Trim the trailing blanks
select rtrim(rep_fname) + ' ' + rep_lname
from salesrep

--Supply column name
select rtrim(rep_fname) + ' ' + rep_lname
As Name
from salesrep

select rtrim(rep_lname) + ', ' + rep_fname
As [SalesRep Name]
from SALESREP

--2. List names and prices of products
select part_description, price
from PART

--3. States of customers
select distinct CUST_STATE
As [Customer States]
from customer

--Can use a case statement to write out the state names:
select distinct [Customer States] = --this line is how you want it to appear
CASE cust_state --this is where the info is coming from
When 'FL' THEN 'Florida'
When 'NY' THEN 'New York'
End
from CUSTOMER

--4. Names of products and types, sort by type and then product name
select Category =
CASE category
WHEN 'AP' Then 'Appliances'
When 'HW' Then 'Housewares'
When 'SG' then 'Sporting Goods'
END,
 part_description
 As [Part Name]
from PART
order by CATEGORY, PART_DESCRIPTION

--5. Select list of unique product types
select distinct Category = 
case category
when 'AP' then 'Appliances'
when 'HW' then 'Housewares'
when 'SG' then 'Sporting Goods'
End
from part

--6. Numeric manipulation - Total amt to be paid for each product
select PART_NUM, sum(QUOTED_PRICE * QTY_ORDERED) As [Total Amount Owed]
from order_line
group by PART_NUM

select sum(quoted_price * qty_ordered)
from ORDER_LINE --You're getting the total from the whole table

select *
from ORDER_LINE

select order_num, sum(QUOTED_PRICE * QTY_ORDERED) As[Total Sales]
from ORDER_LINE
group by ORDER_NUM

--for each customer, how many orders did the customer place?
select CUST_NUM, count(ORDER_NUM) As[Orders]
from ORDERS
group by CUST_NUM

select *
from ORDERS

--If it takes 5 days to process an order, when will each order be shipped?
select ORDER_NUM, order_Date, ORDER_DATE + 5 As[Date Shipped]
from ORDERS

select order_num, order_date, dateadd(month, 1, order_date)
As[Return Date]
from ORDERS

--how much time has elapsed since the orders were placed
select order_num, order_date, datediff(day, order_date, getdate())
As[Total Elapsed Time (days)]
from ORDERS

--8. What will be the price of the product w/ a 5% discount?
select part_num, PART_DESCRIPTION, Price, price * .95 As[Discounted Price]
from PART

--9. Which customers live in the city Grove?
select CUST_NAME, CUST_CITY
from CUSTOMER
Where CUST_CITY = 'Grove'
--sometimes it has problems with white space, so you can put in 'like 'Grove%'', where %
--is a wild card.

--10. Display orders placed after 10/23/2007
select order_num, order_date
from orders
where ORDER_DATE > '10/23/07'

--11. show a list of products with a retail price of 400 or less
select part_description, price
from part
where price <= 400

--12. orders placed after oct. 2007
select order_num, ORDER_DATE
from ORDERS
where ORDER_DATE between '10/1/2007' and '10/31/2007'

select order_num, order_date
from orders
where order_date >= '10/1/2007' and
order_date <= '10/31/2007'

--display all orders placed in October
select order_num, order_date
from orders
where month(order_date) = 10

--13. list all customers whose name begins with 'a'
select cust_name
from CUSTOMER
where CUST_NAME like 'A%'
--to have a specific number of wild cards - '__A%' - must have an a in the third space

--14. Products that are either housewares or appliances
select PART_DESCRIPTION, CATEGORY
from PART
where CATEGORY = 'HW' or CATEGORY = 'AP'

select PART_DESCRIPTION, CATEGORY
from PART
where CATEGORY in ('HW', 'AP')

--15. show a list of customer names that have the word department in their name
select CUST_NAME
from CUSTOMER
where CUST_NAME like '%Department%'

--16. which sales reps have a first name entered
select REP_FNAME, REP_LNAME
from SALESREP
where REP_FNAME is not null

--For each sales rep, how many customers does the sales rep service. Only include customers
--who don't owe more than $5000. Sort the data by sales rep. Only include sales rep that
--service more than 3 customers
select REP_NUM, count(cust_Num)
from CUSTOMER
where cust_balance < 5000
group by REP_NUM
having count(cust_num) > 1
order by count(cust_num) desc