WITH pz as (SELECT m.pizza_name, m.price, m.pizzeria_id
             FROM menu m 
             WHERE pizza_name IN ('mushroom pizza', 'pepperoni pizza'))
--we made subquery
SELECT pz.pizza_name as pizza_name,
       pzr.name as pizzeria_name,
       pz.price as price
FROM pizzeria as pzr INNER JOIN pz ON pz.pizzeria_id = pzr.id
ORDER BY pizza_name ASC, pizzeria_name;