<<<<<<< HEAD
/* Write your T-SQL query statement below */
/*https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50*/
 WITH CTE AS (
    SELECT 
        a1.machine_id machine_id,
        a2.timestamp -a1.timestamp as active_time
    FROM Activity a1
    JOIN Activity a2
    ON a1.activity_type != a2.activity_type
    AND a1.machine_id = a2.machine_id
    AND a1.process_id = a2.process_id
    WHERE a1.activity_type = 'start' 
 )

SELECT
machine_id,
ROUND(AVG(active_time),3 ) processing_time
FROM CTE
GROUP BY machine_id
=======
/* Write your T-SQL query statement below */
/*https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50*/
 WITH CTE AS (
    SELECT 
        a1.machine_id machine_id,
        a2.timestamp -a1.timestamp as active_time
    FROM Activity a1
    JOIN Activity a2
    ON a1.activity_type != a2.activity_type
    AND a1.machine_id = a2.machine_id
    AND a1.process_id = a2.process_id
    WHERE a1.activity_type = 'start' 
 )

SELECT
machine_id,
ROUND(AVG(active_time),3 ) processing_time
FROM CTE
GROUP BY machine_id
>>>>>>> 360e03a (10-11)
