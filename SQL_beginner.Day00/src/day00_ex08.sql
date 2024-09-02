SELECT*
FROM person_order
WHERE person_order.id%2 = 0
ORDER BY person_order.id;

