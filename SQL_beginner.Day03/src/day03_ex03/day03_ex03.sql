
WITH person_to_pizzeria AS (SELECT p.gender, 
								                    pz.name
						              FROM person_visits pv INNER JOIN person p on pv.person_id = p.id
                                      INNER JOIN pizzeria pz on pv.pizzeria_id = pz.id),
     women AS (SELECT p1.name AS pizzeria_name --for final select 
               FROM person_to_pizzeria p1
               WHERE p1.gender = 'female'),
     men AS (SELECT p2.name AS pizzeria_name -- for final select 
             FROM person_to_pizzeria p2
             WHERE p2.gender = 'male'),
     only_women AS (SELECT *
                    FROM women
                    EXCEPT all
                    SELECT *
                    FROM men),
     only_men AS (SELECT *
                  FROM men
                  EXCEPT all
                  SELECT *
                  FROM women)
SELECT *
FROM only_women
UNION 
SELECT *
FROM only_men
ORDER BY pizzeria_name;
