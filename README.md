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
GitHub Repository:
ERD Link: https://lucid.app/publicSegments/view/90242841-33d8-4881-a917-b380e12ef8d4
 Video Link:https://drive.google.com/file/d/1I25HoVlPNfhGkzv1hJaxz2MTdq12ogzH/view

##Final Notes
1.All SQL logic and solutions are provided in queries.sql file.
2.ERD link is public and viewable without login.
3.video task in google drive link to watch everyone.
