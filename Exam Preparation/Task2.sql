SELECT 
    p.`id`,
    concat_ws(' ', `first_name`, `last_name`) as 'full name',
    p.`age`,
    p.`position`,
    p.`hire_date`
FROM
    `players` AS p
        JOIN
    `skills_data` AS sd ON p.`skills_data_id` = sd.`id`
WHERE
    p.`age` < 23 AND sd.`strength` > 50
        AND p.`hire_date` IS NULL
        AND p.`position` = 'A'
ORDER BY p.`salary` , p.`age`;