SELECT 
    `first_name`,
    `last_name`,
    `birthdate`,
    `review`
FROM
    `clients`
    where `card` is null 
    and year(`birthdate`) between 1978 and 1993
    order by `last_name` desc, `id`
    limit 5;