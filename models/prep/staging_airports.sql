WITH airports_regions_join AS (
    SELECT * 
    FROM {{source('flights_data', 'airports')}}
    LEFT JOIN {{source('flights_data', 'regions')}}
    USING (country)
)
SELECT * FROM airports_regions_joins
WITH airports_reorder AS (
    SELECT country,
           region,
           faa,
           name, 
           lat,
           lon,
           alt,
           tz,
           dst,
           city
    FROM {{ ref('staging_airports') }}
)
SELECT * FROM airports_reorder;