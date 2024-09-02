
SELECT p.address as address,
        pz.name as name, 
        count(pz.name) as count_of_orders
FROM person_order po inner join person p ON po.person_id = p.id
                        inner join menu m ON po.menu_id = m.id
                        inner join pizzeria pz ON m.pizzeria_id = pz.id
GROUP BY p.address, pz.name
ORDER BY address, name;



