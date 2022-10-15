create database restaurant_db;
use restaurant_db;

create table products(
id int primary key auto_increment,
`name` varchar(30) not null unique,
`type` varchar(30) not null,
price decimal(10,2) not null
);

create table clients(
id int primary key auto_increment,
`first_name` varchar(50) not null,
`last_name` varchar(50) not null,
`birthdate` date not null,
`card` varchar(50),
`review` text
);

create table `tables`(
id int primary key auto_increment,
`floor` int not null,
`reserved` boolean,
`capacity` int not null
);


create table waiters(
id int primary key auto_increment,
`first_name` varchar(50) not null,
`last_name` varchar(50) not null,
`email` varchar(50) not null,
`phone` varchar(50),
`salary` decimal(10,2)
);

create table `orders`(
`id` int primary key auto_increment,
`table_id` int not null,
`waiter_id` int not null,
`order_time` time not null,
`payed_status` boolean,
constraint `fk_orders_tables`
foreign key (`table_id`)
references `tables`(`id`),
constraint `fk_orders_waiters`
foreign key (`waiter_id`)
references `waiters`(`id`)
);

create table `orders_clients`(
`order_id` int ,
`client_id` int,
constraint `fk_orders_clients_orders`
foreign key (`order_id`)
references `orders`(`id`),
constraint `fk_orders_clients_clients`
foreign key (`client_id`)
references `clients`(`id`)
);

create table `orders_products`(
`order_id` int ,
`product_id` int,
constraint `fk_orders_products_orders`
foreign key (`order_id`)
references `orders`(`id`),
constraint `fk_orders_products_products`
foreign key (`product_id`)
references `products`(`id`)
);
