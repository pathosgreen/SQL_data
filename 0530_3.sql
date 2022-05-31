SELECT *
FROM employees
ORDER BY commission_pct;
-- null���� �����ϴ� ��������� ��� ���
SELECT salary * commission_pct
FROM employees
ORDER BY commission_pct;

SELECT salary *NVL(commission_pct,1)
FROM employees
ORDER BY commission_pct;

SELECT first_name,last_name,department_id,
    salary �����޿�,
    DECODE(department_id,60,salary*1.1,salary) �����ȱ޿�,
    DECODE(department_id,60,'10% �λ�','���λ�') �λ󿩺�
FROM employees;

SELECT employee_id,first_name,last_name,salary,
    CASE
        WHEN salary >= 9000 THEN '�����޿�'
        WHEN salary BETWEEN 6000 AND 8999 THEN '�����޿�'
        ELSE '�����޿�'
    END AS �޿����
FROM employees
WHERE job_id = 'IT_PROG';

SELECT employee_id,
    salary,
    RANK() OVER(ORDER BY salary DESC) RANK_�޿�,
    DENSE_RANK() OVER(ORDER BY salary DESC) DENSE_RANK_�޿�,
    ROW_NUMBER() OVER(ORDER BY salary DESC) ROW_NUMBER_�޿�
FROM employees;

SELECT A.employee_id,
    A.department_id,
    B.department_name,
    salary,
    RANK() OVER(PARTITION BY A.department_id ORDER BY salary DESC) RANK_�޿�,
    DENSE_RANK() OVER(PARTITION BY A.department_id ORDER BY salary DESC) DENSE_RANK_�޿�,
    ROW_NUMBER() OVER(PARTITION BY A.department_id ORDER BY salary DESC) ROW_NUMBER_�޿�
FROM employees A,departments B
WHERE A.department_id=B.department_id
ORDER BY B.department_id,A.salary DESC;







