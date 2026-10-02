/* Write your T-SQL query statement below */
/*y is primary if there are more than 1 depts
if one department then n*/
SELECT employee_id,
department_id
FROM Employee
WHERE primary_flag = 'Y'
UNION ALL
SELECT
employee_id,
MAX(department_id) AS department_id
FROM Employee
GROUP BY employee_id
HAVING COUNT(employee_id)=1
