-- Assignment Solutions (SQL Code)

-- Question 1
CREATE TABLE
    "Customer Age" AS (
SELECT
    country_id
  , population
FROM
    eba_countries);


--Question 2
TRUNCATE TABLE
    "Customer Age";


--Question 3
ALTER TABLE
    "Customer Age"
RENAME COLUMN
    country_id
TO
    Name;


--Question 4
ALTER TABLE
    "Customer Age"
RENAME COLUMN
    Population
TO
    Age;


--Question 5
ALTER TABLE
    "Customer Age"
MODIFY
    Name VARCHAR(50);


INSERT INTO
    "Customer Age"(
        Name
      , Age
)
VALUES(
    'Carlos'
  , 32
);
