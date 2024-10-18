-- Add your sql here
SELECT 
    c.customer_name AS Customer,
    PRINTF('$%.2f', SUM(s.price_per_month * s.subscription_length)) AS "Amount Due"
-- orders alias to o    
FROM 
    orders o
-- join customer table, alias to c    
JOIN 
    customers c ON o.customer_id = c.customer_id
-- join subscriptions table, alias to s    
JOIN 
    subscriptions s ON o.subscription_id = s.subscription_id


