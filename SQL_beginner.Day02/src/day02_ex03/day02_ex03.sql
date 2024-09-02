WITH v_day as (SELECT pv.visit_date
                  FROM person_visits pv 
                  WHERE pv.person_id = 1 or pv.person_id = 2),
      day as  (SELECT days :: date as missing_dat              FROM generate_series('2022-01-01'::timestamp, '2022-01-10'::timestamp, '1 day' ::interval) as days)
SELECT day.missing_date 
FROM day LEFT JOIN v_day on day.missing_date = v_day.visit_date
WHERE  v_day.visit_date IS NULL 
ORDER BY v_day.visit_date ASC;

