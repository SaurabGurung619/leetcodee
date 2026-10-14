-- SELECT 
--     s.product_id,
--     s.year AS first_year,
--     s.quantity,
--     s.price
-- FROM Sales s
-- JOIN (
--     SELECT 
--         product_id,
--         MIN(year) AS first_year
--     FROM Sales
--     GROUP BY product_id
-- ) f
-- ON s.product_id = f.product_id
-- AND s.year = f.first_year;

Select 
s.product_id,
s.year as first_year,
s.quantity,
s.price from Sales s
join
(select product_id, min(year) as first_year from Sales
group by product_id)f 
on s.product_id = f.product_id
and s.year = f.first_year;



























