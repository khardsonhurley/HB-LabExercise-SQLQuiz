1

-----

Write a query that shows all the information about all the salespeople in
the database. Use a basic SELECT query.

-----


select * from salespeople;


==========
2

-----

Write a query that shows all the information about all salespeople from
the 'Northwest' region.

-----


SELECT * FROM salespeople WHERE region='Northwest';


==========
3

-----

Write a query that shows just the emails of the salespeople from the
'Southwest' region.

-----


SELECT email FROM salespeople WHERE region='Southwest'
;


==========
4

-----

Write a query that shows the first name, last name, and email of all
salespeople in the 'Northwest' region.

-----


SELECT first_name, last_name, email
FROM salespeople
WHERE region='Northwest'
;


==========
5

-----

Write a query that shows the common name of melons that cost more than
$5.00.

-----


SELECT common_name
FROM melons
WHERE price>5;


==========
6

-----

Write a query that shows the common name and price for all
watermelons that cost more than $5.00.


-----


select common_name, price
from melons
where price >5 and melon_type = 'Watermelon';


==========
7

-----

Write a query that displays all common names of melons that start with
the letter 'C'.


-----


select common_name
from melons 
where common_name like 'C%';


==========
8

-----

Write a query that shows the common name of any melon with 'Golden'
anywhere in the common name.


-----


select common_name 
from melons
where common_name like '%Golden%';


==========
9

-----

Write a query that shows all the distinct regions that a salesperson can belong to.


-----


select distinct region
from salespeople;


==========
10

-----

Write a query that shows the emails of all salespeople from both the
Northwest and Southwest regions.


-----


select email
from salespeople
where region='Northwest' OR region='Southwest';


==========
11

-----

Write a query that shows the emails of all salespeople from both the
Northwest and Southwest regions, this time using an 'IN' clause.  


-----


select email
from salespeople
where region IN ('Northwest','Southwest');


==========
12

-----

Write a query that shows the email, first name, and last name of all
salespeople in either the Northwest or Southwest regions whose last names start
with the letter 'M'.

-----


select email, first_name, last_name
from salespeople
where region IN ('Northwest','Southwest') AND 
last_name like 'M%';


==========
13

-----

Write a query that shows the melon type, common name, price, and the
price of the melon given in euros. The 'melons' table has prices in dollars,
and the dollar to euro conversion rate is 0.73.


-----


Select melon_type, 
common_name, 
price,
price * .73 AS euro_price
from melons;


==========
14

-----

Write a query that shows the total number of customers in our customer
table.

-----


select Count(*) from customers;


==========
15

-----

Write a query that counts the number of orders (in the orders table) shipped to California.

-----


Select count(*) 
from orders
where shipto_state = 'CA' 
Group by shipto_state;


==========
16

-----

Write a query that shows the total amount of money spent across all melon
orders.

-----


Select SUM(order_total)
from orders;


==========
17

-----

Write a query that shows the average order cost.

-----


Select AVG(order_total)
from orders;


==========
18

-----

Write a query that shows the order total that was lowest in price.

-----


Select MIN(order_total)
from orders;


==========
19

-----

Write a query that fetches the id of the customer whose email is
'pclark74@gmail.com'.

-----


select id 
from customers
where email='pclark74@gmail.com';


==========
20

-----

Write a query that shows the id, status and order_total for all orders 
made by customer 100.

-----


select id, status, order_total
from orders
where customer_id=100;


==========
21

-----

Write a single query that shows the id, status, and order total for all
orders made by 'pclark74@gmail.com'. Use a subselect to do this.


-----


select id, status, order_total
from orders
where customer_id = 
(select id from customers where email = 'pclark74@gmail.com');