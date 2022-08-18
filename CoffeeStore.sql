  show databases; 

create database coffeeStore;
	use coffeeStore;
	create table products(
    id int auto_increment primary key,
    name varchar(30), 
    price decimal(3.2)
    );

create table customers(
id int auto_increment primary key,
first_name varchar(30),
last_name varchar(30),
gender ENUM('M','F'),
phone_num varchar(10) 
);

create table products(
id int auto_increment primary key,
name varchar(30),
price decimal(3.2)
);

create table orders(
id int auto_increment primary key,
productId int,
customerId int,
orderTime datetime,

foreign key (productId) references products(id),
foreign key (customerId) references customers(id)
);

 
    show tables;
