/* Write your T-SQL query statement below */
/*https://leetcode.com/problems/percentage-of-users-attended-a-contest/?envType=study-plan-v2&envId=top-sql-50*/

SELECT
r.contest_id,
ROUND ( COUNT(r.user_id) *1.0 / 
(SELECT COUNT( DISTINCT user_id ) FROM Users) *100.00 
,2) as percentage

FROM Users u
JOIN Register r
ON u.user_id = r.user_id
GROUP BY r.contest_id
ORDER BY percentage desc, contest_id asc













