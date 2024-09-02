INSERT INTO person_order(id, person_id, menu_id, order_date)
SELECT (generate_series(((SELECT MAX(id) from person_order)+1), 
                          ((SELECT MAX(id) from person_order) + (SELECT COUNT(*) FROM person)))),
        (generate_series((SELECT MIN(id) from person), (SELECT COUNT(*) FROM person))),
        (SELECT m.id from menu m where m.pizza_name = 'greek pizza'), '2022-02-25';

