SELECT NVL(NULL, 'NVL-OK') AS ISNULL_TEST FROM dual;

SELECT NVL('Not-NULL', 'NVL-OK') AS ISNULL_TEST FROM dual;

SELECT player_name 선수명, position 포지션, NVL(position,'없음') NL포지션
FROM player
WHERE team_id = 'K08';

SELECT player_name 선수명, position 포지션,
    CASE
        WHEN position is NULL THEN '없음'
        ELSE position
    END NL포지션
FROM player
WHERE team_id = 'K08';

SELECT ename 사원명, sal 월급, comm 커미션,
    (sal*12)+comm 연봉A,(sal*12)+NVL(comm,0) 연봉B
FROM emp;