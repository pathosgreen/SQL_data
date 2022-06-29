SELECT b.team_name ����, a.player_name ������, a.back_no ��ѹ�
FROM (SELECT *
      FROM player
      WHERE position = 'MF') a,
      team b
WHERE b.team_id = a.team_id
ORDER BY ������;

SELECT player_name ������, position ������
FROM (SELECT player_name, position, back_no, height
      FROM player
      WHERE height IS NOT NULL
      ORDER BY height DESC)
WHERE ROWNUM <= 5;

SELECT a.team_id ���ڵ�, b.team_name ����, ROUND(AVG(a.height),3) ���Ű
FROM player a, team b
WHERE b.team_id = a.team_id
GROUP BY a.team_id, b.team_name
HAVING AVG(a.height) < (SELECT AVG(x.height)
                        FROM player x
                        WHERE x.team_id IN (SELECT team_id
                                            FROM team
                                            WHERE team_name = '�Ｚ�������'));

SELECT player_name, position, back_no, team_id, team_name
FROM v_player_team
WHERE player_name LIKE 'Ȳ%';

SELECT team_id ���ڵ�, player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id = 'K02'
UNION
SELECT team_id ���ڵ�, player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id = 'K07';

SELECT player_name, position, back_no, team_id, team_name
FROM v_player_team
WHERE player_name LIKE 'Ȳ%';

SELECT team_id ���ڵ�, player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id = 'K02'
UNION
SELECT team_id ���ڵ�, player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE position = 'GK';

SELECT team_id ���ڵ�, player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id = 'K02'
UNION ALL
SELECT team_id ���ڵ�, player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE position = 'GK';

SELECT ���ڵ�,������,������,��ѹ�,Ű, COUNT(*) �ߺ���
FROM (SELECT team_id ���ڵ�, player_name ������, position ������, back_no ��ѹ�, height Ű
      FROM player
      WHERE team_id = 'K02'
      UNION ALL
      SELECT team_id ���ڵ�, player_name ������, position ������, back_no ��ѹ�, height Ű
      FROM player
      WHERE position = 'GK')
GROUP BY ���ڵ�,������,������,��ѹ�,Ű
HAVING COUNT (*) > 1;

SELECT 'P' �����ڵ�, position ������, ROUND(AVG(height),3) ���Ű
FROM player
GROUP BY position
UNION ALL
SELECT 'T' �����ڵ�, team_id ����, ROUND(AVG(height),3) ���Ű
FROM player
GROUP BY team_id
ORDER BY 1;

SELECT team_id ���ڵ�, player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id = 'K02'
MINUS
SELECT team_id ���ڵ�, player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE position = 'MF'
ORDER BY 1,2,3,4,5;
