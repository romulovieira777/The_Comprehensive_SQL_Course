SELECT
    deptno
  , job
  , AVG(sal)
FROM
    EMP
GROUP BY
    deptno
  , job;
