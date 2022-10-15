UPDATE `orders` AS o 
SET 
    o.`table_id` = o.`table_id` - 1
WHERE
     o.`id` between 12 and 23;