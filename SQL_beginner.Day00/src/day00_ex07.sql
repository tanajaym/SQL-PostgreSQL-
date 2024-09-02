SELECT person.id, person.name, 
	CASE when (person.age BETWEEN 10 and 20) then 'interval #1'
		 when (person.age BETWEEN 21 and 23) then 'interval #2'
		 else 'interval #3' 
		 END as interval_info

FROM person 
ORDER BY interval_info;

