SELECT *
FROM (SELECT job,deptno,sal FROM emp)
PIVOT (SUM(sal) FOR deptno IN(10,20,30))
ORDER BY 1;

SELECT *
FROM (SELECT TO_CHAR(hiredate,'YYYY') YYYY,job,deptno,sal FROM emp)
PIVOT (SUM(sal) FOR deptno IN(10,20,30))
ORDER BY 1,2;

SELECT *
FROM (SELECT job,deptno,sal FROM emp)
PIVOT (SUM(sal) SAL FOR deptno IN(10 D10,20 D20,30 D30))
ORDER BY 1;

SELECT job, D20_SAL
FROM (SELECT job,deptno,sal FROM emp)
PIVOT (SUM(sal) SAL FOR deptno IN(10 D10,20 D20,30 D30))
WHERE D20_SAL > 2500
ORDER BY 1;

SELECT *
FROM (SELECT job,deptno,sal FROM emp)
PIVOT (SUM(sal) SAL,COUNT(*) CNT FOR deptno IN(10 D10,20 D20))
ORDER BY 1;

SELECT *
FROM (SELECT TO_CHAR(hiredate,'YYYY') YYYY,job,deptno,sal FROM emp)
PIVOT (SUM(sal) SAL,COUNT(*) CNT FOR (deptno,job)
       IN((10, 'ANALYST') D10A,(10, 'CLERK') D10C,(20, 'ANALYST') D20A,(20, 'CLERK') D20C))
ORDER BY 1;

SELECT job,
       SUM(CASE deptno WHEN 10 THEN sal END) D10_SAL,
       SUM(CASE deptno WHEN 20 THEN sal END) D20_SAL,
       SUM(CASE deptno WHEN 30 THEN sal END) D30_SAL
FROM emp
GROUP BY job
ORDER BY job;

SELECT *
FROM T1
ORDER BY job;

SELECT job, deptno, sal
FROM T1
UNPIVOT (sal FOR deptno IN(D10_SAL, D20_SAL))
ORDER BY 1,2;

SELECT job, deptno, sal
FROM T1
UNPIVOT (sal FOR deptno IN(D10_SAL AS 10, D20_SAL AS 20))
ORDER BY 1,2;

