SELECT*
FROM person CROSS JOIN pizzeria
ORDER BY person.id, pizzeria.id;
--CROSS JOIN use as sth additional in FROM clause to unit two sets