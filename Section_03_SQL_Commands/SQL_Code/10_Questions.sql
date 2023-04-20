/*
Question 1

For this question I want you to create a table by using the existing records from the "EBA_COUNTRIES" Table.

Create a new table by using the “COUNTRY_ID” and “POPULATION” fields from the "EBA_COUNTRIES" table and name the new table “Customer Age".
*/
CREATE TABLE
    CUSTOMER_AGE AS (
SELECT
    COUNTRY_ID
  , POPULATION
FROM
    EBA_COUNTRIES
);


/*
Question 2

Truncate the newly created “Customer Age” table
*/
TRUNCATE TABLE
    CUSTOMER_AGE;


/*
Question 3

In your "Customer Age" table rename the ”COUNTRY_D” field to “NAME”
*/
ALTER TABLE
    CUSTOMER_AGE
RENAME COLUMN
    COUNTRY_ID TO NAME;


/*
Question 4

Rename the ”POPULATION” field to “AGE”
*/
ALTER TABLE
    CUSTOMER_AGE
RENAME COLUMN
    POPULATION TO AGE;


/*
Question 5

Slightly more challenging

Insert a new record into the ”CUSTOMER AGE” table: Carlos aged 32.

(Hint, look at the data types for the “CUSTOMER AGE” table)
*/
ALTER TABLE
    CUSTOMER_AGE
MODIFY
    NAME VARCHAR(50);


INSERT INTO
    CUSTOMER_AGE (
        NAME
      , AGE
    )
VALUES(
    'Carlos'
  , 32
);
