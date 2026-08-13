# Write your MySQL query statement below
SELECT 
x,
y,
z, 
CASE 
when x+y > z
AND y+z > x
AND x+z > y
then "Yes"
Else "No"
End as triangle 
from Triangle;