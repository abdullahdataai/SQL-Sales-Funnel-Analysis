SELECT

COUNT(DISTINCT CASE
WHEN event_type='page_view'
THEN user_id
END) AS Views,

COUNT(DISTINCT CASE
WHEN event_type='add_to_cart'
THEN user_id
END) AS Cart,

COUNT(DISTINCT CASE
WHEN event_type='checkout_start'
THEN user_id
END) AS CheckoutStage,

COUNT(DISTINCT CASE
WHEN event_type='payment_info'
THEN user_id
END) AS PaymentStage,

COUNT(DISTINCT CASE
WHEN event_type='purchase'
THEN user_id
END) AS Purchases

FROM user_events;