/*
Question 01

Filter the EBA_COUNTRIES table to retrieve records have a population greater than or equal 100 million and less than or equal to 20 million.
*/
SELECT
    *
FROM
    EBA_COUNTRIES
WHERE
    POPULATION >= 1000000
AND
    POPULATION <= 2000000;


/*
Question 02

Create a copy of EBA_COUNTRIES and call it EBA_COUNTRIES_COPY. Update the 'United kingdom of great Britain and Northern Ireland' to 'United Kingdom' in the name field of the new table.
*/
CREATE TABLE EBA_COUNTRIES_COPY AS
    SELECT
        *
    FROM
        EBA_COUNTRIES;


UPDATE
    EBA_COUNTRIES_COPY
SET
    NAME = 'United Kingdom'
WHERE
    NAME = 'United kingdom of great Britain and Northern Ireland';


/*
Question 03

Write as SQL query to retrieve all records from EBA_COUNTRIES that are in region 10, 20 or 30.
*/
SELECT
    *
FROM
    EBA_COUNTRIES
WHERE
    REGION_ID IN (10, 20, 30);


/*
Question 04

Filter records to show only those countries that begin with the letter 'I' and contain the letter 'd' in the EBA_COUNTRIES table.
*/
SELECT
    *
FROM
    EBA_COUNTRIES
WHERE
    NAME LIKE 'I%d';


/*
Question 05

Query the EBA_COUNTRIES table to return only those records that have a population greater than 200 million and create a new column that holds the value 1 for all records where REGION_ID = 10 and 0 if not.

(Remember to qualify your column reference if you are using the *wildcard).
*/
SELECT
    E.*
  , CASE
        WHEN REGION_ID = 10 THEN 1
        ELSE 0
    END AS REGION_10
FROM
    EBA_COUNTRIES
WHERE
    POPULATION > 200000000;
