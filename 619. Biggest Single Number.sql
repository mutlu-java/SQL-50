/* Write your T-SQL query statement below */



SELECT
MAX(num) num
FROM (
    SELECT
    num,
    COUNT(num) count_num
    FROM 
    MyNumbers
    GROUP BY num
)T
WHERE count_num = 1