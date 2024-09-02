ALTER TABLE person_discounts
  add CONSTRAINT ch_nn_person_id CHECK (person_id IS NOT NULL),
  add CONSTRAINT ch_nn_pizzeria_id CHECK (pizzeria_id IS NOT NULL),
  add CONSTRAINT ch_nn_discount CHECK (discount IS NOT NULL),
  ALTER COLUMN discount SET DEFAULT 0,
  add CONSTRAINT ch_range_discount CHECK (discount between 0 AND 100);
  
