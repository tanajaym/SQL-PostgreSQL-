SELECT name, rating
FROM pizzeria
WHERE (pizzeria.rating >= 3.5 and pizzeria.rating <= 5)

ORDER BY rating;

SELECT name, rating
FROM pizzeria
WHERE pizzeria.rating between 3.5 and 5

ORDER BY rating;