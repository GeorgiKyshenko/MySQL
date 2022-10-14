SELECT 
    t.`name` AS 'team_name',
    t.`established`,
    t.`fan_base`,
    COUNT(p.`id`) AS 'count_of_players'
FROM
    `teams` AS t
        LEFT JOIN
    `players` AS p ON t.`id` = p.`team_id`
GROUP BY t.`id`
ORDER BY `count_of_players` DESC , t.`fan_base` DESC;
