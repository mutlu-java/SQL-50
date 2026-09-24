/* Write your T-SQL query statement below */

/* DATEDIFF(datepart,start,end) if the end date is more recent the equation results in a positive integer*/
-- we need to find the dates that are hotter than one day before
 SELECT w1.id --id of the day that is hotter than yesterday
 FROM Weather w1 --more recent date
 JOIN Weather w2 --one day before 
 ON DATEDIFF(DAY,w2.recordDate,w1.recordDate) =1
 WHERE w1.temperature > w2.temperature
 