SELECT p.name as name,
        count(pv.pizzeria_id) count_of_visits
FROM person_visits pv inner join person p on pv.person_id = p.id
GROUP BY p.name
HAVING count(pv.pizzeria_id) > 3 ;--we can ude it after 'group by'
                                --where we can use only before 'group by'
