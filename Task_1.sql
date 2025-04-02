create database Assignments;

use Assignments;

create table Customer(FirstName varchar(100), LastName varchar(100), Gender char(1), 
age tinyint, isSubscribed bit, CreditLimit decimal(8, 2), City nvarchar(100));

insert into Customer(FirstName, LastName, Gender, age, isSubscribed, CreditLimit, City)
VALUES('Pavithra', 'Purushothaman', 'F', 19, 1, 90000.00, 'Philipp Straße');

insert into Customer(FirstName, LastName, Gender, age, isSubscribed, CreditLimit, City)
VALUES('Lokesh', 'Bask', 'M', 20, 1, 85000, N'சென்னை');

insert into Customer(FirstName, LastName, Gender, age, isSubscribed, CreditLimit, City)
VALUES('Loges', 'Purush', 'F', 17, 0, 90000, N'नमस्ते');

insert into Customer(FirstName, LastName, Gender, age, isSubscribed, CreditLimit, City)
VALUES('Sara', 'Purush', 'F', 28, 1, 100000, 'Chennai');

insert into Customer(FirstName, LastName, Gender, age, isSubscribed, CreditLimit, City)
VALUES('Purush', 'Rama', 'M', 30, 0, 50000, 'Chennai');

--Retreive all customers.
select *from Customer;

--Display only FirstName, LastName and City.
select FirstName, LastName, City from Customer;

--Count how many customers are subscribed.
SELECT COUNT(*) from Customer WHERE isSubscribed = 1;

--Get all distinct cities.
SELECT distinct city FROM Customer;

--Count total number of customers.
SELECT COUNT(*) from Customer;