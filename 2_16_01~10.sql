SELECT a.ename, b.dname
FROM emp a CROSS JOIN dept b
WHERE b.deptno = a.deptno;

SELECT a.ename, b.dname
FROM emp a INNER JOIN dept b
ON b.deptno = a.deptno;

SELECT a.stadium_name, a.stadium_id, a.seat_count, a.hometeam_id
FROM stadium a LEFT OUTER JOIN team b
ON b.team_id = a.hometeam_id
ORDER BY a.hometeam_id;

SELECT a.stadium_name, a.stadium_id, a.seat_count, a.hometeam_id
FROM stadium a LEFT JOIN team b
ON b.team_id = a.hometeam_id
ORDER BY a.hometeam_id;

SELECT a.ename, b.deptno, b.dname, b.loc
FROM emp a RIGHT JOIN dept b
ON b.deptno = a.deptno;

UPDATE dept_temp
SET deptno = deptno + 20;

SELECT *
FROM dept_temp;

SELECT *
FROM dept a FULL OUTER JOIN dept_temp b
ON b.deptno = a.deptno;

SELECT *
FROM dept a FULL JOIN dept_temp b
ON b.deptno = a.deptno;

SELECT player_name ������, position ������, back_no ��ѹ�
FROM player
WHERE team_id = (SELECT team_id
                 FROM player
                 WHERE player_name = '������')
ORDER BY player_name;

SELECT player_name ������, position ������, back_no ��ѹ�
FROM player
WHERE height <= (SELECT AVG (height)
                 FROM player)
ORDER BY player_name;

SELECT region_name ��������, team_name ����, e_team_name ��������
FROM team
WHERE team_id = (SELECT team_id
                 FROM player
                 WHERE player_name = '������')
ORDER BY team_name;

SELECT region_name ��������, team_name ����, e_team_name ��������
FROM team
WHERE team_id IN (SELECT team_id
                 FROM player
                 WHERE player_name = '������')
ORDER BY team_name;

SELECT team_id ���ڵ�, player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE (team_id, height) IN (SELECT team_id, MIN(height)
                            FROM player
                            GROUP BY team_id)
ORDER BY team_id, player_name;

SELECT b.team_name ����, a.player_name ������, a.position ������, a.back_no ��ѹ�, a.height Ű
FROM player a, team b
WHERE a.height < (SELECT AVG (x.height)
                  FROM player x
                  WHERE x.team_id = a.team_id
                  GROUP BY x.team_id)
ORDER BY ������;

