SELECT ename,hiredate,sal,
       LAG(sal, 2, 0) OVER (ORDER BY hiredate) LAG_SAL
FROM emp
WHERE job = 'SALESMAN';

SELECT ename,hiredate,
       LEAD(hiredate, 1) OVER (ORDER BY hiredate) LEAD_HIREDATE
FROM emp
WHERE job = 'SALESMAN';

SELECT ename,sal,
       ROUND(ratio_to_report (sal)OVER(),2) SAL_RR
FROM emp
WHERE job = 'SALESMAN';

SELECT deptno,ename,sal,
       PERCENT_RANK()OVER(PARTITION BY deptno ORDER BY sal DESC) PR
FROM emp;

SELECT deptno,ename,sal,
       CUME_DIST()OVER(PARTITION BY deptno ORDER BY sal DESC) CD
FROM emp;

SELECT ename,sal,
       NTILE(4)OVER(ORDER BY sal DESC) NT
FROM emp;

SELECT ename,sal
FROM emp
WHERE ROWNUM < 4
ORDER BY sal DESC;

SELECT ename,sal
FROM (SELECT ename,sal
      FROM emp
      ORDER BY sal DESC)
WHERE ROWNUM < 4;

SELECT * FROM (SELECT 
       ename,sal
FROM emp
ORDER BY sal DESC) WHERE rownum <= 2;

-- 10번 X