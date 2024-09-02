-- Exercise 01 — Opposite TSP

/* Пожалуйста, добавьте в SQL из предыдущего упражнения способ просмотра дополнительных строк с наиболее высокой стоимостью. 
 * Взгляните на примеры данных, приведенные ниже. Пожалуйста, отсортируйте данные по total_cost, а затем по trip.
*/

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
ORDER BY total_cost ASC, tour ASC;