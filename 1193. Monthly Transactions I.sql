<<<<<<< HEAD
SELECT
FORMAT(trans_date,'yyyy-MM') month,
country,
COUNT(*) trans_count ,
SUM(
CASE WHEN state = 'approved' THEN 1
ELSE 0 
END) approved_count ,
SUM(amount) trans_total_amount,
SUM(
CASE WHEN state ='approved' THEN amount
else 0
end) AS approved_total_amount

FROM Transactions
GROUP BY country, FORMAT(trans_date, 'yyyy-MM')
=======
SELECT
FORMAT(trans_date,'yyyy-MM') month,
country,
COUNT(*) trans_count ,
SUM(
CASE WHEN state = 'approved' THEN 1
ELSE 0 
END) approved_count ,
SUM(amount) trans_total_amount,
SUM(
CASE WHEN state ='approved' THEN amount
else 0
end) AS approved_total_amount

FROM Transactions
GROUP BY country, FORMAT(trans_date, 'yyyy-MM')
>>>>>>> 360e03a (10-11)
