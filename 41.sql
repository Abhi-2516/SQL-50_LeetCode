# Write your MySQL query statement below
select requester_id as id, count(A.accepter_id) as num
from (
    select requester_id, accepter_id from RequestAccepted
    union
    select accepter_id, requester_id from RequestAccepted
) A
group by requester_id
order by count(A.accepter_id) desc limit 1