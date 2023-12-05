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
    EMP.ENAME
  , EMP.DEPTNO
  , EMP.SAL
  , DEPT.DNAME
FROM
    EMP
LEFT JOIN
    DEPT
ON
    EMP.DEPTNO = DEPT.DEPTNO;


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
    C.NAME
  , C.INTERMEDIATE_REGION_ID
  , IR.NAME
FROM
    EBA_COUNTRIES C
INNER JOIN
    EBA_COUNTRY_INTERMEDIATE IR
ON
    C.INTERMEDIATE_REGION_ID = IR.ID;
