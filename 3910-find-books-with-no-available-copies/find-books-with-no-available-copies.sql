# Write your MySQL query statement below
select b.book_id ,b.title,b.author,b.genre,b.publication_year,
    count(r.record_id ) as current_borrowers 
from library_books as b
join borrowing_records as r
on b.book_id =r.book_id 
where r.return_date is null
group by 
    b.book_id,b.title,b.author,b.genre,b.publication_year,b.total_copies
having count(r.record_id )=b.total_copies
order by current_borrowers desc,
    b.title asc;