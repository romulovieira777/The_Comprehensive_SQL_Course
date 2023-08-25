/*
Question 1

Query the EMP table to return a column that contains the abbreviated month name from the HIREDATE field e.g. JAN
*/
SELECT
    *
FROM
    EMP;


SELECT
    TO_CHAR(HIREDATE, 'MON') AS MONTH
FROM
    EMP;


/*
Question 2

Query the EMP table to return a column that returns the number of days from todays date to the hire date of the employee
*/
-- Solution I
SELECT
    TO_CHAR(HIREDATE, 'DD/MM/YYYY') AS HIREDATE
  , TO_CHAR(SYSDATE, 'DD/MM/YYYY')  AS TODAY
  , TO_CHAR(SYSDATE - HIREDATE)     AS DAYS
FROM
    EMP;


-- Solution II
SELECT
    SYSDATE
  , HIREDATE
  , SYSDATE - HIREDATE AS DAYS
FROM
    EMP;

/*
Question 3

Query the EMP table to return a column that returns a string with the employees name, job and salary in the format “KING PRESIDENT, 5000”
*/
SELECT
    ENAME || ' ' || JOB || ', ' || SAL AS EMP_DETAILS
FROM
    EMP;


/*
Question 4

Query the EMP table to return a column that returns the salary of each employee in thousands and rounds up to the nearest 100.

For BONUS POINTS return the values in this format: £1000k
*/
SELECT
    '£' || ROUND(SAL / 1000, 1) || 'k'  AS "SALARY (£k)"
FROM
    EMP;
