create database `mountains_peaks`;
use `mountains_peaks`;

create table `mountains` (
`id` int primary key not null auto_increment,
`name` varchar(50) not null
);

create table `peaks` (
`id` int primary key not null auto_increment,
`name` varchar(50) not null,
`mountain_id` int not null,
constraint `fk_peaks_mountains`
foreign key (`mountain_id`)
references `mountains` (`id`)
on delete cascade
);

alter table `mountains`
drop column `mountain_id`;

use `camp`;

select `driver_id`, `vehicle_type`,
concat_ws(" ", `c`.`first_name`, `c`.`last_name`) as 'Full Name'
from `vehicles` as v
join `campers` as c
on `v`.`driver_id` = `c`.`id`;


SELECT 
    `starting_point` AS 'route_starting_point',
    `end_point` AS 'route_end_point',
    `leader_id`,
    CONCAT_WS(' ', `c`.`first_name`, `c`.`last_name`) AS 'leader_name'
FROM
    `routes` AS r
        JOIN
    `campers` AS c ON `r`.`leader_id` = `c`.`id`;
    
    
    -- TASK --
CREATE TABLE `clients` (
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `client_name` VARCHAR(50)
);

alter table `clients`
modify column  `client_name` varchar(50) not null;

CREATE TABLE `projects` (
    `id` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `client_id` INT(11),
    `project_leader_id` INT(11)
);

CREATE TABLE `employees` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(50) NOT NULL,
    `project_id` INT
);

alter table `projects`
add constraint `fk_projects_clients`
foreign key (`client_id`) 
references `clients` (`id`);

alter table `projects`
add constraint `fk_projects_employees`
foreign key (`project_leader_id`) 
references `employees` (`id`);


alter table `employees`
add constraint `fk_employees_projects`
foreign key (`project_id`)
references `projects`(`id`);



