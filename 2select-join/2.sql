-- 'sql_store' datubāze.
-- Atlasi datus no 'orders' un 'customers' tabulām,
-- lai var redzēt klienta vārdu pie katra
-- pasūtījuma ieraksta

-- izmantojam alias

SELECT 
    o.order_id,
    c.customer_id,
    c.first_name,
    c.last_name
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;

-- iegūt to pašu rezultātu ar USING
SELECT 
    o.order_id,
    c.customer_id,
    c.first_name,
    c.last_name
FROM orders o
JOIN customers c
	USING (customer_id);
    
-- kreisajā pusē paņemt customers
use sql_store;
SELECT 
    o.order_id,
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
JOIN orders o
	ON o.customer_id = c.customer_id;