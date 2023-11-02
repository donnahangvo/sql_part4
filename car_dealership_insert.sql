--Customers--
insert into customer (
	customer_id,
  	first_name,
  	last_name,
  	billing_info,
 	address
)values(
	1,
	'Jamie',
	'Jay',
	'5555-5555-5555-5555 555 01/2050',
	'555 Totally a Town, Towny Town, MA 00000'
);

insert into customer(
	customer_id,
	first_name,
	last_name,
	billing_info,
	address
)values(
	2,
	'David',
	'Day',
	'5555-5555-5555-5555 555 01/2050',
	'555 Totally a Town, Towny Town, MA 00000'
);

--Salesperson--
insert into salesperson (
  	salesperson_id,
  	first_name,
  	last_name
)values(
	1,
	'Bonnie',
	'Boop'
);

insert into salesperson (
  	salesperson_id,
  	first_name,
  	last_name
)values(
	2,
	'Wilson',
	'Ball'
);

-- New Car--
insert into new_car (
  	newcar_id,
  	vin_number,
  	make,
  	model,
  	car_year
)values(
	1,
	12345678912345678,
	'Toyota',
	'Grand Highlander',
	2024
);

insert into new_car (
  	newcar_id,
  	vin_number,
  	make,
  	model,
  	car_year
)values(
	2,
	23456789123456789,
	'Toyota',
	'Corolla',
	2024
);

--Used Car--
insert into used_car (
  	usedcar_id,
  	vin_number,
  	make,
  	model,
  	car_year
)values(
	1,
	34567891234567891,
	'Toyota',
	'Corolla',
	2012
);

insert into used_car (
  	usedcar_id,
  	vin_number,
  	make,
  	model,
  	car_year
)values(
	2,
	45678912345678912,
	'Toyota',
	'Highlander',
	2008
);

--Invoice--

insert into invoice(
	invoice_id,
	invoice_date,
	subtotal,
	total,
	salesperson_id,
	newcar_id,
	usedcar_id)
values(
	1,
	'11/1/2023'
	7788,
	9170,
	2,
	null,
	1
);

insert into invoice(
	invoice_id,
	invoice_date,
	subtotal,
	total,
	salesperson_id,
	newcar_id,
	usedcar_id)
values(
	2,
	'11/1/2023'
	44670,
	58125,
	1,
	1,
	null);

--Mechanic--
insert into mechanic (
  	mechanic_id,
  	first_name,
  	last_name
)values(
	1,
	'Sam',
	'Iam'
);

insert into mechanic (
  	mechanic_id,
  	first_name,
  	last_name
)values(
	2,
	'Tony',
	'Bloney'
);

--Car Parts--
insert into car_parts (
  	carpart_id,
  	part_description,
  	manufacturer,
  	unit_cost
)values(
	1,
	'Windshield Wiper',
	'CarPartsRUs',
	39.99
	);

insert into car_parts (
  	carpart_id,
  	part_description,
  	manufacturer,
  	unit_cost
)values(
	2,
	'Carburetor',
	'CarPartsRUs',
	69.99
	);

--Service--
insert into service (
  	service_id,
  	service_date,
  	service_length,
  	service_type,
  	service_estimate,
  	service_total,
  	vin_number,
  	mechanic_id,
  	carpart_id,
  	salesperson_id
)values(
	1,
	'11/1/2023'
	1,
	'replace windshield wiper',
	50.00,
	60.00,
	34567891234567891,
	1,
	1,
	2
);

insert into service (
  	service_id,
  	service_date,
  	service_length,
  	service_type,
  	service_estimate,
  	service_total,
  	vin_number,
  	mechanic_id,
  	carpart_id,
  	salesperson_id
)values(
	2,
	'11/1/2023'
	2,
	'general maintenance check',
	100.00,
	null,
	45678912345678912,
	2,
	1,
	2
);

select * from service
