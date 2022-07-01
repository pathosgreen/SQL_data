SELECT dname, 'All Jobs' JOB, COUNT(*) EMP_CNT, SUM(sal) SUM_SAL
FROM emp a,dept b
WHERE b.deptno = a.deptno
GROUP BY dname
UNION ALL
SELECT 'ALL Department' dname, job, COUNT(*) EMP_CNT, SUM(sal) SUM_SAL
FROM emp a,dept b
WHERE b.deptno = a.deptno
GROUP BY job;

SELECT CASE GROUPING(b.dname) WHEN 1 THEN 'ALL Departments' ELSE b.dname END DNAME,
       CASE GROUPING(a.job) WHEN 1 THEN 'ALL Jobs' ELSE a.job END JOB,
       COUNT(*) EMP_CNT, SUM(a.sal) SAL_SUM
FROM emp a, dept b
WHERE b.deptno = a.deptno
GROUP BY GROUPING SETS (b.dname, a.job)
ORDER BY b.dname, a.job;

SELECT CASE GROUPING(b.dname) WHEN 1 THEN 'ALL Departments' ELSE b.dname END DNAME,
       CASE GROUPING(a.job) WHEN 1 THEN 'ALL Jobs' ELSE a.job END JOB,
       COUNT(*) EMP_CNT, SUM(a.sal) SAL_SUM
FROM emp a, dept b
WHERE b.deptno = a.deptno
GROUP BY GROUPING SETS (a.job , b.dname)
ORDER BY b.dname, a.job;

SELECT b.dname, a.job, a.mgr ,COUNT(*) EMP_CNT, SUM(a.sal) SAL_SUM
FROM emp a,dept b
WHERE b.deptno = a.deptno
GROUP BY GROUPING SETS ((b.dname, a.job, a.mgr), (b.dname ,a.job),(a.job, a.mgr));

SELECT job, ename, sal,
       RANK() OVER (ORDER BY sal DESC) ALL_RK,
       RANK() OVER (PARTITION BY job ORDER BY sal DESC) JOB_RK
FROM emp;

SELECT job, ename, sal,
       RANK() OVER (PARTITION BY job ORDER BY sal DESC) JOB_RK
FROM emp;

SELECT job, ename, sal,
       RANK() OVER (ORDER BY sal DESC) RK,
       DENSE_RANK() OVER (ORDER BY sal DESC) DR
FROM emp;

SELECT job, ename, sal,
       RANK() OVER (ORDER BY sal DESC) RK,
       ROW_NUMBER() OVER (ORDER BY sal DESC) RN
FROM emp;

SELECT job, ename, sal,
       SUM(sal) OVER (PARTITION BY mgr) SAL_SUM
FROM emp;

SELECT job, ename, sal,
       SUM(sal) OVER (PARTITION BY mgr ORDER BY SAL RANGE UNBOUNDED PRECEDING) SAL_SUM
FROM emp;