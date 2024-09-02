SELECT(SELECT person.name
		FROM person
		WHERE person.id = person_order.person_id) as name

FROM person_order as person_order
WHERE (person_order.menu_id = 13 or person_order.menu_id = 14 or person_order.menu_id = 18)
AND person_order.order_date = '2022-01-07';


--if (person_name == 'Denis') then return true
--    else return false
