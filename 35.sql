# Write your MySQL query statement below
select person_name 
from
#get table of sum of weights until that person. make sure to order by turn

    (select person_name,sum(weight) over(order by turn)  as Total_Weight
    from Queue) T

#get only ones with sum less than 1000 and then get last one using order, desc and limit
where Total_Weight<=1000
order by  Total_Weight desc
limit 1