# Write your MySQL query statement below
Select p.product_name , s.year , s.price FROM sales s LEFT JOIN Product p on s.product_id = p.product_id;