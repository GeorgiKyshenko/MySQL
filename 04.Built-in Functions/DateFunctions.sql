-- extract year -- 
select extract(YEAR FROM '2022-10-8');

-- extract minute -- 
select extract(minute FROM '2022-10-8 20:30');

-- minutes differences between two dates and exact time -- 
select abs(timestampdiff(minute, '2022-10-8 14:30', '2022-10-7 15:40'));

select concat_ws(" ", `first_name`, `last_name`) as "Full Name",
timestampdiff(day, `born`, `died`) as "Days Lived"
from `authors`;

select now();

-- date format --
select date_format(`born`, '%D %b %Y')
from `authors`;