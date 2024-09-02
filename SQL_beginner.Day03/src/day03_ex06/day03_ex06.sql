with pz_name as (SELECT m.pizza_name, --cannot use * it need certainity 
                        p1.name,
                         m.price,
                         p1.id
                  FROM menu m INNER JOIN pizzeria p1 ON m.pizzeria_id = p1.id )
     
SELECT  pz_name.pizza_name as pizza_name,
        pz_name.name        as pizzeria_name_1,
        pz2.name            as pizzeria_name_2,
        pz_name.price       as price 
FROM (SELECT*
      FROM pz_name) pz2 INNER JOIN pz_name ON pz_name.price = pz2.price
                                      AND pz_name.pizza_name = pz2.pizza_name
                                      AND pz_name.id > pz2.id
ORDER BY pizza_name;

