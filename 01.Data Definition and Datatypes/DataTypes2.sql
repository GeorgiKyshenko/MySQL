create database `Persons`;
use `persons`;

create table `people` (
`id` int primary key auto_increment,
`name` varchar(200) not null,
`picture` blob,
`height` double,
`weight` double,
`gender` char(1) not null,
`birthdate` date not null,
`biography` text
);

insert into `people` (`name`, `gender`, `birthdate`)
values ("Boris", 'm', date(now())), 
("Aleksandar", 'm', date(now())), 
("Dancho", 'm', date(now())), ("Petar", 'm', date(now())), 
("Desi", 'f', date(now()));
