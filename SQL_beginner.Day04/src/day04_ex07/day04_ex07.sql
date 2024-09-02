INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
VALUES 
((SELECT MAX(id) FROM person_visits ) +1,
(SELECT p.id from person p where p.name = 'Dmitriy'),
(SELECT pz.id 
    from pizzeria pz inner join menu m on pz.id = m.pizzeria_id
    WHERE m.price < 800 AND pz.name != 'Papa Johns' 
    ORDER BY pz.id limit 1),
'2022-01-08');
REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;