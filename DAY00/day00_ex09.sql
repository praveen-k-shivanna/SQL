SELECT (
		SELECT name
		FROM person
		WHERE person.id = t1.person_id) AS person_name ,
        (
		SELECT name
		FROM pizzeria
		WHERE pizzeria.id = t1.pizzeria_id) AS pizzeria_name
FROM (SELECT person_id, pizzeria_id, visit_date FROM person_visits) AS t1
WHERE visit_date BETWEEN '2022-01-07' AND '2022-01-09'
ORDER BY person_name, pizzeria_name DESC;