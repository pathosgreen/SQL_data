SELECT a.empno, a.ename, b.deptno, b.dname
FROM emp a NATURAL JOIN dept b;

SELECT *
FROM emp a NATURAL JOIN dept b;

SELECT *
FROM emp a INNER JOIN dept b
ON b.deptno = a.deptno;

CREATE TABLE dept_temp AS SELECT *
FROM dept;

UPDATE dept_temp
SET dname = 'CONSULTING'
WHERE dname = 'RESEARCH';

UPDATE dept_temp
SET dname = 'MARKETING'
WHERE dname = 'SALES';

SELECT *
FROM dept_temp;

SELECT *
FROM dept a NATURAL INNER JOIN dept_temp b;

SELECT *
FROM dept a NATURAL JOIN dept_temp b;

SELECT *
FROM dept a JOIN dept_temp b
ON b.deptno = a.deptno
AND b.dname = a.dname
AND b.loc = a.loc;

SELECT *
FROM dept a JOIN dept_temp b
USING (deptno);

SELECT a.deptno, a.dname, a.loc, b.dname, b.loc
FROM dept a JOIN dept_temp b
USING (deptno);

SELECT deptno, a.dname, a.loc, b.dname, b.loc
FROM dept a JOIN dept_temp b
USING (deptno);

SELECT *
FROM dept a JOIN dept_temp b
USING (dname);

SELECT *
FROM dept a JOIN dept_temp b
USING (loc, deptno);

commit;