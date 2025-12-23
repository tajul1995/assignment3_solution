##Introduction
My name is Mohammad Tajul Islam, and this document contains my submission for Assignment 3.
This assignment evaluates my understanding of database table design, Entity Relationship Diagrams (ERD), and SQL queries using PostgreSQL. All required components have been implemented according to the assignment guidelines.

####Assignment Objectives
1.Design relational database tables

2.Create an ERD with proper relationships

3.Use Primary Keys (PK) and Foreign Keys (FK)

4.Write SQL queries using JOIN, WHERE, EXISTS, GROUP BY, and HAVING caluse

###Database Overview
The Vehicle Rental System manages the following entities:
**USERS
1.User role (Admin / Customer)

2.Name, email, password, phone number

3.Each email address must be unique

**VEHICLES
Stores vehicle details including:
1.Vehicle name, type check (car, bike, truck), model

2.Registration number must be unique

3. price numeric

4.Availability status (available, rented, maintenance)


**BOOKINGS
Stores booking information such as:
1.Which user made the booking

2.Which vehicle was booked

3.Start and end date of rental

4.Booking status (pending, confirmed, completed, cancelled)

5.Total cost for bookings


###ERD (Entity Relationship Diagram)
The ERD is designed using Lucidchart and includes:
1.Primary Keys (PK) for each table

2.Foreign Keys (FK) to establish relationships

3.One-to-Many relationship between User and Bookings

4.One-to-Many relationship between Vehicle and Bookings

5.Status fields for vehicles and bookings
ERD Link: https://lucid.app/publicSegments/view/90242841-33d8-4881-a917-b380e12ef8d4

The queries.sql file contains all required SQL queries with complete solutions, including:

##Table Creation
1.CREATE TABLE statements for Users, Vehicles, and Bookings.
2. Proper use of PK, FK, UNIQUE, and CHECK constraints.
##Sample Data Insertion
1. Sample records for users, vehicles, and bookings to test queries.

##Query Solutions

1.Retrieving booking details using JOIN and
JOIN is used to combine data from two or more tables based on a related column.
in frist question we are using inner join.inner join Returns only the rows where there is a match in both tables.
2.Finding vehicles that have never been booked using NOT EXISTS.in this question  mention find the vehicles never been booked means find thats vehicles dont have  booking status in booking table .we can use lfet join bookings table to vehicles table and find the bookings status null but requirment is use to not exists.but both work same.
3.Retrieving available vehicles using WHERE clauses  and AND operator to find specific data.
4.Counting total bookings per vehicle using GROUP BY and HAVING clauses .using group by to get unique vehicles and using count to get unique vehicles total number and use grater than to match the requirment.
5.Filtering bookings based on status and conditions

##Tools & Technologies Used
1.PostgreSQL for  Database system and testing purpase using Bekeeper tools.
2.Lucidchart  for ERD design.
3.GitHub for  Version control and submission.


## Submission Links
GitHub Repository:https://github.com/tajul1995/assignment3_solution
ERD Link: https://lucid.app/publicSegments/view/90242841-33d8-4881-a917-b380e12ef8d4
 Video Link:https://drive.google.com/file/d/1I25HoVlPNfhGkzv1hJaxz2MTdq12ogzH/view

##Final Notes
1.All SQL logic and solutions are provided in queries.sql file.
2.ERD link is public and viewable without login.
3.video task in google drive link to watch everyone.



















