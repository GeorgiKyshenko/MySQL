SELECT 
    e.`id` AS 'No.',
    e.`first_name` AS 'First Name',
    e.`last_name` AS 'Last Name',
    e.`job_title` AS 'Job Title'
FROM
    `employees` as e
ORDER BY `id` , `first_name`;

select `id` as "No.", concat_ws(' ',`first_name`, `last_name`) as "Full Name"
from `employees`;

select `id`, concat_ws(' ',`first_name`, `last_name`) as "Full Name",
`job_title` as "Job Title",
`salary` as "Salary"
from `employees` where `salary` > 1000 
order by `id`;

select distinct `department_id`  -- distinct removes duplicates --
from `employees`;

select `id`, `first_name`, `department_id`
from `employees`
where `department_id` = 1 or `department_id` = 2;

select `id`, `first_name`, `department_id`
from `employees`
where `department_id` = 1 AND `first_name` = "John"; -- we cant use AND on two identical columns !!! --

select `id`, `first_name`, `department_id`
from `employees`
where NOT (`department_id` = 2 AND `first_name` = "John"); -- use brackets to specify how/where to apply NOT -- 

select `id`, `first_name`, `department_id`
from `employees`
where `department_id` IN (1,2);

select `id`, `first_name`, `department_id`
from `employees`
where `department_id` NOT IN (1,2);

select `id`, `first_name`, `salary`
from `employees`
where `salary` between 2000 and 2200;

select * from `employees`
where `department_id` = 4 and salary > 1000;


CREATE VIEW `employees_from_1_3_4_salary_over_1500` as 
	SELECT 
    e.`id` AS 'No.',
    e.`first_name` AS 'First Name',
    e.`last_name` AS 'Last Name',
    e.`job_title` AS 'Job Title'
FROM `employees` AS e
WHERE `department_id` IN (1 , 3, 4) AND `salary` > 1500
ORDER BY `first_name` , `last_name`;

select * from `employees_from_1_3_4_salary_over_1500`;

select * from `employees`
order by `salary` desc
limit 1;

select * from `employees`
order by `salary` desc
limit 3,2; -- прескача 3 реда и взима следващите 2 --
