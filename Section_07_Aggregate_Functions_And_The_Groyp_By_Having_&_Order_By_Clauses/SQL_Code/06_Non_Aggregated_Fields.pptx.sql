SELECT
    deptno
  , MAX(job)
  , SUM(sal)
FROM
    EMP
GROUP BY
    deptno;


SELECT
    *
FROM
    EMP
WHERE
    deptno = 30;
