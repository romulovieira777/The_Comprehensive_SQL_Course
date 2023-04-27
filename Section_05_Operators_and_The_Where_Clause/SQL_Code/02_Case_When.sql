SELECT
    NAME
  , CASE
        WHEN NAME LIKE 'A%' THEN 1
        ELSE 0
    END AS Flag_A
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , AREA_KM2
  , CASE
        WHEN AREA_KM2 > 500000 THEN 'Large'
        WHEN AREA_KM2 > 100000 THEN 'Medium'
        WHEN AREA_KM2 > 0 THEN 'Small'
        ELSE 'Other'
    END AS Country_Size_Class
FROM
    EBA_COUNTRIES;
