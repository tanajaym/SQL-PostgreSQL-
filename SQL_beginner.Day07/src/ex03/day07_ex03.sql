with order_count as ((SELECT pz.name as name,
                        count(pv.pizzeria_id) as total_count,
                        'visit' 
                FROM person_visits pv inner join pizzeria pz ON pv.pizzeria_id = pz.id
                GROUP BY pz.name
                ORDER BY total_count DESC)
                --
                UNION 
                --
                (SELECT pz.name ,
                        count(pz.name) as total_count,
                        'order' 
                FROM person_order po inner join menu m ON po.menu_id = m.id
                                        inner join pizzeria pz ON m.pizzeria_id = pz.id
                GROUP BY pz.name
                ORDER BY total_count DESC))
SELECT order_count.name as name,
        SUM(order_count.total_count) as total_count
FROM order_count
GROUP BY order_count.name
ORDER BY total_count DESC, name ASC;
