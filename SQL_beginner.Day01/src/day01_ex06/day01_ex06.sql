SELECT DISTINCT person_order.order_date as action_date, 
        person.name as person_name 
FROM person_order INNER JOIN person on person_order.person_id = person.id
                  INNER JOIN person_visits on person_visits.visit_date = person_order.order_date
ORDER BY action_date ASC, person_name DESC;
--added DISTINCT because there were many dublicates