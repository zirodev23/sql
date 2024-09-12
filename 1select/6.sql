-- 1. uzdevums
-- Atlasi visus datus no 'sql_hr'
-- datubāzes 'employees' tabulas.
use sql_hr;
select * from employees;

-- 2. uzdevums
-- Atlasīt visu klientu vārdus
-- no 'sql_store'datubāzes
-- use sql_store;
select
	first_name,
    last_name
from sql_store.customers;

-- 3. uzdevums
-- Atlasi visus ierakstus no 'sql_hr'
-- datubāzes 'employees' tabulas,
-- kuriem NAV vērtības
-- laukā 'reports_to'
use sql_hr;
select * from employees
where reports_to is not null;

-- 4.uzdevums
-- Atlasi visus sūtījumus no 'sql_store',
-- kuru statuss ir "Processed"
SELECT
	order_id,
    customer_id,
    status
FROM sql_store.orders
where status = 1;