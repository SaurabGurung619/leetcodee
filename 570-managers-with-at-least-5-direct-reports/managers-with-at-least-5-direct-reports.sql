-- SELECT e.name
-- FROM Employee e
-- WHERE e.id IN (
--     SELECT managerId
--     FROM Employee
--     WHERE managerId IS NOT NULL
--     GROUP BY managerId
--     HAVING COUNT(*) >= 5
-- );

select e.name 
from employee e
where e.id in (select managerId 
from employee 
where managerId is not null
group by managerId
having count(*)>=5);




















