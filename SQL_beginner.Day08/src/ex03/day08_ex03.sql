begin TRANSACTION ISOLATION LEVEL READ COMMITTED;
----------session #1
begin TRANSACTION ISOLATION LEVEL READ COMMITTED;
----------session #2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
----------session #1
UPDATE pizzeria 
set rating = 3.6
WHERE name = 'Pizza Hut';
COMMIT;
----------session #2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
COMMIT;
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
----------session #1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
----------session #2