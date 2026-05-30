SELECT TOP 10

user_id,

SUM(amount) AS TotalSpent

FROM user_events

WHERE event_type='purchase'

GROUP BY user_id

ORDER BY TotalSpent DESC;