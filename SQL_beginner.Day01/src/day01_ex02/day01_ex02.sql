SELECT menu.pizza_name
FROM menu
UNION
SELECT menu.pizza_name
FROM menu
ORDER BY pizza_name DESC;
--use UNION to reflect things withouy dublicates
--it's like using DISTINCT. If you want to avoid DISTINCT 
--you can use UNION (UNION ALL union things with dublicates)