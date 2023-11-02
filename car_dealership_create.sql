create table customer (
	customer_id SERIAL primary key,
  	first_name VARCHAR(100),
  	last_name VARCHAR(100),
  	billing_info VARCHAR(100),
 	address VARCHAR(100)
);

create table salesperson (
  	salesperson_id SERIAL primary key,
  	first_name VARCHAR(100),
  	last_name VARCHAR(100)
);

create table new_car (
  	newcar_id SERIAL primary key,
  	vin_number VARCHAR(100),
  	make VARCHAR(100),
  	model VARCHAR(100),
  	car_year INTEGER
);

create table used_car (
  	usedcar_id SERIAL primary key,
  	vin_number VARCHAR(100),
  	make VARCHAR(100),
  	model VARCHAR(100),
  	car_year INTEGER
);

create table invoice (
  	invoice_id SERIAL primary key,
  	invoice_date DATE DEFAULT CURRENT_DATE,
  	subtotal NUMERIC(8,2),
  	total NUMERIC(8,2),
  	salesperson_id INTEGER,
  	newcar_id INTEGER,
  	usedcar_id INTEGER,
  	foreign key(salesperson_id) references salesperson(salesperson_id),
  	foreign key(newcar_id) references new_car(newcar_id),
  	foreign key(usedcar_id) references used_car(usedcar_id)
);

create table mechanic (
  	mechanic_id SERIAL primary key,
  	first_name VARCHAR(100),
  	last_name VARCHAR(100)
);

create table car_parts (
  	carpart_id SERIAL primary key,
  	part_description VARCHAR(200),
  	manufacturer VARCHAR(100),
  	unit_cost NUMERIC(8,2)
);

create table service (
  	service_id SERIAL primary key,
  	service_date DATE DEFAULT CURRENT_DATE,
  	service_length INTEGER,
  	service_type VARCHAR(200),
  	service_estimate NUMERIC(8,2),
  	service_total NUMERIC(8,2),
  	vin_number VARCHAR(100),
  	mechanic_id INTEGER,
  	carpart_id INTEGER,
  	salesperson_id INTEGER,
  	foreign key(salesperson_id) references salesperson(salesperson_id)
);
