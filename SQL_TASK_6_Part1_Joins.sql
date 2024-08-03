select * from sales
select * from product
select * from customer
select * from age_category


--Joins Applied on Sales and Age_Category
--(NOTE:I select the below columns for applying joins to know better results how the joins works)
	
select order_line,ship_mode from sales
select age,city from age_category
	
select s.order_line,s.ship_mode ,k.age,k.city from sales as s
inner join age_category as k
on s.order_line = k.age
 

select s.order_line,s.ship_mode ,k.age,k.city from sales as s
left join age_category as k
on s.order_line = k.age

select s.order_line,s.ship_mode ,k.age,k.city from sales as s
right join age_category as k
on s.order_line = k.age

select s.order_line,s.ship_mode ,k.age,k.city from sales as s
full join age_category as k
on s.order_line = k.age

--Joins Applied on Customer Table and Sales Table
	
select customer_id,customer_name from customer
select customer_id,ship_mode from sales

select c.customer_id as "Customer_Id_Customer",c.customer_name,s.customer_id as "Customer_ID_Sales",s.ship_mode from customer as c
inner join sales as s
on c.customer_id = s.customer_id

select c.customer_id as "Customer_Id_Customer",c.customer_name,s.customer_id as "Customer_ID_Sales",s.ship_mode from customer as c
left join sales as s
on c.customer_id = s.customer_id

select c.customer_id as "Customer_Id_Customer",c.customer_name,s.customer_id as "Customer_ID_Sales",s.ship_mode from customer as c
right join sales as s
on c.customer_id = s.customer_id

select c.customer_id as "Customer_Id_Customer",c.customer_name,s.customer_id as "Customer_ID_Sales",s.ship_mode from customer as c
full join sales as s
on c.customer_id = s.customer_id


--Joins Applied on the same table sales
select order_line,ship_mode from sales
select quantity,profit from sales
	
select s.order_line as "First",s.ship_mode,a.quantity as "Second" ,a.profit from sales as s
inner join sales as a
on s.order_line=a.quantity


select s.order_line as "First",s.ship_mode,a.quantity as "Second" ,a.profit from sales as s
left join sales as a
on s.order_line=a.quantity


select s.order_line as "First",s.ship_mode,a.quantity as "Second" ,a.profit from sales as s
right join sales as a
on s.order_line=a.quantity


select s.order_line as "First",s.ship_mode,a.quantity as "Second" ,a.profit from sales as s
full join sales as a
on s.order_line=a.quantity

