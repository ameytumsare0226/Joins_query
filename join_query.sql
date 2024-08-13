--customer and sales

--INNER JOIN

select c.customer_name , c.segment , c.city ,  s.order_id , s.order_date ,s.ship_date
from customer as c
inner join sales as s 
on c.customer_id = s.customer_id


---LEFT JOIN

select c.customer_name , c.age , c.country ,  s.order_id , s.ship_mode
from customer as c
left join sales as s 
on c.customer_id = s.customer_id


--RIGHT JOIN

select c.customer_name , c.age , c.state , c.postal_code ,  s.product_id , s.quantity , s.profit
from customer as c
right join sales as s 
on c.customer_id = s.customer_id



----FULL JOIN

select *
from customer as c
full join sales as s 
on c.customer_id = s.customer_id


----product and sales

--INNER JOIN

select s.order_id , s.order_date ,s.ship_date , s.ship_mode , p.product_id , p.product_name
from sales as s
inner join product as p 
on  s.product_id = p.product_id


---LEFT JOIN

select s.order_id ,  s.ship_mode , s.sales , s.profit , p.category , p.sub_category
from sales as s
left join product as p 
on  s.product_id = p.product_id


---RIGHT JOIN

select s.order_id , s.discount , s.profit , p.product_name , p.category , p.sub_category 
from sales as s
right join product as p 
on  s.product_id = p.product_id


---FULL JOIN

select *
from sales as s
full join product as p 
on  s.product_id = p.product_id


---JOIN Three tables customer , product and sales

select c.customer_name , c.segment , c.age , c.country , s.order_id , s.order_date , s.ship_date , s.ship_mode , s.product_id , s.profit , 
	p.product_id , p.category , p.product_name
from customer as c
inner join sales as s
on c.customer_id = s.customer_id
inner join product as p
on s.product_id = p.product_id

