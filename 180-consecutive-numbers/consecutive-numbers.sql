# Write your MySQL query statement below
SELECT distinct num as ConsecutiveNums  from (SELECT num,
LAG(num,1) over (order by id) as prev_num,
LAG(num,2) over(order by id) as prev_prev_num
from Logs)t where num = prev_num and num = prev_prev_num;
