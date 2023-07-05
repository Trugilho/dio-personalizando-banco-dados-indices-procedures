show databases;
use transactionexample;

-- drop view [if exists] [database_name].[view_name]
drop view if exists v_today;

-- to create a view
create view v_today as select current_date;

-- to change the view with replace, we use the following command
create or replace view v_today (today) as select current_date();

-- podemos utilizar alter table para modificar as views 
ALTER VIEW v_today AS SELECT current_date();

select * from v_today;

-- para descobrir quais colunas estão disponíveis na view usamos:
describe v_today;