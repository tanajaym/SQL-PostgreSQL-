with visitss as (SELECT pz.name as name,
                        count(pv.pizzeria_id) as count,
                        'visit' as action_type
                FROM person_visits pv inner join pizzeria pz ON pv.pizzeria_id = pz.id
                GROUP BY pz.name
                ORDER BY count DESC
                LIMIT 3),--3 favorite
    orderss as (SELECT pz.name as name,
                        count(m.pizzeria_id) as count,
                        'order' as action_type
                FROM person_order po inner join menu m ON po.menu_id = m.id
                                        inner join pizzeria pz ON m.pizzeria_id = pz.id
                GROUP BY pz.name
                ORDER BY count DESC
                LIMIT 3)--3 favorite
SELECT *
FROM visitss
UNION all
SELECT *
FROM orderss
ORDER BY action_type ASC, count DESC;


