# Write your MySQL query statement below
SELECT MAX(salary) as SecondHighestSalary from Employee  where Salary <  (select max(salary) from Employee)