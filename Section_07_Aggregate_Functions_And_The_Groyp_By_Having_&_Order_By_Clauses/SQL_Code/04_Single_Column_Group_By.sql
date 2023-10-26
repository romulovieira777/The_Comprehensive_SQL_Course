SELECT
    job
  , SUM(sal)
FROM
    EMP
GROUP BY
    job;


SELECT
    job
  , AVG(sal)
FROM
    EMP
GROUP BY
    job;
