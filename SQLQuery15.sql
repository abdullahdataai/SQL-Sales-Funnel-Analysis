SELECT

SUM(amount)
/
COUNT(DISTINCT user_id)
AS RevenuePerBuyer

FROM user_events

WHERE event_type='purchase';