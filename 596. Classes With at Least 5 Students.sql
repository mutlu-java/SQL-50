/* Write your T-SQL query statement below */

SELECT
class
FROM(
    SELECT
    class,
    COUNT(student) student_count
    FROM Courses
    GROUP BY class
)t
WHERE student_count >=5


