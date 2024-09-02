SELECT COALESCE(p.name, '-') as person_name,
       pv_d.visit_date as visit_date,
       COALESCE(pz.name, '-') as pizzeria_name
FROM person as p FULL JOIN (SELECT pv.visit_date, pv.person_id, pv.pizzeria_id
                            FROM person_visits as pv
                            WHERE pv.visit_date BETWEEN '2022-01-01' AND '2022-01-03') as pv_d
                 ON pv_d.person_id = p.id
                 FULL JOIN pizzeria as pz
                 ON pv_d.pizzeria_id = pz.id   
ORDER BY person_name, visit_date, pizzeria_name    

-- люди опсетили с 2022-01-01 по 2022-01-03 
-- список названий пиццерий 
-- там, где пустые значения NULL за менить их '-'