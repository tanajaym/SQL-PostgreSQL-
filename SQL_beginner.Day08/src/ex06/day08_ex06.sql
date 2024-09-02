
begin TRANSACTION ISOLATION LEVEL REPEATABLE READ;
----------session #1
begin TRANSACTION ISOLATION LEVEL REPEATABLE READ;
----------session #2
SELECT SUM(rating)
FROM pizzeria;
----------session #1
INSERT INTO pizzeria (id, name, rating)
VALUES(11, 'Kazan Pizza 2', 4);
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