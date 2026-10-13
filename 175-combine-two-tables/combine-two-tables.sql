# Write your MySQL query statement below
-- Select 
-- p.firstName,
-- p.lastName,
-- a.city,
-- a.state
-- from Person p left join Address a 
-- on p.personId=a.personId;


select p.firstName as firstName, p.lastName, a.city as city, a.state as state 
from person p left join Address a on p.personId = a.personId;