SELECT

SUM(amount) AS TotalRevenue

FROM user_events

WHERE event_type='purchase';