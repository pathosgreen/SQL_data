-- 사원의 이름 길이가 5 이상인 경우만 출력
SELECT *
FROM emp
WHERE LENGTH(ename) >= 5;

SELECT LENGTH('한글'), LENGTHB('한글')
FROM DUAL;
-- 이름 글자 추출
    -- 처음 2글자,3번째 2글자,5번째 1글자
SELECT SUBSTR(ename,1,2),SUBSTR(ename,3,2),SUBSTR(ename,5,1)
FROM emp;
-- 특정 문자열 찾기
SELECT INSTR('HELLO ORACLE!','L') INSSTR_1,
       INSTR('HELLO ORACLE!','L',5) INSSTR_2,
       INSTR('HELLO ORACLE!','L',2,2) INSSTR_3
FROM DUAL;
-- 특정 문자열 바꾸기
SELECT '010-1234-5678' AS REPLACE_BEFORE,
       REPLACE('010-1234-5678','-',' ') REPLACE_1,
       REPLACE('010-1234-5678','-') REPLACE_2
FROM DUAL;
-- 특정 문자열 채우기
SELECT RPAD('971225-2',14, '*') RPAD_JMNO,
       RPAD('010-1234-',13, '*') RPAD_PHNO
FROM DUAL;
-- 두 열 사이에 : 넣고 연결
SELECT CONCAT(empno,ename),
       CONCAT(empno,CONCAT(' : ',ename))
FROM emp
WHERE ename = 'SCOTT';
-- TRIM 함수로 공백 제거
SELECT '[' || TRIM (' _Oracle_ ') || ']' AS TRIM ,
       '[' || LTRIM (' _Oracle_ ') || ']' AS LTRIM ,
       '[' || LTRIM ('<_Oracle_ ','_<') || ']' AS LTRIM2 ,
       '[' || RTRIM (' _Oracle_ ') || ']' AS RTRIM ,
       '[' || RTRIM (' <_Oracle_> ','>_ ') || ']' AS RTRIM2
FROM DUAL;
-- ROUND
SELECT ROUND(1234.5678) AS ROUND,
       ROUND(1234.5678,0) AS ROUND_0,
       ROUND(1234.5678,1) AS ROUND_1,
       ROUND(1234.5678,2) AS ROUND_2,
       ROUND(1234.5678,-1) AS ROUND_MINUS1,
       ROUND(1234.5678,-2) AS ROUND_MINUS2
FROM DUAL;
-- 날짜 표시
SELECT SYSDATE,
       ADD_MONTHS(SYSDATE,3)
FROM DUAL;
-- 사원의 입사 10주년이 되는 시점의 날짜 데이터 출력
SELECT empno,ename,hiredate, ADD_MONTHS(hiredate,120) AS WORK10YEAR
FROM emp;
-- 현재의 날짜와 시간을 출력
SELECT TO_CHAR(SYSDATE,'YYYY/MM/DD HH24/MI/SS') TODAY
FROM DUAL;
-- 월과 요일의 다양한 형식
SELECT SYSDATE,
       TO_CHAR(SYSDATE,'MM') AS MM,
       TO_CHAR(SYSDATE,'MON') AS MON,
       TO_CHAR(SYSDATE,'MONTH') AS MONTH,
       TO_CHAR(SYSDATE,'DD') AS DD,
       TO_CHAR(SYSDATE,'DY') AS DY,
       TO_CHAR(SYSDATE,'DAY') AS DAY
FROM DUAL;