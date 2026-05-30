SELECT

COUNT(*) AS TotalOrders

FROM user_events

WHERE event_type='purchase';