-- ���� �߻� ����
SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id = K02;

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id = 'K02';

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE position = 'MF';

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE height >= 170;

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id IN ('K02','K07');

SELECT ename,job,deptno
FROM emp
WHERE (job,deptno) IN (('MANAGER',20),('CLERK',30));

SELECT ename,job,deptno
FROM emp
WHERE job IN ('MANAGER','CLERK') AND deptno IN (20,30);

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE position LIKE 'MF';

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE player_name LIKE '��%';

SELECT player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE player_name LIKE '��_ȣ';