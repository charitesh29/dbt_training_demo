WITH src_listings AS 
( SELECT
*
FROM
dev.bronze_airbnb.src_listings
)
SELECT
id AS listing_id, name AS listing_name, listing_url, room_type, minimum_nights, host_id,
price AS price_str, created_at, updated_at
FROM
src_listings


---------------

WITH src_reviews AS ( SELECT
*
FROM dev.bronze_airbrb.src_reviews
)
SELECT
listing_id,
date AS review_date, 
reviewer_name,
comments AS review_text, 
sentiment AS review_sentiment
FROM
src_reviews

------------------

WITH src_hosts AS ( 
    SELECT
*
FROM
       dev.bronze_airbrb.src_hosts
)
SELECT
id AS host_id,
NAME AS host_name, is_superhost, created_at, updated_at
FROM
src_hosts
