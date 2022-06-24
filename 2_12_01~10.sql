SELECT dname, loc, deptno
FROM dept
ORDER BY dname, loc, deptno DESC;

SELECT dname DEPT, loc AREA, deptno
FROM dept
ORDER BY dname, AREA, deptno DESC;

SELECT dname, loc AREA, deptno
FROM dept
ORDER BY 1, AREA, 3 DESC;

SELECT empno, ename
FROM emp
ORDER BY mgr;

SELECT empno
FROM (SELECT empno, ename
      FROM emp
      ORDER BY mgr);
      
SELECT mgr
FROM (SELECT empno, ename
      FROM emp
      ORDER BY mgr);

SELECT job , sal
FROM emp
GROUP BY job
HAVING COUNT(*) > 0
ORDER BY sal;

SELECT job
FROM emp
GROUP BY job
HAVING COUNT(*) > 0
ORDER BY sal;

SELECT job, SUM(sal) SALALY_SUM
FROM emp
GROUP BY job
HAVING SUM(sal) >5000
ORDER BY SUM(sal);

SELECT player.player_name 선수명, team.team_name 소속팀명
FROM player, team
WHERE team.team_id = player.team_id;

SELECT player.player_name 선수명, team.team_name 소속팀명
FROM player 
INNER JOIN team
ON team.team_id = player.team_id;

SELECT player.player_name, player.back_no, player.team_id, team.team_name, team.region_name
FROM player, team
WHERE team.team_id = player.team_id;

SELECT a.player_name 선수명, a.back_no 백넘버, a.team_id 팀코드, b.team_name 팀명, b.region_name 연고지
FROM player a, team b
WHERE b.team_id = a.team_id;






