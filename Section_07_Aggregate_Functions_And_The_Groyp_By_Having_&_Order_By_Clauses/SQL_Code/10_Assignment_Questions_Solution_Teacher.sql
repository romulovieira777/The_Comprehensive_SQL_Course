/*
Question 1

What are the average, minimum and maximum population values for all countries in the EBA_COUNTRIES table?
*/
SELECT
    AVG(POPULATION)
  , MAX(POPULATION)
  , MIN(POPULATION)
FROM
    eba_countries;


/*
Question 2

Which Capital City has the 5th highest population?
*/
SELECT
    *
FROM
    eba_countries
ORDER BY
    POPULATION DESC;


/*
Question 3

Using the EBA_COUNTRIES table find the SUB_REGION_ID that has the 5th highest population
*/
SELECT
    SUB_REGION_ID
  , sum(POPULATION)
FROM
    eba_countries
GROUP BY
    SUB_REGION_ID
ORDER BY
    SUM(POPULATION) DESC;


/*
Question 4

Which DEPTNO in the EMP table pays their managers the highest average salary?
*/
SELECT
    DEPTNO
  , job
  , AVG(SAL)
FROM
    emp
WHERE
    job = 'MANAGER'
GROUP BY
    DEPTNO
  , job;
