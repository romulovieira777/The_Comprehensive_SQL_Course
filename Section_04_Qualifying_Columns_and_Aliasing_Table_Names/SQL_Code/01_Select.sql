SELECT
    *
FROM
    EBA_COUNTRIES;


SELECT
    EBA_COUNTRIES.*
  , POPULATION + AREA_KM2
FROM
    EBA_COUNTRIES