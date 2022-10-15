SELECT p.id, p.name, count(op.product_id) as 'count'
FROM products as p
JOIN orders_products as op on p.id = op.product_id
GROUP BY op.product_id
HAVING count >= 5
ORDER BY count DESC, p.name ASC;