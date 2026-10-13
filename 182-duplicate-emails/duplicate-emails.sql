# Write your MySQL query statement below
-- Select  email
-- from Person 
-- group by email
-- having count(email) > 1;


select email from Person 
group by email
having count(email)>1;





