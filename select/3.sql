-- 1.uzdevums
-- atlasīt visus ierakstus no Orders tabulas,
-- kuri izveidoti 2018.gadā
-- SELECT * FROM sql_store.orders;
use sql_store;
select * from orders
where order_date >= '2018-01-01' and order_date < '2019-01-01';

-- 2.uzdevums
-- atlasīt visus ierakstus no Customers tabulas,
-- kuri nedzīvo štatā ar saīsinājumu 'VA'
use sql_store;
select
first_name,
last_name,
points,
state
from customers
-- where state != 'VA';
where state not in ('VA','CO','FL');

