-- Exercise 00 — Classical TSP

/* 1) Пожалуйста, создайте таблицу с именованными узлами, используя структуру {point1, point2, cost} 
 * и заполните данные на основе рисунка (помните, что между двумя узлами есть прямой и обратный пути). 
 * 
 * 2) Пожалуйста, напишите инструкцию SQL, которая возвращает все туры (или маршруты) с минимальной 
 * стоимостью проезда, если мы начинаем с города "а". Помните, что вам нужно найти самый дешевый 
 * способ посетить все города и вернуться в исходную точку. 
 * Например, тур выглядит следующим образом: a -> b -> c -> d -> a.
*/

-- Ниже приведен пример выходных данных. Пожалуйста, отсортируйте данные по общей стоимости, а затем по туру.

CREATE TABLE nodes (
	point1 VARCHAR,
	point2 VARCHAR,
	cost INT
);

-- От узла A: 
INSERT INTO nodes (point1, point2, cost) VALUES ('a', 'b', 10);
INSERT INTO nodes (point1, point2, cost) VALUES ('a', 'd', 20);
INSERT INTO nodes (point1, point2, cost) VALUES ('a', 'c', 15);

-- От узла B:
INSERT INTO nodes (point1, point2, cost) VALUES ('b', 'a', 10);
INSERT INTO nodes (point1, point2, cost) VALUES ('b', 'd', 25);
INSERT INTO nodes (point1, point2, cost) VALUES ('b', 'c', 35);

-- От узла C:
INSERT INTO nodes (point1, point2, cost) VALUES ('c', 'a', 15);
INSERT INTO nodes (point1, point2, cost) VALUES ('c', 'd', 30);
INSERT INTO nodes (point1, point2, cost) VALUES ('c', 'b', 35);

-- От узла D:
INSERT INTO nodes (point1, point2, cost) VALUES ('d', 'a', 20);
INSERT INTO nodes (point1, point2, cost) VALUES ('d', 'b', 25);
INSERT INTO nodes (point1, point2, cost) VALUES ('d', 'c', 30);

-- Нахождение минимальных маршрутов:

WITH cte_temp AS (
    WITH RECURSIVE recursion AS (
        SELECT  point1,
		        point2,
		        cost,
		        1 AS step,
		        array[cost] AS costs,
		        array[point1] AS path,
		        FALSE AS visit
        FROM nodes n1
        WHERE point1 = 'a'
        UNION
        SELECT  n2.point1,
        		n2.point2, 
        		n2.cost + recursion.cost AS cost, 
        		recursion.step + 1 AS step, 
        		recursion.costs || n2.cost AS costs, 
        		recursion.path || n2.point1 AS path, 
        		n2.point1 = ANY(recursion.path) AS visit
        FROM nodes n2
        JOIN recursion ON recursion.point2 = n2.point1 AND NOT visit
    )
    SELECT DISTINCT cost-costs[5] AS total_cost, 
    	   '{' || array_to_string(path, ',') || '}' AS tour
    FROM recursion
    WHERE 'a' = ANY(path) 
    		AND 'b' = ANY(path)
    		AND 'c' = ANY(path) 
    		AND 'd' = ANY(path) 
    		AND path[1] = path[5]
)
SELECT *
FROM cte_temp
WHERE total_cost = (SELECT MIN(total_cost) FROM cte_temp)
ORDER BY total_cost ASC, tour ASC;