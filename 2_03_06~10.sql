SELECT team_id ��ID,
       CAST(zip_code1 AS INT)+CAST(zip_code2 AS INT) �����ȣ��
FROM team;

SELECT SYSDATE
FROM Dual;

SELECT ename �����, hiredate �Ի�����, 
       EXTRACT(YEAR FROM hiredate) �Ի�⵵,
       EXTRACT(MONTH FROM hiredate) �Ի��,
       EXTRACT(DAY FROM hiredate) �Ի���
FROM emp;

SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD') ��¥,
       TO_CHAR(SYSDATE, 'YYYY.MON,DAY') ������
FROM DUAL;

SELECT ename, ROUND(sal/12) SAL_ROUND, CEIL(sal/12) SAL_CEIL
FROM emp;