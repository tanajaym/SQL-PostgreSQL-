begin TRANSACTION ISOLATION LEVEL REPEATABLE READ;
----------session #1
begin TRANSACTION ISOLATION LEVEL REPEATABLE READ;
----------session #2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
----------session #1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
----------session #2
UPDATE pizzeria 
set rating = 4
WHERE name = 'Pizza Hut';
----------session #1
UPDATE pizzeria 
set rating = 3.6
WHERE name = 'Pizza Hut';
----------session #2
COMMIT;
----------session #1

COMMIT;
----------session #2
SELECT *                                                             
FROM pizzeria                                                                   
WHERE name = 'Pizza Hut';
----------session #1
SELECT *                                                             
FROM pizzeria                                                                   
WHERE name = 'Pizza Hut';
----------session #2