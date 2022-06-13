SELECT NVL(NULL, 'NVL-OK') AS ISNULL_TEST FROM dual;

SELECT NVL('Not-NULL', 'NVL-OK') AS ISNULL_TEST FROM dual;

SELECT player_name ������, position ������, NVL(position,'����') NL������
FROM player
WHERE team_id = 'K08';

SELECT player_name ������, position ������,
    CASE
        WHEN position is NULL THEN '����'
        ELSE position
    END NL������
FROM player
WHERE team_id = 'K08';

SELECT ename �����, sal ����, comm Ŀ�̼�,
    (sal*12)+comm ����A,(sal*12)+NVL(comm,0) ����B
FROM emp;