CREATE TABLE TEST_TABLE
(
    COL1 NUMBER
  , COL2 VARCHAR(50)
);


CREATE TABLE EBA_COUNTRIES_02 AS (
SELECT
    NAME
  , POPULATION
FROM
    EBA_COUNTRIES
);