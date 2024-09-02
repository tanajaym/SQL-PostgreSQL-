--Please register new orders from Denis and Irina on February 24, 2022 for the new menu with "sicilian pizza"
INSERT INTO person_order (id, person_id, menu_id, order_date)
VALUES
((SELECT MAX(id) FROM person_order) +1, 
(SELECT p.id FROM person p WHERE p.name = 'Denis'), 
(SELECT m.id FROM menu m WHERE m.pizza_name = 'sicilian pizza'), 
'2022-02-24'),
((SELECT MAX(id) FROM person_order po) + 2, 
(SELECT p.id FROM person p WHERE p.name = 'Irina'),
(SELECT m.id FROM menu m WHERE m.pizza_name = 'sicilian pizza'), 
 '2022-02-24');