WITH women as (SELECT *
                FROM person p
                WHERE p.gender = 'female')
SELECT women.name
FROM person_order po inner join women ON women.id = po.person_id 
                     inner join menu m ON po.menu_id = m.id
WHERE m.pizza_name = 'cheese pizza' 
INTERSECT -- = full join 
SELECT women.name
FROM person_order po inner join women ON women.id = po.person_id 
                     inner join menu m ON po.menu_id = m.id
WHERE m.pizza_name = 'pepperoni pizza' 
ORDER BY name ASC;
