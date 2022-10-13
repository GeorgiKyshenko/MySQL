-- grouping  -GROUP BY връща уникални стойности и позволява агрегиращи функции като sum, etc --
select `department_id`, sum(`salary`)
from `employees`
group by `department_id`
order by `department_id` desc;

-- count -- 
select `department_id`, count(`id`)
from `employees`
group by `department_id`;

-- max --
select `department_id`, max(`salary`)
from `employees`
group by `department_id`;

-- min and having (we cannot use having without group by!) -- 
select `department_id`, min(`salary`) as `Min Salary`
from `employees`
group by `department_id`
having `Min Salary` > 800;

-- avg --
select `department_id`, round(avg(`salary`), 2)
from `employees`
group by `department_id`;


