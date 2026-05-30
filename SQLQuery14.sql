SELECT

AVG(amount) AS AverageOrderValue

FROM user_events

WHERE event_type='purchase';