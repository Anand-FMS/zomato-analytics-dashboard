SELECT COUNT(*) AS total_restaurants
FROM zomato;

SELECT COUNT(DISTINCT city) AS total_cities
FROM zomato;

SELECT DISTINCT city
FROM zomato
ORDER BY city;

SELECT rating_text,
       COUNT(*) AS restaurants
FROM zomato
GROUP BY rating_text
ORDER BY restaurants DESC;

SELECT cost_bucket,
       COUNT(*) AS restaurants
FROM zomato
GROUP BY cost_bucket;

SELECT DISTINCT rating_text
FROM zomato
ORDER BY rating_text;

