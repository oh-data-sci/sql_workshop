-- which actor name is shared between 2 actors?
SELECT first_name, last_name, COUNT(*) AS num_actors FROM actor GROUP BY first_name, last_name HAVING num_actors > 1;

-- which actor ids have appeared in fewer than 15 films?
SELECT actor_id, COUNT(*) AS num FROM film_actor GROUP BY actor_id HAVING num<15;

-- which actor names?
SELECT a.first_name, a.last_name, COUNT(*) AS num FROM film_actor fa INNER JOIN actor a ON fa.actor_id=a.actor_id GROUP BY a.actor_id HAVING num<15;

-- what film rating categories have average length of film under 115 minutes?
SELECT rating, AVG(length) AS len FROM film GROUP BY rating HAVING len<115;

-- what countries have more than 40 cities?
SELECT 
  c.country,
  COUNT(*) AS num_cities
FROM 
  country c
  INNER JOIN city b ON c.country_id=b.country_id
GROUP BY c.country
HAVING num_cities>40
ORDER BY num_cities DESC
;

