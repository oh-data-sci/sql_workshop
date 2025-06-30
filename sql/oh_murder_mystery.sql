-- a murder happened in sql city. on 2018-01-01
SELECT *
FROM crime_scene_report
WHERE date > '20180101' AND city = 'SQL City'
ORDER BY date DESC;
-- Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr". The second witness, named Annabel, lives somewhere on "Franklin Ave".	

SELECT * 
FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC
LIMIT 1 
;
SELECT * 
FROM person
WHERE address_street_name = 'Franklin Ave'
    AND name LIKE 'Annabel%'
; 
-- 14887	Morty Schapiro	118009	4919	Northwestern Dr	111564949
-- 16371	Annabel Miller	490173	103	Franklin Ave	318771143

SELECT id
FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC
LIMIT 1 
;

SELECT * 
FROM interview 
WHERE person_id = 14887
; -- I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". Only gold members have those bags. The man got into a car with a plate that included "H42W"
SELECT * 
FROM interview 
WHERE person_id = (
    SELECT id
    FROM person
    WHERE address_street_name = 'Northwestern Dr'
    ORDER BY address_number DESC
    LIMIT 1 
);


SELECT id
FROM person
WHERE address_street_name = 'Franklin Ave'
    AND name LIKE 'Annabel%'
; 

SELECT * 
FROM interview 
WHERE person_id = 16371
; -- I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.

SELECT *
FROM interview
WHERE person_id = (
    SELECT id
    FROM person
    WHERE address_street_name = 'Franklin Ave'
        AND name LIKE 'Annabel%'
);


SELECT *
FROM
    person p
    INNER JOIN drivers_license        dl ON p.license_id = dl.id
    INNER JOIN income                  i ON p.ssn = i.ssn
    INNER JOIN get_fit_now_member   gfnm ON p.id = gfnm.person_id
    INNER JOIN get_fit_now_check_in gfnc ON gfnm.id = gfnc.membership_id
WHERE
    gfnm.membership_status = 'gold'
    AND gfnm.id LIKE '48Z%'
    AND dl.plate_number LIKE '%H42W%'
    AND gfnc.check_in_date = '20180109'
;

SELECT * 
FROM interview 
WHERE person_id = 67318
;