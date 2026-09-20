# Write your MySQL query statement below
select round(
    count(distinct a.player_id )/(select count(distinct player_id ) from Activity),2
) as fraction
from Activity as a
join Activity as b
on a.player_id =b.player_id 
and datediff(b.event_date ,a.event_date )=1
where a.event_date =(
    select min(event_date ) from Activity 
    where a.player_id =player_id 
);