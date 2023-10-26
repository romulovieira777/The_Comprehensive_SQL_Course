SELECT
    *
FROM
    EMP;


SELECT
    *
FROM
    EMP
ORDER BY
    sal;


SELECT
    *
FROM
    EMP
ORDER BY
    sal ASC;


SELECT
    deptno
  , job
  , SUM(sal) AS total_sal
FROM
    EMP
GROUP BY
    deptno
  , job
ORDER BY
    SUM(sal) DESC;
