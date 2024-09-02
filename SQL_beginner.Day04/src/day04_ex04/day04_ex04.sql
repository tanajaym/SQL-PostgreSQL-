CREATE VIEW v_symmetric_union as 
with R as (SELECT * FROM person_visits pv WHERE pv.visit_date = '2022-01-02'),
      S as (SELECT* FROM person_visits pv1 WHERE pv1.visit_date = '2022-01-06')
(SELECT R.person_id
FROM R 
EXCEPT
SELECT S.person_id
FROM S)
UNION 
(SELECT S.person_id
FROM S 
EXCEPT
SELECT R.person_id
FROM R)
ORDER BY person_id;
