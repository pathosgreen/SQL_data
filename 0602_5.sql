-- ������
SELECT department_id
FROM employees
UNION
SELECT department_id
FROM departments;
-- ������(�ߺ�����)
SELECT department_id
FROM employees
UNION ALL
SELECT department_id
FROM departments;
-- ������
SELECT department_id
FROM employees
INTERSECT
SELECT department_id
FROM departments;
-- ������
SELECT department_id
FROM employees
MINUS
SELECT department_id
FROM departments;

SELECT *
FROM employees A
WHERE a.salary = (SELECT salary
                  FROM employees
                  WHERE last_name = 'De Haan');
-- ���� �ڵ�� ������ ����� ��µ�
SELECT *
FROM employees A
WHERE a.salary = 17000;
--** ������
SELECT *
FROM employees A
WHERE a.salary IN (SELECT salary
                   FROM employees
                   WHERE last_name = 'Taylor');

SELECT *
FROM employees A
WHERE a.salary IN(SELECT MIN(salary) ���ڱ޿�
                  FROM employees
                  GROUP BY department_id
                  )
ORDER BY a.salary DESC;

SELECT *
FROM employees A
WHERE (a.job_id, a.salary) IN(SELECT job_id,MIN(salary) �׷캰�޿�
                           FROM employees
                           GROUP BY job_id
                           )
ORDER BY a.salary DESC;

SELECT *
FROM employees A,
                 (SELECT department_id
                  FROM departments
                  WHERE department_name ='IT') B -- B�� ���� ��(�ζ��� ��) 
WHERE a.department_id = b.department_id;
-- ����
INSERT INTO departments(department_id,department_name,manager_id,location_id)
VALUES(271,'Sample_Dept',200,1700);
-- Ȯ��
SELECT *
FROM departments
ORDER BY department_id DESC;

INSERT INTO departments
VALUES(272,'Sample_Dept',200,1700);

COMMIT;

UPDATE departments SET manager_id = 201, location_id = 1800
WHERE department_name = 'Sample_Dept';

UPDATE departments SET 
    manager_id = (SELECT manager_id 
                  FROM departments 
                  WHERE department_id = 40), 
    location_id = (SELECT location_id
                  FROM departments 
                  WHERE department_id = 40)
WHERE department_name = 'Sample_Dept';




