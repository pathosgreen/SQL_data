SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE height BETWEEN 170 AND 180;

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE position = NULL;

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE position IS NULL;

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id = 'K02'
      AND height >= 170;
      
SELECT team_id ��ID, player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id IN ('K02','K07') AND position = 'MF';

SELECT team_id ��ID, player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id = 'K02'
   OR team_id = 'K07'
  AND position = 'MF'
  AND height >= 170
  AND height <= 180;
  
SELECT team_id ��ID, player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE (team_id = 'K02' OR team_id = 'K07')
  AND position = 'MF'
  AND height >= 170
  AND height <= 180;

SELECT team_id ��ID, player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id IN ('K02','K07')
  AND position = 'MF'
  AND height BETWEEN 170 AND 180;
  
SELECT team_id ��ID, player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id = 'K02'
  AND NOT position = 'MF'
  AND NOT height BETWEEN 175 AND 185;
  
SELECT player_name ������, nation ����
FROM player
WHERE nation IS NOT NULL;
