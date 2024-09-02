SELECT p.name as name,
        count(pv.pizzeria_id) as count_of_visits
FROM person_visits pv inner join person p ON pv.person_id = p.id
GROUP BY p.name
ORDER BY count_of_visits DESC, name ASC --count_of_visits 1st cause сначала тогда будут отобрадаться те, 
                                        --кто больше всего посещал, потом уже имя сорптируется 
LIMIT 4; 

