--job_id의  AD 이후 3글자 찾기
SELECT * 
FROM employees 
WHERE job_id LIKE 'AD___';

-- manager_id가 null인 직원 정보를 출력
SELECT * 
FROM employees 
WHERE manager_id IS null;

-- salary가 400을 초과하면서 job_id가 IT_PROG인 값 조회
SELECT * 
FROM employees 
WHERE salary >400
AND job_id = 'IT_PROG';

-- salary가 400을 초과하면서 job_id가 IT_PROG 또는 FI_ACCOUNT인 값 조회
SELECT * 
FROM employees 
WHERE salary >400
AND job_id = 'IT_PROG'
OR job_id = 'FI_ACCOUNT';

-- employee_id가 105가 아닌경우
SELECT * 
FROM employees 
WHERE employee_id <> 105;

-- manager_id가 null이 아닌 직원 정보를 출력
SELECT * 
FROM employees 
WHERE manager_id IS NOT NULL;

-- last_name을 소문자,대문자만 써서 출력하고 email의 첫글자만 대문자로 출력
SELECT last_name,
    LOWER(last_name) LOWER적용,
    UPPER(last_name) UPPER적용,
    email,
    INITCAP(email) INITCAP적용
FROM employees;

-- job_id에서 앞 두글자만 출력
SELECT job_id, SUBSTR(job_id,1,2) 적용결과 
FROM employees;

-- job_id에서 ACCOUNT를 ACCNT로 바꾸어 출력
SELECT job_id, REPLACE(job_id,'ACCOUNT','ACCNT') 적용결과 
FROM employees;

-- first_name을 12자리로 출력하되 빈자리는 왼쪽에 *을 채워 출력
SELECT first_name, LPAD(first_name,12,'*') 적용결과
FROM employees;

SELECT 'start'||TRIM('   - space -   ')||'end' 제거된공백 FROM Dual;

-- salar를 30으로 나누고 소수점 2,1자리,정수 첫째자리에서 내림
SELECT salary,
    salary/30 일급,
    TRUNC(salary/30,1) 적용결과0,
    TRUNC(salary/30,0) 적용결과1,
    TRUNC(salary/30,-1) 적용결과2
FROM employees;



