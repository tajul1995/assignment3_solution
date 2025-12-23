
--  ##CREATE USERS TABLE####

create table users(
  user_id serial primary key,
  role varchar(50) check (role in('Admin','Customer')) default 'Customer',
  name varchar(100) not null,
  email varchar(100) unique not null ,
  password varchar(150) not null,
  phone varchar(20)
);

insert into  users (role, name, email, password, phone) VALUES
('Admin', 'Tajul Islam', 'tajul.admin@example.com', 'Admin@123', '01712345678'),
('Customer', 'Rina Akter', 'rina.customer@example.com', 'Rina@123', '01898765432'),
('Customer', 'Sajid Hossain', 'sajid.customer@example.com', 'Sajid@123', '01911223344'),
('Customer', 'Nabila Karim', 'nabila.customer@example.com', 'Nabila@123', '01655667788'),
('Admin', 'Rahim Uddin', 'rahim.admin@example.com', 'Rahim@123', '01599887766');





-- CREATE VEHICLES TABLE-----------


create table vehicles (
  vehicle_id serial primary key,
  name varchar(100) not null,
  type varchar(50) check(type in ('car','bike','truck')),
  model varchar(100) ,
  registration_number varchar(100) unique not null,
  rental_price numeric(10,2) not null,
  status varchar(50) check(status in ('available','rented','maintenance'))
);

insert into vehicles(name,type,model,registration_number,rental_price,status) VALUES
('honda','bike','2024','ABC-345',50.00,'maintenance'),
('Toyota Corolla','car','2022','ABC-123',50.00,'available'),
('Honda Civic','car','2021','XYZ-456',45.00,'rented'),
('Yamaha R15','bike','2023','BIK-789',20.00,'available');




--https://lucid.app/publicSegments/view/5b0827be-41ac-48cd-b0b2-fc44a9af8bbc

-- CREATE BOOKINGS TABLE----------------

create table bookings(
  booking_id serial primary key,
  user_id integer references users(user_id),
  vehicle_id integer references vehicles(vehicle_id),
  start_date date,
  end_date date,
  status varchar(50) check(status in ('completed','confirmed','pending','cancelled')),
  total_cost numeric(10,2)
);

insert into bookings(user_id,vehicle_id,start_date,end_date,status,total_cost) VALUES
(4,1,'2025-12-24','2025-12-26','completed',120.00),
(2,1,'2025-12-20','2025-12-22','confirmed',100.00),
(2,3,'2025-12-25','2025-12-26','pending',20.00);







-- Retrieve booking information along with Customer name and Vehicle name.

select
  b.booking_id,
  u.name as customer_name,
  v.name as vehicle_name,
  b.start_date,
  b.end_date,
  b.status
from
  bookings b
  join users u on u.user_id = b.user_id
  join vehicles v on v.vehicle_id = b.vehicle_id;

-- Find all vehicles that have never been booked.
select
  * from vehicles v
where
  not exists (
    select
      *
    from
      bookings b
    where
      b.vehicle_id = v.vehicle_id
  );


  --  Retrieve all available vehicles of a specific type (e.g. cars).

  select * from vehicles where status='available' and type='car';

  -- Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings.

  select
  v.name as vehicle_name,
  count(b.vehicle_id) as total_bookings
from
  bookings b
  join vehicles v on v.vehicle_id = b.vehicle_id
group by
  v.name having count(b.vehicle_id)>2;