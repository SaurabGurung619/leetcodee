# Write your MySQL query statement below
SELECT 
     score, 
     DENSE_RANK() over ( order by score Desc ) as 'rank'
from Scores;
