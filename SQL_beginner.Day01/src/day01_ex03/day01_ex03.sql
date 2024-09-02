SELECT person_order.order_date as action_date, person_order.person_id as person_id 
FROM person_order
INTERSECT
SELECT person_visits.visit_date as action_date, person_visits.person_id as person_id 
FROM person_visits
ORDER BY action_date ASC, person_id DESC;

--INTERSECT set operator get common things from sets
--like the same date or the same id