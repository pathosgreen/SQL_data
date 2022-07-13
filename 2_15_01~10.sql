SELECT *
FROM dept A JOIN dept_temp B 
USING (deptno,dname);

SELECT a.empno, a.ename, b.deptno, b.dname
FROM emp a JOIN dept b
ON (b.deptno = a.deptno);

SELECT a.empno, a.ename, b.deptno, b.dname
FROM emp a JOIN dept b
ON (b.deptno = a.deptno)
WHERE b.deptno = 30;

SELECT a.empno, a.ename, b.deptno, b.dname
FROM emp a JOIN dept b
ON (b.deptno = a.deptno)
AND a.mgr = 7698;

SELECT a.empno, a.ename, b.deptno, b.dname
FROM emp a JOIN dept b
ON (b.deptno = a.deptno)
WHERE a.mgr = 7698;

SELECT a.team_name, a.stadium_id, b.stadium_name
FROM team a JOIN stadium b
ON (b.stadium_id = a.stadium_id)
ORDER BY a.stadium_id;

SELECT a.team_name, stadium_id, b.stadium_name
FROM team a JOIN stadium b
USING (stadium_id)
ORDER BY stadium_id;

SELECT a.team_name, a.team_id, b.stadium_name
FROM team a JOIN stadium b
ON (b.hometeam_id = a.team_id)
ORDER BY a.team_id;

SELECT a.empno, a.deptno, b.dname, c.dname AS NEW_DNAME
FROM emp a JOIN dept b
ON (b.deptno = a.deptno)
JOIN dept_temp c
ON c.deptno = b.deptno;

SELECT a.player_name 선수명, a.position 포지션, b.team_name 연고지명, b.team_name 팀명, c.stadium_name 구단명
FROM player a JOIN team b
ON (b.team_id = a.team_id)
JOIN stadium c
ON c.stadium_id = b.stadium_id
WHERE a.position = 'GK'
ORDER BY 선수명;

SELECT b.stadium_name, b.stadium_id, a.sche_date, c.team_name, c.team_name, a.home_score, a.away_score
FROM schedule a JOIN stadium b
ON b.stadium_id = a.stadium_id
JOIN team c
ON c.team_id = a.hometeam_id
JOIN team d
ON d.team_id = a.awayteam_id
WHERE a.home_score >= a.away_score + 3;

SELECT a.ename, b.dname
FROM emp a CROSS JOIN dept b
ORDER BY a.ename;