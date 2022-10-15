insert into `products`(`name`, `type`, `price`)(
select
 concat(w.`last_name`, ' ', 'specialty' ),
 'Cocktail',
 ceiling(w.`salary`/ 100)
from `waiters` as w
where w.`id` > 6);