SELECT
    a.actor_id AS actor_id,
    a.first_name || ' ' || a.last_name AS actor_name,
    COUNT(*) AS num_rentals
FROM rental r
    INNER JOIN inventory i ON r.inventory_id=i.inventory_id
    INNER JOIN film f ON i.film_id=f.film_id
    INNER JOIN film_actor fa ON f.film_id=fa.film_id
    INNER JOIN actor a ON fa.actor_id=a.actor_id
WHERE 
    f.rating='R'
    AND f.release_year=2006
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY num_rentals DESC
LIMIT 10
;