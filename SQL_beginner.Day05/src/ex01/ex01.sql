SET ENABLE_SEQSCAN TO OFF;
SELECT m.pizza_name as pizza_name,
       pz.name as pizzeria_name
FROM menu m join pizzeria pz ON pz.id = m.pizzeria_id;
EXPLAIN ANALYZE
SELECT m.pizza_name as pizza_name,
       pz.name as pizzeria_name
FROM menu m join pizzeria pz ON pz.id = m.pizzeria_id