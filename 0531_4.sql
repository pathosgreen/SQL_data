-- salary �� �� Ȯ��
SELECT COUNT(salary) ���Ǽ�
FROM employees;
-- salary�� �հ�� ��� Ȯ�� (avg ��� X)
SELECT SUM(salary) �հ�,
    AVG(salary) ���,
    SUM(salary)/COUNT(salary) �������
FROM employees;
-- salary�� �ִ밪,�ּҰ� ���ϰ� first_name�� ���� ���
SELECT MAX(salary) �ִ밪,MIN(salary) �ּҰ�,
    MAX(first_name) �ִ빮�ڰ�,MIN(first_name) �ּҹ��ڰ�
FROM employees;
-- employee_id�� 10 �̻��� �������� job_id�������� �׷�ȭ�Ͽ� job_id�� ��,��ձ޿���
SELECT job_id ����, SUM(salary) ������_�ѱ޿�, AVG(salary) ������_��ձ޿�
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
ORDER BY ������_�ѱ޿� DESC, ������_��ձ޿�;

SELECT job_id job_id_��׷�,manager_id manager_id_�߱׷�,
    SUM(salary) �׷캰_�ѱ޿�, AVG(salary) �׷캰_��ձ޿�
FROM employees
WHERE employee_id >= 10
GROUP BY job_id,manager_id
ORDER BY �׷캰_�ѱ޿� DESC, �׷캰_��ձ޿�;

SELECT job_id ����, SUM(salary) ������_�ѱ޿�, AVG(salary) ������_��ձ޿�
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
HAVING SUM(salary) >= 30000
ORDER BY ������_�ѱ޿� DESC, ������_��ձ޿�;

SELECT a.first_name, a.last_name, b.*
FROM employees A, job_history B
WHERE A.employee_id = b.employee_id
AND A.employee_id = 101;

SELECT *
FROM employees A, departments B
WHERE a.department_id = b.department_id;

SELECT a.employee_id,a.department_id,b.department_name,c.city
FROM employees A, departments B,locations C
WHERE a.department_id = b.department_id
AND b.location_id = c.location_id;

SELECT COUNT(*) ���εȰǼ�
FROM employees A, departments B
WHERE a.department_id = b.department_id;

SELECT a.department_id,a.first_name,a.last_name,b.department_id,b.department_name
FROM employees A, departments B
WHERE a.department_id = b.department_id(+)
ORDER BY a.employee_id;

SELECT a.employee_id,a.first_name,a.last_name,a.manager_id,
    b.first_name||' '||b.last_name manager_name
FROM employees A, employees B
WHERE a.manager_id = b.manager_id
ORDER BY a.employee_id;

