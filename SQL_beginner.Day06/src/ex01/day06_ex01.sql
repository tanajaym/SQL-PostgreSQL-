with discount as (SELECT po.person_id,
                      m. pizzeria_id,
                      COUNT(m.pizzeria_id) as ct,
              CASE 
              WHEN (COUNT(m.pizzeria_id) = 1)
                then 10.5
              WHEN (COUNT(m.pizzeria_id) = 2)
                then 22
              ELSE 30 
              END as disc
                  FROM person_order po inner join menu m on po.menu_id = m.id
                  GROUP BY po.person_id, m.pizzeria_id)
INSERT INTO person_discounts (id, person_id, pizzeria_id, discount)
SELECT ROW_NUMBER() OVER () as id,
        discount.person_id,
        discount.pizzeria_id,
        discount.disc
FROM discount;
