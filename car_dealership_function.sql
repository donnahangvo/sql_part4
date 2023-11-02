  	invoice_id SERIAL primary key,
  	invoice_date DATE DEFAULT CURRENT_DATE,
  	subtotal NUMERIC(8,2),
  	total NUMERIC(8,2),
  	salesperson_id INTEGER,
  	newcar_id INTEGER,
  	usedcar_id INTEGER
  	
create or replace function add_invoice(
	invoice_id INTEGER,
  	invoice_date DATE,
  	subtotal NUMERIC(8,2),
  	total NUMERIC(8,2),
  	salesperson_id INTEGER,
  	newcar_id INTEGER,
  	usedcar_id INTEGER)
returns void
as $MAIN$
begin
	insert into invoice(
		invoice_id,
  		invoice_date,
  		subtotal,
  		total,
  		salesperson_id,
  		newcar_id,
  		usedcar_id)
	values (
		invoice_id,
  		invoice_date,
  		subtotal,
  		total,
  		salesperson_id,
  		newcar_id,
  		usedcar_id);
end;
$MAIN$
language plpgsql;

select add_invoice(3, current_date, 21900, 20000, 2, 2, null)

select add_invoice(4, current_date, 9900, 9500, 1, null, 2)

select * from invoice