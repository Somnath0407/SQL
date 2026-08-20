# Write your MySQL query statement below
select v.author_id as id
from Views as v
where v.author_id =v.viewer_id 
group by id
order by id asc;