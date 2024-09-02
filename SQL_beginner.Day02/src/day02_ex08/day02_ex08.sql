SELECT pers.name as name
FROM menu m INNER JOIN person_order po ON m.id = po.menu_id
            INNER JOIN (SELECT *
                        FROM person p
                        WHERE p.gender = 'male' and p.address IN('Moscow', 'Samara')) pers
            ON po.person_id = pers.id
WHERE m.pizza_name IN ('pepperoni pizza', 'mushroom pizza')
ORDER BY name DESC;
----------------
----------------
WITH pers as (SELECT *
              FROM person_order po right join (SELECT *
                                            FROM menu m 
                                            WHERE m.pizza_name IN ('pepperoni pizza', 'mushroom pizza')) as m1
                                 ON po.menu_id = m1.id)              
SELECT p.name name 
FROM person p inner join  pers on pers.person_id = p.id
WHERE p.gender = 'male' and p.address IN('Moscow', 'Samara')
ORDER BY name DESC;

SELECT p.name as name
FROM person p INNER JOIN person_order po ON p.id = po.person_id
              INNER JOIN menu m ON po.menu_id = m.id
WHERE p.gender = 'male' and p.address IN('Moscow', 'Samara') and m.pizza_name IN ('pepperoni pizza', 'mushroom pizza')
ORDER BY name DESC;

--I just made 3 vertions... too pitiful to delete 