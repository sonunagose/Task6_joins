select * from sales

select * from product

select * from customer

----Right join product and customer---

select p.product_id as product_id, p.category as product_category,
c.customer_id as customer_id,c.customer_name as customer_name,c.age as customer_age from customer as c
right join product as p
on c.customer_id = product_id

----Left join product and customer---

select p.product_id as product_id,p.category as product_category,
c.customer_id as customer_id,c.customer_name as customer_name,c.age as customer_age from customer as c
left join product as p
on c.customer_id =product_id

--inner join product and sales--
	
select p.product_id as product_id,p.category as product_category,
s.customer_id as customer_id,s.product_id as product_id from sales as s
inner join product as p
on p.product_id=s.product_id

--- right join product and sales--
	
select p.product_id as product_id, s.customer_id as sales_customer_id from sales as s
right join product as p
on p.product_id =s.product_id

--sales and customer(inner join)---
	
select s.order_line as sales_order_line,s.customer_id as sales_customer_id,
c.customer_name as customer_name, c.customer_id as customer_id from customer as c
inner join sales as s
on c.customer_id=s.customer_id
