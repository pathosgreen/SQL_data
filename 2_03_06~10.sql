SELECT team_id 팀ID,
       CAST(zip_code1 AS INT)+CAST(zip_code2 AS INT) 우편번호합
FROM team;

SELECT SYSDATE
FROM Dual;

SELECT ename 사원명, hiredate 입사일자, 
       EXTRACT(YEAR FROM hiredate) 입사년도,
       EXTRACT(MONTH FROM hiredate) 입사월,
       EXTRACT(DAY FROM hiredate) 입사일
FROM emp;

SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD') 날짜,
       TO_CHAR(SYSDATE, 'YYYY.MON,DAY') 문자형
FROM DUAL;

SELECT ename, ROUND(sal/12) SAL_ROUND, CEIL(sal/12) SAL_CEIL
FROM emp;