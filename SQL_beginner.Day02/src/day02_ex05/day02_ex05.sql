SELECT p.name as name
FROM person p 
WHERE p.gender = 'female' AND p.age > 25
ORDER BY name ASC;