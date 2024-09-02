SELECT person_order.person_id as person_id
FROM person_order
WHERE order_date = '2022-01-07'
EXCEPT ALL
SELECT person_visits.person_id as person_id
FROM person_visits
WHERE visit_date = '2022-01-07';
--здесь совпадение нашлось именно по дате
--EXCEPT выводит первый сотлбик (не выводит второй и то, что пересекается в первом и втором)
--EXCEPT ALL (выводит первый и второй, НО НЕ выводит то, что пересекается)