SELECT person.name as person_name, menu.pizza_name as pizza_name, pizzeria.name as pizzeria_name
FROM person_order INNER JOIN person on person_order.person_id = person.id
                  INNER JOIN menu on menu_id = menu.id
                  INNER JOIN pizzeria on menu.pizzeria_id = pizzeria.id
ORDER BY person_name, pizza_name, pizzeria_name;







































-- SELECT person.name AS person_name, menu.pizza_name AS pizza_name, pizzeria.name AS pizzeria_name
-- FROM person_order
-- JOIN person ON person_order.person_id = person.id
-- JOIN menu ON person_order.menu_id = menu.id
-- JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
-- ORDER BY person_name, pizza_name, pizzeria_name;
