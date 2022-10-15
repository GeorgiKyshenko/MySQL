CREATE FUNCTION udf_client_bill(full_name VARCHAR(50))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
DECLARE bill_price DECIMAL(10,2);
SET `bill_price` := (
select TRUNCATE(SUM(p.`price`),2) from `products` as p
join `orders_products` as op on p.`id` = op.`product_id`
join `orders_clients` as oc using (`order_id`)
join `clients` as c on oc.`client_id` = c.`id`
where concat_ws(' ',`first_name`,`last_name`) = `full_name`
);
return `bill_price`;
end;