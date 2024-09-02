
with p_ord as (SELECT po.person_id,
                      po.menu_id--here we connected person_order asnd person
               FROM person_order po RIGHT JOIN (SELECT p.name, p.id
                                                 FROM person p
                                                 WHERE p.name IN ('Denis','Anna')) as t1
                                      ON po.person_id = t1.id)
SELECT m.pizza_name as pizza_name,
       pzr.name as pizzeria_name
FROM menu m INNER JOIN p_ord on p_ord.menu_id = m.id
            INNER JOIN pizzeria pzr on pzr.id = m.pizzeria_id
ORDER BY pizza_name, pizzeria_name;