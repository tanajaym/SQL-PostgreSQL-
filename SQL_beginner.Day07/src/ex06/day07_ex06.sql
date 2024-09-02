SELECT pz.name as name,
        COUNT(pz.name) as count_of_orders,
        round(AVG(m.price), 2) as average_price,
        MAX(m.price) as max_price,
        MIN(m.price) as min_price
FROM person_order po inner join menu m ON po.menu_id = m.id
                    inner join pizzeria pz ON m.pizzeria_id = pz.id
GROUP BY pz.name
ORDER BY pz.name;



