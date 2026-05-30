SELECT TOP 10

product_id,

COUNT(*) AS TotalSales,

SUM(amount) AS Revenue

FROM user_events

WHERE event_type='purchase'

GROUP BY product_id

ORDER BY Revenue DESC;