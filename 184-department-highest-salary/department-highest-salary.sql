# Write your MySQL query statement below
select d. name as Department ,e.name  as Employee ,e.salary 
from Employee as e,Department as d
where e.departmentId =d.id and e.salary =(
        select max(E.salary) 
        from Employee as E
        where E.departmentId=d.id
    );