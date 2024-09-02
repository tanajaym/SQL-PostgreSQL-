SELECT( SELECT person.name
		FROM person
		WHERE person.id = person_order.person_id) as name,

CASE when (
		SELECT person.name 
		FROM person
		WHERE person.id = person_order.person_id) = 'Denis' then true 
		else false 
END as check_name
		
FROM person_order 
WHERE (person_order.menu_id = 13 or person_order.menu_id = 14 or person_order.menu_id = 18)
AND person_order.order_date = '2022-01-07';

