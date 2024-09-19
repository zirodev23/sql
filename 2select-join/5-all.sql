-- 1. uzdevums
-- Atlasīt datus no klientu tabulas ‘sql_store’ datubāzē.
-- Pievienot atlasei klientu veiktos pasūtījumus.
-- Atlasīt tikai vārdu uzvārdu, klienta id,
-- pasūtījuma id un pasūtījuma datumu.

use sql_store;

SELECT 
    c.first_name,
    c.last_name,
    c.customer_id,
    o.order_id,
    o.order_date,
    sh.name as 'shipper name',
    os.name as 'status name'
FROM
    customers c
        JOIN
    orders o USING (customer_id)
        JOIN
    shippers sh USING (shipper_id)
    join order_statuses os
    on o.status = os.order_status_id;

-- 2. uzdevums
-- Papildināt 1. uzdevuma atlasi papildus
-- pievienojot arī ‘shippers’ tabulu un
-- atlases laukiem pievienot piegādātāja nosaukumu.

-- 3. uzdevums
-- Papildināt to pašu selektu tā,
-- lai starp atlasītajiem laukiem būtu arī
-- pasūtījuma statusa nosaukums

-- 4. uzdevums
-- Atlasīt datus no darbinieku tabulas tā,
-- lai starp atlases laukiem būtu arī
-- darbinieku vadītāja vārds.

use sql_hr;

select
	e.first_name,
    e.last_name,
    m.first_name as "manager name"
from employees e
join employees m
on e.reports_to = m.employee_id;

