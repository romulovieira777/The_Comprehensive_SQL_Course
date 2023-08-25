SELECT
    SUM(SAL) AS "Total Salary"
FROM
    EMP;


SELECT
    SUM(SAL) AS "Total Salary"
FROM
    EMP
WHERE
    JOB = 'MANAGER';
