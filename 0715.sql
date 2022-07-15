SELECT deptno, job, AVG(sal)
FROM emp
GROUP BY deptno, job
HAVING AVG(sal) >= 2000
ORDER BY deptno, job;

SELECT job, ROUND(AVG(sal))
FROM emp
GROUP BY job
HAVING AVG(sal) >= 1000;

SELECT job, ROUND(AVG(sal))
FROM emp
WHERE sal <= 3000
GROUP BY job
HAVING AVG(sal) >= 1000;

-- 조인
SELECT *
FROM emp,dept
WHERE emp.deptno = dept.deptno
ORDER BY empno;

SELECT * FROM emp;
SELECT * FROM dept;
-- 각 부서별 최고 급여와 동일한 급여를 받는 사원 정보
SELECT *
FROM emp
WHERE sal IN(SELECT MAX(sal)
    FROM emp
    GROUP BY deptno);
-- 30번 부서 사원들의 최소 급여보다 많은 급여를 받는 사원 정보
SELECT *
FROM emp
WHERE sal > ANY(SELECT sal
    FROM emp
    WHERE deptno=30);
-- ROLLBACK
CREATE TABLE dept_tcl
    AS SELECT *
        FROM dept;

SELECT *
FROM dept;
SELECT *
FROM dept_tcl;

INSERT INTO dept_tcl VALUES(50,'DATABASE','SEOUL');
UPDATE dept_tcl SET loc='BUSAN' WHERE deptno= 40;
DELETE FROM dept_tcl t WHERE dname='RESEARCH';
ROLLBACK;
COMMIT;
-- INDEX
CREATE INDEX emp_ix01 ON emp(hiredate);

SELECT * 
FROM user_ind_columns;

SELECT /*+ INDEX(a emp_ix01) */ a.*
FROM emp a
WHERE hiredate BETWEEN '1981-01-01'
AND '1981-12-31';

DROP INDEX emp_ix01;
-- VIEW
CREATE VIEW vw_emp20
AS (SELECT empno,ename,job,deptno
    FROM emp 
    WHERE deptno=20);

SELECT * FROM user_views;

SELECT * FROM vw_emp20;

DROP VIEW vw_emp20;