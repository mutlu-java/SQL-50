/* Write your T-SQL query statement below */
/*https://leetcode.com/problems/employee-bonus/?envType=study-plan-v2&envId=top-sql-50*/
SELECT 
e.name,
b.bonus
FROM Employee e
LEFT JOIN Bonus b 
ON e.empID = b.empId
WHERE b.bonus <1000 
OR b.bonus IS NULL