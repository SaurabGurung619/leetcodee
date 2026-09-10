# Write your MySQL query statement below
select
t1.id,
case 
when p_id is null then 'Root'
when not exists (select 1 from Tree t2
where t2.p_id = t1.id)
then 'Leaf'
else 'Inner'
End as type
from Tree t1;