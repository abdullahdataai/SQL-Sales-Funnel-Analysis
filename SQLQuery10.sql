SELECT

traffic_source,

COUNT(DISTINCT CASE
WHEN event_type='page_view'
THEN user_id
END) AS Views,

COUNT(DISTINCT CASE
WHEN event_type='purchase'
THEN user_id
END) AS Purchases,

ROUND(
COUNT(DISTINCT CASE
WHEN event_type='purchase'
THEN user_id
END)*100.0
/
COUNT(DISTINCT CASE
WHEN event_type='page_view'
THEN user_id
END)
,2) AS ConversionRate

FROM user_events

GROUP BY traffic_source

ORDER BY ConversionRate DESC;