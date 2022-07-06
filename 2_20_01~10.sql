SELECT mgr, ename, sal,
       MAX(sal) OVER (PARTITION BY mgr) MAX_SAL
FROM emp;

SELECT mgr, ename, sal
FROM (SELECT mgr, ename, sal, MAX(sal) OVER (PARTITION BY mgr) MAX_SAL
      FROM emp)
WHERE sal = MAX_SAL;

SELECT mgr, ename, sal
FROM (SELECT mgr, ename, sal, RANK() OVER(PARTITION BY mgr ORDER BY sal DESC) SAL_RK
      FROM emp)
WHERE SAL_RK = 1;

SELECT mgr, ename, hiredate, sal,
       MIN(sal) OVER (PARTITION BY mgr ORDER BY hiredate) MIN_SAL
FROM emp;

SELECT mgr, ename, hiredate, sal,
       ROUND(AVG(sal) OVER (PARTITION BY mgr ORDER BY hiredate
                            ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING)) AVG_SAL
FROM emp;

SELECT ename, sal,
       COUNT(*) OVER (ORDER BY sal RANGE BETWEEN 50 PRECEDING AND
                             150 FOLLOWING) EMP_CNT
FROM emp;

SELECT deptno,ename, sal,
       FIRST_VALUE(ename) OVER (PARTITION BY deptno ORDER BY sal DESC
                            ROWS UNBOUNDED PRECEDING) ENAME_FV
FROM emp;

SELECT deptno,ename, sal,
       FIRST_VALUE(ename) OVER (PARTITION BY deptno ORDER BY sal DESC, ENAME
                                ROWS UNBOUNDED PRECEDING) ENAME_FV
FROM emp;

SELECT deptno,ename, sal,
       LAST_VALUE(ename) OVER (PARTITION BY deptno ORDER BY sal DESC
                               ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) ENAME_LV
FROM emp;

SELECT ename, hiredate, sal,
       LAG(sal) OVER (ORDER BY hiredate) LAG_SAL
FROM emp
WHERE job = 'SALESMAN';