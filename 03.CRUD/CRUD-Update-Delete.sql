describe `employees`;

insert into `rooms` (`type`) 
values ('Single Delux Room');

insert into `rooms` (`type`) 
(select concat('Helle', ' ', 'Room') from `employees`);

update `employees`
set `last_name` = "Brown"
where `id` = 1;

update `employees`
set `salary` = `salary` + 100
where `job_title` = "Manager";

delete from `employees`
where `department_id` = 1 or `department_id` = 2;
select * from `employees` order by `id`;

