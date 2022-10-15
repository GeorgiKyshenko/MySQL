delete w from `waiters` as w
left join `orders` as o on w.`id` = o.`waiter_id`
where o.`waiter_id` is null;