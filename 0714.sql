
SELECT LENGTH('한글'), LENGTH('한글')
FROM DUAL;

SELECT LENGTHB(CONVERT('한글','KO16MSWIN949'))  AS LENGTHB_1,
       LENGTHB(CONVERT('한글 HANGUL','KO16MSWIN949'))  AS LENGTHB_2
FROM DUAL;

SELECT to_char(sysdate,'yyy"년" mm"월" dd"일" HH24"시" MI"분" SS"초"')
FROM DUAL;

SELECT SYSDATE,
       TO_CHAR(SYSDATE, 'MM') AS MM,
       TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE=KOREAN') AS MON_KOR,
       TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE=JAPANESE') AS MON_JPN,
       TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE=ENGLISH') AS MON_ENG,
       TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE=KOREAN') AS MONTH_KOR,
       TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE=JAPANESE') AS MONTH_JPN,
       TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE=ENGLISH') AS MONTH_ENG
FROM DUAL;
-- 여러가지 숫자 형식 사용하여 급여 출력
SELECT sal,
    TO_CHAR(sal, '$999,999') AS SAL_$,
    TO_CHAR(sal, 'L999,999') AS SAL_L,
    TO_CHAR(sal, '999,999.00') AS SAL_1,
    TO_CHAR(sal, '000,999,999.00') AS SAL_2,
    TO_CHAR(sal, '000999999.99') AS SAL_3,
    TO_CHAR(sal, '999,999,00') AS SAL_4
FROM emp;
-- 1981년 6월 1일 이후에 입사한 사원의 정보 출력
SELECT *
FROM emp
WHERE hiredate > TO_DATE('1981/06/01','yyyy/MM/DD');

-- NVL
SELECT empno, ename, sal, comm, sal+comm,
       NVL(comm, 0),
       sal+NVL(comm, 0)
FROM emp;
-- NVL2
SELECT empno, ename, comm,
       NVL2(comm, 'O', 'X'),
       sal+NVL2(comm, sal*12+comm, sal*12) AS ANNSAL
FROM emp;
-- DECODE
SELECT empno, ename, job, sal,
    DECODE(job,
    'MANAGER',sal*1.1,
    'SALESMAN',sal*1.05,
    'ANALYST',sal
    ,sal*1.03) AS UPSAL
FROM emp;
-- 다중행
SELECT sal FROM emp;
SELECT SUM(sal) FROM emp;
-- emp 테이블 데이터 수
SELECT COUNT(comm)
FROM emp;
-- 부서 번호가 30인 직원 수
SELECT COUNT(*)
FROM emp
WHERE deptno = 30;
-- 추가 수당 행의 개수
SELECT COUNT(comm)
FROM emp;

SELECT COUNT(comm)
FROM emp
WHERE comm IS NOT NULL;
-- 부서 번호가 20인 사원의 입사일중 제일 최근 입사일
SELECT MAX((hiredate))
FROM emp
WHERE deptno = 20;

SELECT *
FROM emp
WHERE deptno = 20;
-- WHERE절과 HAVING절 -- WHERE절을 GROUP보다 우선 처리(?)
SELECT deptno, job, AVG(sal)
FROM emp
WHERE sal <= 3000
GROUP BY deptno, job
HAVING AVG(sal) >= 2000
ORDER BY deptno, job;

SELECT deptno, job, AVG(sal)
FROM emp
GROUP BY deptno, job
HAVING AVG(sal) >= 2000
ORDER BY deptno, job;
-- PIVOT 함수 사용
SELECT *
FROM(SELECT deptno,job,sal
     FROM emp)
PIVOT(MAX(sal)
     FOR deptno IN(10,20,30))
ORDER BY job;
-- JOIN
SELECT e.empno, e.ename, d.deptno, d.dname, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno
ORDER BY d.deptno, e.empno;
-- 서브쿼리로 JONES의 급여보다 높은 급여를 받는 사원 정보 출력
SELECT *
FROM emp
WHERE sal > (SELECT sal
             FROM emp
             WHERE ename = 'JONES');
-- 실무형 쿼리 - 조인과 서브쿼리를 같이 사용
SELECT e.empno, e.ename, d.deptno, d.dname, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno
AND e.deptno = 20
AND e.sal > (SELECT AVG(sal)
             FROM emp);

