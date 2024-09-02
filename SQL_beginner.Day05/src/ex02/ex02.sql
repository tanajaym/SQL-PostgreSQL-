CREATE INDEX idx_person_name ON person (upper(name));
SET ENABLE_SEQSCAN TO OFF;
SELECT *
FROM person p
WHERE upper(p.name) = 'Irina';
EXPLAIN ANALYZE
SELECT *
FROM person p
WHERE upper(p.name) = 'Irina';;