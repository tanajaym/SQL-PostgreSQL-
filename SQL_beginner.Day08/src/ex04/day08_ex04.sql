begin TRANSACTION ISOLATION LEVEL SERIALIZABLE;
----------session #1
begin TRANSACTION ISOLATION LEVEL SERIALIZABLE;
----------session #2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
----------session #1
UPDATE pizzeria 
set rating = 3.0
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