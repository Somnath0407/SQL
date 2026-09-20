select e.name
from Employee as e
join Employee as m
on e.id=m. managerId 
group by e.id,e.name
having count(m.id)>=5;