
--  ##CREATE USERS TABLE####

create table users(
  user_id serial primary key,
  role varchar(50) check (role in('Admin','Customer')) default 'Customer',
  name varchar(100) not null,
  email varchar(100) unique not null ,
  password varchar(150) not null,
  phone varchar(20)
);

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


-- https://lucid.app/publicSegments/view/90242841-33d8-4881-a917-b380e12ef8d4

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