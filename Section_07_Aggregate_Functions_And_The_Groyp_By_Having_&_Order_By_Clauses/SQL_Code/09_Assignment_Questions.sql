/*
Question 1

What are the average, minimum and maximum population values for all countries in the EBA_COUNTRIES table?
*/
SELECT
    AVG(POPULATION)
  , MIN(POPULATION)
  , MAX(POPULATION)
FROM
    eba_countries;


/*
Question 2

Which Capital City has the 5th highest population?
*/
SELECT
    CAPITAL
  , POPULATION
FROM (
    SELECT
        CAPITAL
      , POPULATION
      , ROWNUM AS RN
    FROM (
        SELECT
            CAPITAL
          , POPULATION
        FROM
            eba_countries
        ORDER BY
            POPULATION DESC
    )
)
WHERE
    RN = 5;


/*
Question 3

Using the EBA_COUNTRIES table find the SUB_REGION_ID that has the 5th highest population
*/
SELECT
    SUB_REGION_ID
  , POPULATION
FROM (
    SELECT
        SUB_REGION_ID
      , POPULATION
      , ROWNUM AS RN
    FROM (
        SELECT
            SUB_REGION_ID
          , POPULATION
        FROM
            eba_countries
        ORDER BY
            POPULATION DESC
    )
)
WHERE
    RN = 5;


/*
Question 4

Which DEPTNO in the EMP table pays their managers the highest average salary?
*/
SELECT
    DEPTNO
  , AVG(SAL) AS AVG_SAL
FROM
    emp
WHERE
    JOB = 'MANAGER'
GROUP BY
    DEPTNO
ORDER BY
    AVG_SAL DESC;
