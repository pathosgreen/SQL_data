SELECT COUNT(*) ��ü���, COUNT(height) Ű�Ǽ�,
MAX(height) �ִ�Ű, MIN (height) �ּ�Ű, ROUND(AVG(height),2) ���Ű
FROM player;

SELECT position ������, AVG(height) ���Ű
FROM player;

SELECT position ������, AVG(height) ���Ű
FROM player
GROUP BY ������;

SELECT position ������, COUNT(*) �ο���, COUNT(height) Ű���,
MAX (height) �ִ�Ű, MIN (height) �ּ�Ű, ROUND(AVG(height),2) ���Ű
FROM player
GROUP BY position;

SELECT position ������, ROUND(AVG(height),2) ���Ű
FROM player
WHERE AVG (height) >= 180
GROUP BY position;

SELECT position ������, ROUND(AVG(height),2) ���Ű
FROM player
GROUP BY position
HAVING AVG (height) >= 180;

SELECT position ������, ROUND(AVG(height),2) ���Ű
FROM player
HAVING AVG (height) >= 180
GROUP BY position;

SELECT team_id ��ID, COUNT(*) �ο���
FROM player
WHERE team_id IN ('K09','K02')
GROUP BY team_id;

SELECT team_id ��ID, COUNT(*) �ο���
FROM player
GROUP BY team_id
HAVING team_id IN ('K09','K02');

SELECT position ������, ROUND(AVG(height),2) ���Ű
FROM player
GROUP BY position
HAVING MAX (height) >= 190;

SELECT ename �����, deptno �μ���ȣ,
      EXTRACT(MONTH FROM hiredate) �Ի��, sal �޿�
FROM emp;