-- use sql_store;
SELECT 
    order_id, customer_id, name
FROM
    orders
join order_statuses
	on orders.status = order_statuses.order_status_id;