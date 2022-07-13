SELECT a.player_name 선수명, a.back_no 백넘버, b.region_name 연고지, b.team_name 팀명
FROM player a , team b
WHERE a.position = 'GK'
AND b.team_id = a.team_id
ORDER BY a.back_no;

SELECT player.player_name 선수명, a.back_no 백넘버, b.region_name 연고지, b.team_name 팀명
FROM player a , team b
WHERE a.position = 'GK'
AND b.team_id = a.team_id
ORDER BY a.back_no;

SELECT team.region_name, team.team_name, team.stadium_id,
       stadium.stadium_name, stadium.seat_count
FROM team, stadium
WHERE stadium.stadium_id = team.stadium_id;

SELECT a.region_name, a.team_name, a.stadium_id,
       b.stadium_name, b.seat_count
FROM team a, stadium b
WHERE b.stadium_id = a.stadium_id;

SELECT region_name, team_name, a.stadium_id,
       stadium_name, seat_count
FROM team a, stadium b
WHERE b.stadium_id = a.stadium_id;

SELECT a.ename, a.job, a.sal, b.grade
FROM emp a, salgrade b
WHERE a.sal BETWEEN b.losal AND b.hisal;

SELECT a.ename 사원명, a.sal 급여, b.grade 급여등급
FROM emp a, salgrade b
WHERE a.sal BETWEEN b.losal AND b.hisal;

SELECT a.player_name 선수명, a.position 포지션,
       b.region_name 연고지, b.team_name 팀명, c.stadium_name 구장명
FROM player a , team b, stadium c
WHERE a.team_id = b.team_id
AND c.stadium_id = b.stadium_id
ORDER BY 선수명;

SELECT a.stadium_name, a.stadium_id, a.seat_count, a.hometeam_id, b.team_name
FROM stadium a , team b
WHERE b.team_id(+) = a.hometeam_id
ORDER BY a.hometeam_id;

SELECT a.ename, a.deptno, b.dname, b.loc
FROM emp a, dept b
WHERE b.deptno = a.deptno(+);

SELECT a.empno, a.ename, b.deptno, b.dname
FROM emp a, dept b
WHERE b.deptno = a.deptno;

SELECT a.empno, a.ename, b.deptno, b.dname
FROM emp a INNER JOIN dept b
ON b.deptno = a.deptno;

SELECT a.empno, a.ename, b.deptno, b.dname
FROM emp a JOIN dept b
ON b.deptno = a.deptno;

SELECT a.empno, a.ename, deptno, b.dname
FROM emp a NATURAL JOIN dept b;
