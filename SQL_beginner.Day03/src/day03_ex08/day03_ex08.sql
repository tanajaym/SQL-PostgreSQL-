INSERT INTO menu (id, pizzeria_id, pizza_name, price)
VALUES ((SELECT MAX(m.id)
          FROM menu m) +1, (SELECT pz.id 
                            FROM pizzeria pz
                            WHERE pz.name = 'Dominos'),'sicilian pizza',900);