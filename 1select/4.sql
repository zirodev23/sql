-- 1.uzdevums 
-- atlasīt visus klientus, kuri dzimuši no 1990. gada
-- UN kuriem ir vairāk kā 1000 punktu
use sql_store;
select * from customers
where birth_date > '1990-01-01'
	and points > 1000;

-- 2.uzdevums 
-- atlasīt visus klientus, kuri dzimuši no 1990. gada
-- VAI kuriem ir vairāk kā 1000 punktu
use sql_store;
select * from customers
where birth_date > '1990-01-01'
	or points > 1000;

-- 3.uzdevums 
-- atlasīt visus klientus, kuri dzimuši no 1990. gada
-- VAI kuriem ir vairāk kā 1000 punktu
-- un dzīvo 'VA' vai 'CO' štatā
use sql_store;
select * from customers
where birth_date > '1990-01-01'
	or points > 1000 and state in ('VA','CO');