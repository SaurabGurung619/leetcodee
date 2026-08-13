# Write your MySQL query statement below
SELECT MAX(num) as num from myNumbers where num in (SELECT 
num from  MyNumbers
group by num
having count(num)=1) ;