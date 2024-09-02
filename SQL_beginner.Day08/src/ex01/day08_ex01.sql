BEGIN;
SELECT * 
FROM pizzeria
WHERE name = 'Pizza Hut';
----------session #1

BEGIN;
SELECT * 
FROM pizzeria
WHERE name = 'Pizza Hut';
----------session #2

UPDATE pizzeria
SET rating = 4
WHERE name = 'Pizza Hut';--4
----------session #1

UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';--3.6
----------session #2

COMMIT;
----------session #1

COMMIT;
----------session #2

SELECT *                                                             
FROM pizzeria                                                                  
WHERE name = 'Pizza Hut';--3.6
----------session #1

SELECT *                                                             
FROM pizzeria                                                                  
WHERE name = 'Pizza Hut';--3.6
----------session #2
