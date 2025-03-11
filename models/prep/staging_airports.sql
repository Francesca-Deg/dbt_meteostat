with airports_reorder as (
                            select faa,
                                    name, 
                                    city,
                                    country,
                                    region, 
                                    lat,
                                    lon, 
                                    alt,
                                    tz,
                                    dst
                            from {{ref('staging_airports')}})
select * from airports_reorder