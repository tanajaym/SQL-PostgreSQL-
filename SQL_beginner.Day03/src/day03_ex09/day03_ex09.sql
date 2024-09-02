
INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
VALUES
((SELECT MAX(pv.id)
  FROM person_visits pv) +1, (SELECT p.id
                              FROM person p
                              WHERE p.name = 'Denis'), (SELECT pz.id 
                                                         FROM pizzeria pz
                                                          WHERE pz.name = 'Dominos'), '2022-02-24'),
((SELECT MAX(pv.id)
  FROM person_visits pv) + 2, (SELECT p.id
                              FROM person p
                              WHERE p.name = 'Irina'), (SELECT pz.id 
                                                         FROM pizzeria pz
                                                         WHERE pz.name = 'Dominos'), '2022-02-24');
