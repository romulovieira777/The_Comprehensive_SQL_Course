/*
Question 1

(For this assignment question we will be using the Employees Sample Dataset)

Perform a join on the EMP and DEPT table on the DEPTNO fields for both tables and return the columns:

    - ENAME from EMP
    - DEPTNO from EMP
    - SAL from EMP
    - DNAME from DEPT

You should return all values from the EMP table and no unmatched values from the DEPT table. I will leave you to figure
out the most suitable column and join type to join the table
*/
SELECT
    emp.ename
  , emp.deptno
  , emp.sal
  , dept.dname
FROM
    emp
LEFT JOIN
    dept
ON
    emp.deptno = dept.deptno;



/*
Question 2

(For this assignment question we will be using the Countries Sample Dataset)

Perform a join between the EBA_COUNTRIES table and the EBA_COUNTRY_INTERMEDIATES table on the respective
INTERMEDIATE_REGION_ID and ID fields.

Return and appropriately alias the following columns:

    - NAME from EBA_COUNTRIES
    - INTERMEDIATE_REGION_ID from EBA_COUNTRIES
    - NAME from EBA_COUNTRY_INTERMEDIATES

Return only those records where both tables have matching values on their related fields
*/
SELECT
    c.name  AS country
  , c.intermediate_region_id
  , cr.name AS "intermediate name"
FROM
    eba_countries c
INNER JOIN
    eba_country_intermediates CR
ON
    c.intermediate_region_id = cr.id;
