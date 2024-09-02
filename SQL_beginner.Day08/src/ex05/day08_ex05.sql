begin TRANSACTION ISOLATION LEVEL READ COMMITTED;
----------session #1
begin TRANSACTION ISOLATION LEVEL READ COMMITTED;
----------session #2
SELECT SUM(rating)
FROM pizzeria;
----------session #1
INSERT INTO pizzeria (id, name, rating)
VALUES(10, 'Kazan Pizza', 5);
COMMIT;
----------session #2
SELECT SUM(rating)
FROM pizzeria;
COMMIT;
SELECT SUM(rating)
FROM pizzeria;
----------session #1
SELECT SUM(rating)
FROM pizzeria;
----------session #2

-- DELETE FROM pizzeria 
--   WHERE id = 10 AND name = 'Kazan Pizza' AND rating = 5;