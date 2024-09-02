SELECT vd.generated_date as  missing_date
FROM v_generated_dates vd 
EXCEPT 
SELECT pv.visit_date
FROM person_visits pv
ORDER BY missing_date;