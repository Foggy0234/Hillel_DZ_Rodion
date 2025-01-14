create database dz_27_1;

create table car_brands (
id int unique auto_increment,
title varchar (100)
);

describe car_brands;

create table car_models (
id int unique auto_increment,
carBrandId int unique,
title varchar (100)
);

describe car_models;

create table users (
id int unique auto_increment,
firstName varchar (20),
lastName varchar (20),
email varchar (20) unique not null,
password varchar (30)
);


describe users;

create table cars (
id int unique auto_increment,
userId int unique,
carBrandId int unique,
carModelId int unique,
mileage int,
initialMilleage int 
);



describe cars;

insert into car_brands (title)
values ("BMW"),
("Toyota"),
("Audi"),
("Fiat"),
("Porsche");

select * from car_brands;

insert into car_models (title)
values ("M5"),
("Camry"),
("Q7"),
("500"),
("taycan");

select * from car_models;

insert into users (firstName, lastName, email, password)
values ("George", "White", "GeorgeWhite@example.com", "George12345"),
("Michael", "Smith", "MichaelSmith@example.com", "Mike98765"),
("Sarah", "Johnson", "SarahJohnson@example.com", "Sarah54321"),
("Emily", "Brown", "EmilyBrown@example.com", "Emily1234"),
("James", "Davis", "JamesDavis@example.com", "James2025");

select * from users;

insert into cars (userId, carBrandId, carModelId, mileage, initialMilleage)
values ("13560", "8463"),
("52550", "14363"),
("74560", "2463"),
("364560", "85463");

select * from cars;

