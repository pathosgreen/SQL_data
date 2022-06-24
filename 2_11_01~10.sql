SELECT ename 사원명, deptno 부서번호,
       CASE MONTH WHEN 1 THEN sal END M01, CASE MONTH WHEN 2 THEN sal END M02,
       CASE MONTH WHEN 3 THEN sal END M03, CASE MONTH WHEN 4 THEN sal END M04,
       CASE MONTH WHEN 5 THEN sal END M05, CASE MONTH WHEN 6 THEN sal END M06,
       CASE MONTH WHEN 7 THEN sal END M07, CASE MONTH WHEN 8 THEN sal END M08,
       CASE MONTH WHEN 9 THEN sal END M09, CASE MONTH WHEN 10 THEN sal END M10,
       CASE MONTH WHEN 11 THEN sal END M11, CASE MONTH WHEN 12 THEN sal END M12

FROM (SELECT ename, deptno, EXTRACT(MONTH FROM hiredate) MONTH, sal
      FROM emp);
      
SELECT deptno 부서번호,
       AVG(CASE MONTH WHEN 1 THEN sal END) M01, AVG(CASE MONTH WHEN 2 THEN sal END) M02,
       AVG(CASE MONTH WHEN 3 THEN sal END) M03, AVG(CASE MONTH WHEN 4 THEN sal END) M04,
       AVG(CASE MONTH WHEN 5 THEN sal END) M05, AVG(CASE MONTH WHEN 6 THEN sal END) M06,
       AVG(CASE MONTH WHEN 7 THEN sal END) M07, AVG(CASE MONTH WHEN 8 THEN sal END) M08,
       AVG(CASE MONTH WHEN 9 THEN sal END) M09, AVG(CASE MONTH WHEN 10 THEN sal END) M01,
       AVG(CASE MONTH WHEN 11 THEN sal END) M11, AVG(CASE MONTH WHEN 12 THEN sal END) M12

FROM (SELECT ename, deptno, EXTRACT(MONTH FROM hiredate) MONTH, sal
      FROM emp)
GROUP BY deptno;

SELECT deptno 부서번호,
       AVG(DECODE(MONTH, 1, sal)) M01, AVG(DECODE(MONTH, 2, sal)) M02,
       AVG(DECODE(MONTH, 3, sal)) M03, AVG(DECODE(MONTH, 4, sal)) M04,
       AVG(DECODE(MONTH, 5, sal)) M05, AVG(DECODE(MONTH, 6, sal)) M06,
       AVG(DECODE(MONTH, 7, sal)) M07, AVG(DECODE(MONTH, 8, sal)) M08,
       AVG(DECODE(MONTH, 9, sal)) M09, AVG(DECODE(MONTH, 10, sal)) M10,
       AVG(DECODE(MONTH, 11, sal)) M11, AVG(DECODE(MONTH, 12, sal)) M12

FROM (SELECT ename, deptno, EXTRACT(MONTH FROM hiredate) MONTH, sal
      FROM emp)
GROUP BY deptno;

SELECT team_id,
       NVL(SUM(CASE position WHEN 'FW' THEN 1 ELSE 0 END), 0) FW,
       NVL(SUM(CASE position WHEN 'MF' THEN 1 ELSE 0 END), 0) MF,
       NVL(SUM(CASE position WHEN 'DF' THEN 1 ELSE 0 END), 0) DF,
       NVL(SUM(CASE position WHEN 'GK' THEN 1 ELSE 0 END), 0) GK,
       COUNT(*) SUM
FROM player
GROUP BY team_id;

SELECT team_id,
       NVL(SUM(CASE position WHEN 'FW' THEN 1 END), 0) FW,
       NVL(SUM(CASE position WHEN 'MF' THEN 1 END), 0) MF,
       NVL(SUM(CASE position WHEN 'DF' THEN 1 END), 0) DF,
       NVL(SUM(CASE position WHEN 'GK' THEN 1 END), 0) GK,
       COUNT(*) SUM
FROM player
GROUP BY team_id;

SELECT team_id,
       NVL(SUM(CASE WHEN position = 'FW' THEN 1 END), 0) FW,
       NVL(SUM(CASE WHEN position = 'MF' THEN 1 END), 0) MF,
       NVL(SUM(CASE WHEN position = 'DF' THEN 1 END), 0) DF,
       NVL(SUM(CASE WHEN position = 'GK' THEN 1 END), 0) GK,
       COUNT(*) SUM
FROM player
GROUP BY team_id;

SELECT ROUND(AVG(CASE WHEN position = 'MF' THEN height END), 2) 미드필더,
       ROUND(AVG(CASE WHEN position = 'FW' THEN height END), 2) 포워드,
       ROUND(AVG(CASE WHEN position = 'DF' THEN height END), 2) 디펜더,
       ROUND(AVG(CASE WHEN position = 'GK' THEN height END), 2) 골키퍼,
       ROUND(AVG(HEIGHT), 2) 전체평균키
FROM player;

SELECT player_name 선수명, position 포지션, back_no 백넘버
FROM player
ORDER BY player_name DESC;

SELECT player_name 선수명, position 포지션, back_no 백넘버
FROM player
ORDER BY 포지션 DESC;

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE height IS NOT NULL
ORDER BY height DESC, back_no;

SELECT player_name 선수명, position 포지션, back_no 백넘버
FROM player
WHERE back_no IS NOT NULL
ORDER BY 3 DESC, 2, 1;