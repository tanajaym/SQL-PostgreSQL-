SELECT DISTINCT p.name as name 
FROM person_order po inner join person p on po.person_id = p.id
ORDER BY p.name;