# Write your MySQL query statement below
select v.author_id as id
from Views as v
join Views as v1
on v.article_id   =v1.article_id  
and v.author_id = v1.viewer_id
group by id
order by id asc;