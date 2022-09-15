use `minions`;

create table `towns` (
town_id int primary key auto_increment,
name varchar(250) not null
);

ALTER TABLE `minions`.`towns` 
CHANGE COLUMN `town_id` `id` INT NOT NULL AUTO_INCREMENT;

alter table `minions`
add column `town_id` int not null,
add constraint fk_minions_towns
foreign key (`town_id`)
references `towns` (`id`);

insert into `towns` (`id`, `name`)
values (1, "Sofia"), (2, "Plovdiv"), (3, "Varna");

insert into `minions` (`id`, `name`, `age`, `town_id`)
values(1, "Kevin", 22, 1), (2,"Bob", 15, 3), (3, "Steward", null, 2);

truncate table `minions`;

drop table `minions`;
drop table `towns`;



