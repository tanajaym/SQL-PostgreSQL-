CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats as 
  with pz_pzr as (SELECT m.price, pz.name, pz.id
                  FROM menu m join pizzeria pz on m.pizzeria_id = pz.id
                  WHERE m.price < 800)
SELECT pz_pzr.name as pizza_name
FROM person_visits pv join pz_pzr on pz_pzr.id = pv.pizzeria_id
                      join person p on pv.person_id = p.id
WHERE p.name = 'Dmitriy' and pv.visit_date = '2022-01-08';

DROP MATERIALIZED VIEW mv_dmitriy_visits_and_eats;
