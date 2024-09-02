SELECT p.name, p.rating
FROM pizzeria as p LEFT JOIN person_visits on p.id = person_visits.pizzeria_id
WHERE person_visits.pizzeria_id IS NULL;
