 --job_id��  AD ���� 3���� ã��
SELECT * 
FROM employees 
WHERE job_id LIKE 'AD___';

-- manager_id�� null�� ���� ������ ���
SELECT * 
FROM employees 
WHERE manager_id IS null;

-- salary�� 400�� �ʰ��ϸ鼭 job_id�� IT_PROG�� �� ��ȸ
SELECT * 
FROM employees 
WHERE salary >400
AND job_id = 'IT_PROG';

-- salary�� 400�� �ʰ��ϸ鼭 job_id�� IT_PROG �Ǵ� FI_ACCOUNT�� �� ��ȸ
SELECT * 
FROM employees 
WHERE salary >400
AND job_id = 'IT_PROG'
OR job_id = 'FI_ACCOUNT';

-- employee_id�� 105�� �ƴѰ��
SELECT * 
FROM employees 
WHERE employee_id <> 105;

-- manager_id�� null�� �ƴ� ���� ������ ���
SELECT * 
FROM employees 
WHERE manager_id IS NOT NULL;

-- last_name�� �ҹ���,�빮�ڸ� �Ἥ ����ϰ� email�� ù���ڸ� �빮�ڷ� ���
SELECT last_name,
    LOWER(last_name) LOWER����,
    UPPER(last_name) UPPER����,
    email,
    INITCAP(email) INITCAP����
FROM employees;

-- job_id���� �� �α��ڸ� ���
SELECT job_id, SUBSTR(job_id,1,2) ������ 
FROM employees;

-- job_id���� ACCOUNT�� ACCNT�� �ٲپ� ���
SELECT job_id, REPLACE(job_id,'ACCOUNT','ACCNT') ������ 
FROM employees;

-- first_name�� 12�ڸ��� ����ϵ� ���ڸ��� ���ʿ� *�� ä�� ���
SELECT first_name, LPAD(first_name,12,'*') ������
FROM employees;

SELECT 'start'||TRIM('   - space -   ')||'end' ���ŵȰ��� FROM Dual;

-- salar�� 30���� ������ �Ҽ��� 2,1�ڸ�,���� ù°�ڸ����� ����
SELECT salary,
    salary/30 �ϱ�,
    TRUNC(salary/30,1) ������0,
    TRUNC(salary/30,0) ������1,
    TRUNC(salary/30,-1) ������2
FROM employees;



