/* Write your T-SQL query statement below */

SELECT
product_id,
year as first_year,
quantity,
price
FROM

(
SELECT
product_id,
year,
MIN(year)OVER(PARTITION BY product_id) min_year,
quantity,
price
FROM Sales ) T
WHERE year = min_year


