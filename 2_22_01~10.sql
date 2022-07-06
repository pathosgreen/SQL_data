SELECT job,
       SUM(CASE deptno WHEN 10 THEN sal END) D10_SAL,
       SUM(CASE deptno WHEN 20 THEN sal END) D20_SAL,
       SUM(CASE deptno WHEN 30 THEN sal END) D30_SAL
FROM emp
GROUP BY job
ORDER BY job;

SELECT * FROM (SELECT empno, sal 
FROM emp 
ORDER BY sal, empno) WHERE rownum <= 5;

SELECT b.empno, b.ename, b.mgr 
FROM emp a, emp b
WHERE a.ename = 'JONES'
AND b.mgr = a.empno;

SELECT c.empno, c.ename, c.mgr 
FROM emp a, emp b, emp c
WHERE a.ename = 'JONES'
AND b.mgr = a.empno
AND c.mgr = b.empno;

SELECT b.empno, b.ename, b.mgr 
FROM emp a, emp b
WHERE a.ename = 'SMITH'
AND a.mgr = b.empno;

SELECT c.empno, c.ename, c.mgr 
FROM emp a, emp b, emp c
WHERE a.ename = 'SMITH'
AND a.mgr = b.empno
AND b.mgr = c.empno;

SELECT LEVEL LV, LPAD(' ', 2*(level-1)) || empno empno, mgr,
       CONNECT_BY_ISLEAF ISLEAF
FROM emp
START WITH mgr IS NULL 
CONNECT BY mgr = PRIOR empno;

SELECT LEVEL LV, LPAD(' ', 2*(level-1)) || empno empno, mgr,
       CONNECT_BY_ISLEAF ISLEAF
FROM emp
START WITH empno = 7876 
CONNECT BY empno = PRIOR mgr;

SELECT CONNECT_BY_ROOT (empno) ROOT_EMPNO,
       SYS_CONNECT_BY_PATH(empno, '/') PATH,
       empno,mgr
FROM emp
START WITH mgr IS NULL 
CONNECT BY mgr = PRIOR empno;