create database `soft_uni2`;

use  `soft_uni2`;

CREATE TABLE `towns` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL
);

CREATE TABLE `addresses` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `address_text` VARCHAR(255) NOT NULL,
    `town_id` INT NOT NULL
);

CREATE TABLE `departments` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL
);

CREATE TABLE `employees` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(255) NOT NULL,
    `middle_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `job_title` VARCHAR(255) NOT NULL,
    `department_id` INT NOT NULL,
    `hire_date` DATE,
    `salary` DECIMAL,
    `address_id` INT NOT NULL
);

insert into `towns` (`name`)
values ("Sofia"), ("Plovdiv"), ("Varna"), ("Burgas");

insert into `departments` (`name`)
values ("Engeneering"), ("Sales"), ("Marketin"), ("Software Development"), ("Quality Assurance") ;

insert into `employees` (`first_name`, `middle_name`, `last_name`, `job_title`, `department_id`, `hire_date`, `salary`)
values  ("Ivan", "Ivanov", "Ivanov", ".NET Developer", "4", "2013-03-02", 3500.10),
("Petar", "Petrov", "Petrov", "Senior Engineer", "1", "2012-03-02", 4500.20),
("Maria", "Ivanov", "Petrova", "Intern", "5", "2018-03-02", 5500.30),
("Georgi", "Terziev", "Ivanov", "CEO", "2", "2015-03-02", 6500.40),
("Peter", "Pan", "Pan", "Intern", "3", "2020-03-02", 7500.50);

-- truncate table `employees`;

select * from `towns`
order by `name`;

select * from `departments`
order by `name`;

select * from `employees`
order by `salary` desc;

select `name` from `towns`
order by `name`;

select `name` from `departments`
order by `name`;

select `first_name`, `last_name`, `job_title`,`salary` from `employees`
order by `salary` desc;

update `employees`
set `salary` = `salary` * 1.10;

select `salary` from `employees`
order by `salary` desc;



