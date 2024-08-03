--Joins Query to combine three tables at one time

--I performed this task on two examples


select * from sales
select * from customer
select * from age_category


--Example 1
select customer_id , ship_date from sales
select customer_id,age from customer
select age,case from age_category

--Inner Join
select s.customer_id as "Sales_cust_id", s.ship_date,c.customer_id as "Customer_cust_id ",c.age from sales as s
inner join customer as c
on s.customer_id=c.customer_id
inner join(
	select a.age,a.case from age_category as a
)as cat
on c.age=cat.age

--Left Join
select s.customer_id as "Sales_cust_id", s.ship_date,c.customer_id as "Customer_cust_id ",c.age from sales as s
left join customer as c
on s.customer_id=c.customer_id
left join(
	select a.age,a.case from age_category as a
)as cat
on c.age=cat.age


--Right Join
select s.customer_id as "Sales_cust_id", s.ship_date,c.customer_id as "Customer_cust_id ",c.age from sales as s
right join customer as c
on s.customer_id=c.customer_id
right join(
	select a.age,a.case from age_category as a
)as cat
on c.age=cat.age


--Full Join
select s.customer_id as "Sales_cust_id", s.ship_date,c.customer_id as "Customer_cust_id ",c.age from sales as s
full join customer as c
on s.customer_id=c.customer_id
full join(
	select a.age,a.case from age_category as a
)as cat
on c.age=cat.age




--Example 2
	
select order_line,ship_mode from sales
select age,city from age_category
select city ,country from customer

-- Inner Join
select s.order_line,s.ship_mode ,k.age,k.city from sales as s
inner join age_category as k
on s.order_line = k.age
inner join(
	select z.city,z.country from customer as z 
)as y
on k.city = y.city

--Left Join
select s.order_line,s.ship_mode ,k.age,k.city from sales as s
left join age_category as k
on s.order_line = k.age
left join(
	select z.city,z.country from customer as z 
)as y
on k.city = y.city

--Right Join
select s.order_line,s.ship_mode ,k.age,k.city from sales as s
right join age_category as k
on s.order_line = k.age
right join(
	select z.city,z.country from customer as z 
)as y
on k.city = y.city

--Full Join
select s.order_line,s.ship_mode ,k.age,k.city from sales as s
full join age_category as k
on s.order_line = k.age
full join(
	select z.city,z.country from customer as z 
)as y
on k.city = y.city


 