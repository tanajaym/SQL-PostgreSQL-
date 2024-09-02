
with pers2 as (SELECT *
               FROM person )
SELECT p.name as      person_name1,
        pers2.name as person_name2,
        p.address as common_address
FROM person p inner join pers2 on p.address = pers2.address
                                  AND p.id > pers2.id
ORDER BY person_name1, person_name2, common_address;
