CREATE VIEW v_persons_female as 
SELECT *
FROM person p
WHERE p.gender = 'female';

CREATE VIEW v_persons_male as 
SELECT *
FROM person p
WHERE p.gender = 'male';