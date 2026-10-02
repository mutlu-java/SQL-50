<<<<<<< HEAD
WITH RankedOrders AS (
    SELECT 
        order_date,
        customer_pref_delivery_date,
        ROW_NUMBER() OVER (
            PARTITION BY customer_id 
            ORDER BY order_date ASC
        ) AS rnk
    FROM Delivery
)
SELECT 
    ROUND(
        AVG(
            CAST(
                CASE 
                    WHEN order_date = customer_pref_delivery_date THEN 1 
                    ELSE 0 
                END AS DECIMAL(10, 4)
            )
        ) * 100, 2
    ) AS immediate_percentage
FROM RankedOrders
=======
WITH RankedOrders AS (
    SELECT 
        order_date,
        customer_pref_delivery_date,
        ROW_NUMBER() OVER (
            PARTITION BY customer_id 
            ORDER BY order_date ASC
        ) AS rnk
    FROM Delivery
)
SELECT 
    ROUND(
        AVG(
            CAST(
                CASE 
                    WHEN order_date = customer_pref_delivery_date THEN 1 
                    ELSE 0 
                END AS DECIMAL(10, 4)
            )
        ) * 100, 2
    ) AS immediate_percentage
FROM RankedOrders
>>>>>>> 360e03a (10-11)
WHERE rnk = 1;