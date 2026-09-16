# Write your MySQL query statement below
select d. name as Department ,e.name  as Employee ,e.salary 
from Employee as e
join Department as d
    on e.departmentId =d.id and e.salary =(
        select max(E.salary) 
        from Employee as E
        where E.departmentId=d.id
    );