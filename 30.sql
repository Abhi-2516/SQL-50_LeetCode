# Write your MySQL query statement below

select e2.employee_id,e2.name,count(*) as reports_count,round(avg(e1.age)) as average_age
from employees e1
left join employees e2
on e1.reports_to=e2.employee_id
where e2.employee_id is not null
group by e1.reports_to
order by employee_id;