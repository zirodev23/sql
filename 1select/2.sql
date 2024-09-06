-- uzdevums: atlasīt datus no tabulas 'customers'
-- datubāzē 'sql_store'
-- atlasīt vārdu, uzvārdu un punktus

use sql_store;
-- select
-- 	first_name,
--     last_name,
--     points,
--     points+100 as "points increased"
-- from customers;

select distinct state from customers;


select * from customers
limit 5;



