-- �� ���̺��� ������ Ȯ��
select * from emp,dept;
-- emp ���̺��� �����ȣ, �̸�, �ҼӺμ� ��ȣ ��ȸ
SELECT empno,ename,deptno FROM emp;
-- emp ���̺��� �μ� ��ȣ ������ Ȯ��
SELECT DISTINCT deptno FROM emp;
-- ����� ���� �� ���� ���
SELECT ename, sal, (sal*12) ������, comm FROM emp;
-- �޿� �������� �������� ����
SELECT * FROM emp ORDER BY sal DESC;

SELECT * FROM emp ORDER BY deptno DESC, sal;
-- emp ���̺��� ��ü ���� �μ���ȣ(��������)�� �޿�(��������)���� ����
SELECT ename,deptno,sal FROM emp ORDER BY deptno ASC, sal  DESC;
-- �μ� ��ȣ�� 30�� ������ ���
SELECT * FROM emp WHERE deptno = 30;
-- ��� ��ȣ�� 7900�� ������ ���
SELECT * FROM emp WHERE empno = 7900;
-- �μ���ȣ�� 30�̸鼭 job�� 'CLERK'�� ����
SELECT * FROM emp WHERE deptno = 30 AND job = 'CLERK';
-- �޿� ���� 12�� ���� ���� 36000�� �����鸸 ���
SELECT * FROM emp WHERE sal*12 = 36000;
-- ename�� F���� �۰ų� ���� ������ ���
SELECT * FROM emp WHERE ename <= 'FORD';
-- sal�� 3000�� �ƴ� ����
SELECT * FROM emp WHERE sal != 3000;
SELECT * FROM emp WHERE sal <> 3000;
SELECT * FROM emp WHERE sal ^= 3000;
SELECT * FROM emp WHERE NOT sal = 3000;
-- ���� �ڵ带 ª�� �ٿ��� ǥ��
SELECT * FROM emp WHERE job = 'MANAGER' OR job = 'SALESMAN' OR job = 'CLERK';

SELECT * FROM emp WHERE job IN('MANAGER','SALESMAN','CLERK');
-- ���� �ڵ带 ª�� �ٿ��� ǥ��
-- �޿� ���� 2000�̻�, 3000���� ��ȸ
SELECT * FROM emp WHERE sal >= 2000 AND sal <= 3000;

SELECT * FROM emp WHERE sal BETWEEN 2000 AND 3000;
-- ename�� S�� �����ϴ� �����͸� ���
SELECT * FROM emp WHERE ename LIKE 'S%';
-- ename�� �ι�° ���ڰ� L�� ����� ���
SELECT * FROM emp WHERE ename LIKE '_L%';
-- ��� �̸��� AM�� ���Ե� ��� �����͸� ���
SELECT * FROM emp WHERE ename LIKE '%AM%';
-- NULL�� ���� ���� �ذ�
SELECT * FROM emp WHERE comm = NULL;

SELECT * FROM emp WHERE comm IS NULL;
-- UNION(���տ�����)
-- UNION ALL - �ߺ�����
-- MINUS
-- INTERSECT
SELECT empno,ename,sal,deptno 
FROM emp 
WHERE deptno = 10
UNION
SELECT empno,ename,sal,deptno 
FROM emp 
WHERE deptno = 20;
-- ��� �̸��� �빮��,�ҹ���,ù���� �빮�ڷ� ���
SELECT ename, UPPER(ename), LOWER(ename), INITCAP(ename)
FROM emp;
-- ��� �̸��� SCOTT �ܾ ���Ե� ������ ���
SELECT * FROM emp WHERE ename  'SCOT';
SELECT * FROM emp WHERE ename IN 'SCOTT';
