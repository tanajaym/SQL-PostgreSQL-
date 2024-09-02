SELECT pizzeria.name
FROM pizzeria
WHERE pizzeria.name NOT IN (SELECT pizzeria.name
                            FROM pizzeria JOIN person_visits on pizzeria.id = pizzeria_id);
--first query with IN

SELECT pizzeria.name
FROM pizzeria
WHERE NOT EXISTS (SELECT 1
                  FROM person_visits 
                  WHERE pizzeria.id = pizzeria_id);
--second query with NOT EXIST