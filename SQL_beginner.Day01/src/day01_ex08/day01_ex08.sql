SELECT person_order.order_date as order_date, 
                CONCAT(person.name, ' (age:', person.age, ')') as person_information 
FROM person_order NATURAL JOIN (SELECT person.id as person_id, --rename it for NATURAL JOI
                                       person.name,            --in order it searched columns with the same name
                                       person.age
                                FROM person) as person
ORDER BY order_date ASC, person_information ASC; 

--we use data from another column, therefore we natural join it with all things from person, that we are needed