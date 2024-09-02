
SELECT DISTINCT pz.name as pizzeria_name
FROM menu m INNER JOIN pizzeria pz ON m.pizzeria_id = pz.id
            INNER JOIN person_visits pv ON pz.id = pv.pizzeria_id
            INNER JOIN person p ON pv.person_id = p.id
WHERE p.name IN ('Dmitriy') AND m.price > 800 AND pv.visit_date = '2022-01-08';
