/*   
---------- API

1 ---Total Revenue: The sum of the total price of all pizza orders.

2 ---Average Order Value: The average amount spent per order,
 calculated by dividing the total revenue by the total number of orders.
3 -----Total Pizzas Sold: The sum of the quantities of all pizzas sold.
4 ------Total Orders: The total number of orders placed.
5 -------Average Pizzas Per Order: The average number of pizzas sold per order, calculated by dividing the total number of pizzas sold by the total number of orders.
*/
 select * from pizza_sales;
-- total revenue 
select sum(total_price) as total_revenue from pizza_sales;
-- avg_order_value 
select sum(total_price) / count(distinct order_id) as avg_order_value
from pizza_sales;
-- total pizza sold
select sum(quantity) as total_pizza_sold from pizza_sales;
-- total orders 
select count(distinct order_id) as total_orders 
from pizza_sales;
-- avg pizza per order_value  
select  sum(quantity) / count(distinct order_id) as avg_pizza_per_value 
from pizza_sales;

/* 
1 Hourly Trend for Total Pizzas Sold:
 Create a stacked bar chart that displays the hourly trend of total orders over a specific time period. This chart will help us identify any patterns or fluctuations in order volumes on a hourly basis.
2.Weekly Trend for Total Orders:
Create a line chart that illustrates the weekly trend of total orders throughout the year. This chart will allow us to identify peak weeks or periods of high order activity.
3.Percentage of Sales by Pizza Category:
Create a pie chart that shows the distribution of sales across different pizza categories. This chart will provide insights into the popularity of various pizza categories and their contribution to overall sales.
*/
-- hourly trend
select * from pizza_sales;

SELECT 
    SUBSTR(order_time, 1, 2) AS hours,
    SUM(quantity) AS pizz_salesBy_hours 
FROM 
    pizza_sales 
GROUP BY 
    hours
ORDER BY 
    hours, pizz_salesBy_hours;
 -- weekly trends 
 
 
 -- % sales by pizza size
 SELECT 
    pizza_size,
    CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_revenue,
    CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS pct
FROM 
    pizza_sales 
GROUP BY 
    pizza_size
ORDER BY 
    pct desc;
    
-- % sales by category 
select pizza_category,
 cast(sum(total_price) as decimal(10,2)) as total_rev ,
cast(sum(total_price) *100 / (select sum(total_price) from pizza_sales) as decimal(10,2)) as pct
from pizza_sales group by pizza_category
order by pct desc ;

-- % Total Pizzas Sold by Pizza Category
select pizza_category as pizza_category ,
sum(quantity) as total_quatity_sold
from pizza_sales group by pizza_category ;

--  Top 5 Pizzas by Revenue
select pizza_name,sum(total_price) as top_revenue from pizza_sales 
group by pizza_name order by top_revenue desc  limit 5; 

-- bottom top 5 pizza revenue
select pizza_name, sum(total_price) as bottom_revenue from pizza_sales 
group by pizza_name order by bottom_revenue limit 5;

-- top 5 pizza  quantity
select pizza_name,sum(quantity) as top_quantity_sale from pizza_sales 
group by pizza_name order by top_quatity_sale desc limit 5;

-- bottom 5 pozza quantity
select pizza_name , sum(quantity) as bottom_quantity from pizza_sales 
group by pizza_name order by bottom_quantity limit 5;

-- pizza by total orders
select pizza_name, count(distinct order_id) as top_orders 
from pizza_sales 
group by pizza_name 
order by count(distinct order_id) desc 
limit 5;

-- bottom 5 pizza by total orders

select pizza_name, count(distinct order_id) as top_orders 
from pizza_sales 
group by pizza_name 
order by count(distinct order_id)  
limit 5;

