
-- ������ ������ Į�� ������ �̿��� ���.
SELECT player_name AS ������, 
       position AS ��ġ,
       height AS Ű,
       weight AS ������
FROM player;

-- ������ ������ Į�� ������ �̿��� ���.(���� �߰��� ���� ���)
SELECT player_name AS "���� ��", 
       position AS ������,
       height AS Ű,
       weight AS ������
FROM player;

-- �������� Ű���� �����Ը� �� �� ���
SELECT player_name AS ������, 
       height - weight AS "Ű-������"
FROM player;

-- �������� Ű�� �����Ը� �̿��� ������(BMI)���
SELECT player_name AS ������, 
       ROUND(weight/((height/100)*(height/100)),2) AS BMI������
FROM player;

-- ������ ����, Ű cm ������ kg �������� ���
SELECT player_name || ' ����,'|| 
       height ||' cm,'||
       weight ||'kg' AS ü������
FROM player;