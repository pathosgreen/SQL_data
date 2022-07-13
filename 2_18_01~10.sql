SELECT team_id 팀코드, player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player a
WHERE team_id = 'K02'
INTERSECT
SELECT team_id 팀코드, player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player a
WHERE position = 'GK'
ORDER BY 1,2,3,4,5;

SELECT b.dname, a.job, COUNT(*) EMP_CNT, SUM(a.sal) SAL_SUM
FROM emp a, dept b
WHERE b.deptno = a.deptno
GROUP BY b.dname, a.job;

SELECT b.dname, a.job, COUNT(*) EMP_CNT, SUM(a.sal) SAL_SUM
FROM emp a, dept b
WHERE b.deptno = a.deptno
GROUP BY b.dname, a.job
ORDER BY b.dname, a.job;

SELECT b.dname, a.job, COUNT(*) EMP_CNT, SUM(a.sal) SAL_SUM
FROM emp a, dept b
WHERE b.deptno = a.deptno
GROUP BY ROLLUP (b.dname, a.job);

SELECT b.dname, a.job, COUNT(*) EMP_CNT, SUM(a.sal) SAL_SUM
FROM emp a, dept b
WHERE b.deptno = a.deptno
GROUP BY ROLLUP (b.dname, a.job)
ORDER BY b.dname, a.job;

SELECT b.dname,GROUPING(b.dname) DNAME_GRP, a.job,GROUPING(a.job) JOB_GRP , COUNT(*) EMP_CNT, SUM(a.sal) SAL_SUM
FROM emp a, dept b
WHERE b.deptno = a.deptno
GROUP BY ROLLUP (b.dname, a.job)
ORDER BY b.dname, a.job;

SELECT CASE GROUPING(b.dname) WHEN 1 THEN 'ALL Departments' ELSE b.dname END DNAME,
       CASE GROUPING(a.job) WHEN 1 THEN 'ALL Jobs' ELSE a.job END JOB,
       COUNT(*) EMP_CNT, SUM(a.sal) SAL_SUM
FROM emp a, dept b
WHERE b.deptno = a.deptno
GROUP BY ROLLUP (b.dname, a.job)
ORDER BY b.dname, a.job;

SELECT DECODE (GROUPING(b.dname), 1, 'ALL Departments', b.dname) DNAME,
       DECODE (GROUPING(a.job), 1, 'ALL Jobs', a.job) JOB,
       COUNT(*) EMP_CNT, SUM(a.sal) SAL_SUM
FROM emp a, dept b
WHERE b.deptno = a.deptno
GROUP BY ROLLUP (b.dname, a.job)
ORDER BY b.dname, a.job;

SELECT CASE GROUPING(b.dname) WHEN 1 THEN 'ALL Departments' ELSE b.dname END DNAME,
       CASE GROUPING(a.job) WHEN 1 THEN 'ALL Jobs' ELSE a.job END JOB,
       COUNT(*) EMP_CNT, SUM(a.sal) SAL_SUM
FROM emp a, dept b
WHERE b.deptno = a.deptno
GROUP BY b.dname, ROLLUP (a.job)
ORDER BY b.dname, a.job;

SELECT CASE GROUPING(b.dname) WHEN 1 THEN 'ALL Departments' ELSE b.dname END DNAME,
       CASE GROUPING(a.job) WHEN 1 THEN 'ALL Jobs' ELSE a.job END JOB,
       COUNT(*) EMP_CNT, SUM(a.sal) SAL_SUM
FROM emp a, dept b
WHERE b.deptno = a.deptno
GROUP BY CUBE(b.dname, a.job)
ORDER BY b.dname, a.job;