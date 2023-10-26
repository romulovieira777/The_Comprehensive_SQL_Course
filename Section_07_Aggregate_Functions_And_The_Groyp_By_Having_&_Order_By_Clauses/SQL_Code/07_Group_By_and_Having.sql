SELECT
    job
  , deptno
  , SUM(sal)
FROM
    EMP
GROUP BY
    job
  , deptno = 30;


SELECT
    job
  , deptno
  , SUM(sal)
FROM
    EMP
WHERE
    deptno = 30
GROUP BY
    job
  , deptno;

 

SELECT
    job
  , deptno
  , SUM(sal)
FROM
    EMP
GROUP BY
    job
  , deptno
HAVING
    deptno = 30;


SELECT
    job
  , deptno
  , SUM(sal)
FROM
    EMP
GROUP BY
    job
  , deptno
HAVING
    SUM(sal) > 3000;
