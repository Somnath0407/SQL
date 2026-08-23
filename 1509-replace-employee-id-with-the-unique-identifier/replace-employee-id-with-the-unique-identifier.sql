# Write your MySQL query statement below
select u.unique_id,e.name as name
from Employees as e
left join EmployeeUNI as u
on e.id=u.id;
