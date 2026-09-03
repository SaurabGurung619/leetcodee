# Write your MySQL query statement below
(select u.name as results from users u join MovieRating Mr
on u.user_id = Mr.user_id 
group by u.name 
order by count(*) desc , u.name asc 
limit 1)
union all
(select m.title as results from Movies m join MovieRating Mr
on m.movie_id = Mr.movie_id 
where Mr.created_at >= '2020-02-01' 
and Mr.created_at <'2020-03-01'
group by m.title
order by avg(Mr.rating) desc,m.title Asc 
limit 1);