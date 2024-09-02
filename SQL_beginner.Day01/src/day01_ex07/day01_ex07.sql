SELECT po.order_date as order_date, 
       CONCAT(p.name, ' (age:', p.age, ')') as person_information 
FROM person_order po INNER JOIN person p ON po.person_id = p.id
ORDER BY order_date ASC, person_information ASC;



