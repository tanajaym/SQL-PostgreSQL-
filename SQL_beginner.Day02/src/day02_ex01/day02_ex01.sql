SELECT days :: date as missing_date
FROM generate_series('2022-01-01'::timestamp, '2022-01-10'::timestamp, '1 day' ::interval) as days 
        LEFT JOIN  (SELECT pv.visit_date
                    FROM person_visits pv 
                    WHERE pv.person_id = 1 or pv.person_id = 2) as p_id--complex join attribute
        ON days = p_id.visit_date --here comparing with help of LEFT JOIN
WHERE  p_id.visit_date IS NULL 
ORDER BY p_id.visit_date ASC;
--we LEFT JOIN days on p_id