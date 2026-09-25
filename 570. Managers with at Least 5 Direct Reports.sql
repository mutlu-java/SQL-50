/* Write your T-SQL query statement below */
WITH CTE AS (
SELECT 
COUNT(e2.id) num
,e2.name name
,e2.id id

FROM Employee e1
JOIN Employee e2
ON e1.managerId = e2.id
GROUP BY e2.id, e2.name )

SELECT  name 
FROM CTE WHERE num>=5