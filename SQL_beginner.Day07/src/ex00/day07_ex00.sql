SELECT pv.person_id as person_id,
        count(pv.pizzeria_id) as count_of_visits
FROM person_visits pv 
GROUP BY pv.person_id
ORDER BY count_of_visits DESC, person_id ASC; 


--Please use the SQL statement from Exercise #01 and display the names of pizzas from the pizzeria 
--that no one has ordered, including the corresponding prices. 





