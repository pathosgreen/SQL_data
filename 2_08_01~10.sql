-- 오류 발생 버전
SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE team_id = K02;

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE team_id = 'K02';

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE position = 'MF';

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE height >= 170;

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE team_id IN ('K02','K07');

SELECT ename,job,deptno
FROM emp
WHERE (job,deptno) IN (('MANAGER',20),('CLERK',30));

SELECT ename,job,deptno
FROM emp
WHERE job IN ('MANAGER','CLERK') AND deptno IN (20,30);

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE position LIKE 'MF';

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE player_name LIKE '장%';

SELECT player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE player_name LIKE '장_호';