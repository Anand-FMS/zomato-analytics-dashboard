--Which restaurants are truly popular?
SELECT restaurant_id,
       restaurant_name,
       city,
       popularity_score
FROM zomato
ORDER BY popularity_score DESC
LIMIT 10;


--Which cities have the best ratings?
SELECT city,
       ROUND(AVG(aggregate_rating),2) AS avg_rating
FROM zomato
WHERE aggregate_rating > 0
GROUP BY city
ORDER BY avg_rating DESC;

--Which cities have the most restaurants?
SELECT city,
       COUNT(*) AS restaurant_count
FROM zomato
GROUP BY city
ORDER BY restaurant_count DESC;


--Does online delivery matter?
SELECT has_online_delivery,
       ROUND(AVG(aggregate_rating),2) AS avg_rating,
       ROUND(AVG(votes),2) AS avg_votes
FROM zomato
GROUP BY has_online_delivery;

--Does table booking matter?
SELECT has_table_booking,
       ROUND(AVG(aggregate_rating),2) AS avg_rating,
       ROUND(AVG(votes),2) AS avg_votes
FROM zomato
GROUP BY has_table_booking;

--Which price segment performs best?
SELECT cost_bucket,
       ROUND(AVG(aggregate_rating),2) AS avg_rating,
       ROUND(AVG(votes),2) AS avg_votes
FROM zomato
GROUP BY cost_bucket
ORDER BY avg_rating DESC;

--Top Restaurants per City using Window Functions
WITH ranked_restaurants AS (
    SELECT restaurant_name,
           city,
           aggregate_rating,
           DENSE_RANK() OVER(
               PARTITION BY city
               ORDER BY aggregate_rating DESC
           ) AS rank_num
    FROM zomato
    WHERE aggregate_rating > 0
)
SELECT *
FROM ranked_restaurants
WHERE rank_num <= 3
ORDER BY city, rank_num;

--Highly rated restaurants that haven't yet gained widespread popularity.
SELECT restaurant_name,
       city,
       aggregate_rating,
       votes
FROM zomato
WHERE aggregate_rating >= 4.5
  AND votes < 100
ORDER BY aggregate_rating DESC;

--Top Restaurant in each CITY
WITH ranked_restaurants AS (
    SELECT restaurant_name,
           city,
           aggregate_rating,
           votes,
           ROW_NUMBER() OVER(
               PARTITION BY city
               ORDER BY aggregate_rating DESC, votes DESC
           ) AS rn
    FROM zomato
    WHERE aggregate_rating > 0
)
SELECT *
FROM ranked_restaurants
WHERE rn = 1;

--Which smaller markets have strong customer satisfaction but relatively low restaurant density?

SELECT city,
       COUNT(*) AS restaurant_count,
       ROUND(AVG(aggregate_rating),2) AS avg_rating
FROM zomato
GROUP BY city
HAVING COUNT(*) < 50
ORDER BY avg_rating DESC;

