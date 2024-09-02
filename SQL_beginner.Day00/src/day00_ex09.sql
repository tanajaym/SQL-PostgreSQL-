SELECT
	(SELECT person.name 
	FROM person
	WHERE person.id = person_visits.person_id)  as person_name,

	(SELECT pizzeria.name
	FROM pizzeria 
	WHERE pizzeria.id = person_visits.pizzeria_id) as pizzeria_name
	
FROM (SELECT *
	  FROM person_visits
	  WHERE person_visits.visit_date BETWEEN '2022-01-07' and '2022-01-09') as person_visits
ORDER BY person_name ASC, pizzeria_name DESC;

--when do extra select don't forget to shove in AS ...