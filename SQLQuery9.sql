WITH Funnel AS
(
SELECT

COUNT(DISTINCT CASE WHEN event_type='page_view'
THEN user_id END) AS Views,

COUNT(DISTINCT CASE WHEN event_type='add_to_cart'
THEN user_id END) AS Cart,

COUNT(DISTINCT CASE WHEN event_type='checkout_start'
THEN user_id END) AS CheckoutStage,

COUNT(DISTINCT CASE WHEN event_type='payment_info'
THEN user_id END) AS PaymentStage,

COUNT(DISTINCT CASE WHEN event_type='purchase'
THEN user_id END) AS Purchases

FROM user_events
)

SELECT

Views,
Cart,
CheckoutStage,
PaymentStage,
Purchases,

ROUND(Cart*100.0/Views,2)
AS ViewToCartRate,

ROUND(CheckoutStage*100.0/Cart,2)
AS CartToCheckoutRate,

ROUND(PaymentStage*100.0/CheckoutStage,2)
AS CheckoutToPaymentRate,

ROUND(Purchases*100.0/PaymentStage,2)
AS PaymentToPurchaseRate,

ROUND(Purchases*100.0/Views,2)
AS OverallConversionRate

FROM Funnel;