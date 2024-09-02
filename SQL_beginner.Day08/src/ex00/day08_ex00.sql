BEGIN;
UPDATE pizzeria 
SET rating = 5
WHERE name = 'Pizza Hut';
SELECT *
FROM pizzeria;
----------session #1

SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
----------session #2

commit;
----------session #1

SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
----------session #2


