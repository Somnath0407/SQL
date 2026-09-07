# Write your MySQL query statement below
select *
from Users 
where email regexp '^[a-zA-Z0-9]+@[a-zA-Z]+\\.com$'
order by user_id asc;