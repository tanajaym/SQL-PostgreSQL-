SELECT menu.id as object_id, menu.pizza_name as object_name
FROM menu 
UNION
SELECT person.id as object_id, person.name as object_name
FROM person 
ORDER BY object_id, object_name;

--UNION uses to union several SELECT
-- (several select reflects several columns)
