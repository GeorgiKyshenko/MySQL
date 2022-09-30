use `users`;

create table `user` (`id` int primary key auto_increment,
 `username` varchar(50) not null,
 `password` varchar(50) not null,
 `is_deleted` tinyint(1));

SELECT * FROM users.user;

insert into `user` (`username`, `password`) 
values
("ivan", "1234"),
("gosho", "5424"),
("petko", "nqmapass");

alter table `user`
drop primary key,
add primary key pk_users(`id`, `username`);

-- alter table `user`      --добавяне на нова колона в таблица !
-- add column `password` varchar(15)
-- after `username`;

alter table `user`
add column `last_login_time` varchar(15)
after `password`;

alter table `user`
modify column `last_login_time` datetime default now();

insert into `user` (`username`, `password`)  -- този ред вече има фефолтен datetime--
values ("dateTimeTest", "strongpassword");

alter table `user`
drop primary key,
add constraint pk_users
primary key `users` (`id`),
modify column `username` varchar(50) unique;

-- use  `users`;
-- select * from `user`

