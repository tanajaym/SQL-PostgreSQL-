--Please use the SQL statement from Exercise #01 and display the names of pizzas from the pizzeria 
--that no one has ordered, including the corresponding prices. 
WITH orders as (SELECT m.id as menu_id 
              FROM menu m
              EXCEPT 
              SELECT po.menu_id
              FROM person_order po 
              ORDER BY menu_id)
--we subquary a table for menu.id that weren't ordered by anyone 
SELECT 	m.pizza_name as pizza_name,
        m.price as price,
        pz.name as pizzeria_name
FROM orders inner join menu m ON orders.menu_id = m.id --соеденили с адйдишками munu
                                                      --теперь menu = order
            inner join pizzeria pz ON m.pizzeria_id = pz.id
                                                       --join with id pz and compare with new menu
ORDER BY pizza_name, price;