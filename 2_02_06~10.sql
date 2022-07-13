
SELECT LENGTH('SQL Expert') AS LEN
FROM DUAL;

DESC DUAL;
SELECT * FROM DUAL;

SELECT CONCAT(player_name,' 축구선수') AS 선수명
FROM player;
SELECT player_name||' 축구선수' AS 선수명
FROM player;

SELECT stadium_id, DDD||')'||tel AS TEL, LENGTH(DDD||'-'||TEL) AS L_TEL 
FROM stadium;

SELECT ename, ROUND(sal/12,1) SAL_ROUND,
       TRUNC(sal/12,1) SAL_TRUNC
FROM emp;