CREATE UNIQUE INDEX idx_person_discounts_unique on person_discounts(person_id, pizzeria_id);
SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYZE
SELECT *
FROM person_discounts 
WHERE person_id = 1 and pizzeria_id = 1;