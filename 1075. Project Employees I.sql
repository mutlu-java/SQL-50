/* Write your T-SQL query statement below */
/*https://leetcode.com/problems/project-employees-i/?envType=study-plan-v2&envId=top-sql-50*/
SELECT
p.project_id,

ROUND (AVG (1.0* e.experience_years),2) average_years
FROM Project p
JOIN Employee e 
ON p.employee_id = e.employee_id
GROUP BY p.project_id