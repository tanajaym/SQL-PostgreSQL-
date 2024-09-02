CREATE INDEX idx_menu_unique ON menu (pizzeria_id, pizza_name);

SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYZE
SELECT *
FROM menu m
WHERE m.pizzeria_id = 6 AND m.pizza_name = 'pepperoni pizza';