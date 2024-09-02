SELECT p.address as address,
        round(MAX(p.age::NUMERIC) - MIN(p.age::NUMERIC)/MAX(p.age::NUMERIC), 2) as formula,
        round(AVG(p.age), 2) as average,
        round(MIN(p.age::NUMERIC)/MAX(p.age::NUMERIC), 2) > round(AVG(p.age), 2) as comparison
FROM person p
GROUP BY p.address
ORDER BY address;
        
