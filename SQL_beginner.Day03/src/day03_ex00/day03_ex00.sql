
with pers as (SELECT *
              FROM person p
              WHERE p.name = 'Kate')
SELECT m.pizza_name as pizza_name,
       m.price as price,
       pz.name as pizzeria_name,
       pv.visit_date as visit_date
FROM pizzeria pz inner join menu m ON m.pizzeria_id = pz.id
                 inner join person_visits pv ON pz.id = pv.pizzeria_id
                 inner join pers ON pv.person_id = pers.id
WHERE m.price BETWEEN 800 and 1000
ORDER BY pizza_name, price, pizzeria_name;
