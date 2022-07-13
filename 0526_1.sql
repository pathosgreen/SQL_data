SELECT * FROM employees; -- employees의 모든 항목 출력

SELECT employee_id,email FROM employees; -- employees의 employee_id,email만 출력

SELECT employee_id,first_name,last_name -- employee_id,first_name,last_name 출력
FROM employees -- employees에서 출력
ORDER BY employee_id DESC; -- employee_id를 내림차순으로 정렬

SELECT DISTINCT job_id FROM employees; -- employees의 job_id를 중복 없이(DISTINCT) 출력

SELECT employee_id AS 사원번호,first_name AS 이름,last_name AS 성 From employees;
-- employees에서 employee_id,first_name,last_name를 사원번호,이름,성으로 출력

SELECT employee_id,first_name||last_name FROM employees;
-- employees에서 employee_id,first_name,last_name에서 first_name,last_name을 붙여서 출력

SELECT first_name||' '||last_name,email||'@company.com' FROM employees;
-- employees에서 first_name,last_name을 붙이되 공백을 넣어서 출력하고 email에 @company.com을 붙여서 출력

SELECT employee_id,salary,salary+500,salary-100,(salary*1.1)/2 FROM employees;

SELECT employee_id AS 사원번호,
       salary AS 급여,
       salary+500 AS 추가급여,
       salary-100 AS 인하급여,
       (salary*1.1)/2 AS 조정급여 
FROM employees;

SELECT * FROM employees WHERE employee_id = 100;

SELECT * FROM employees WHERE first_name = 'David';

SELECT * FROM employees WHERE employee_id >= 105;

SELECT * FROM employees WHERE salary BETWEEN 10000 AND 20000;

SELECT * FROM employees WHERE salary IN (10000,17000,24000);

SELECT * FROM employees WHERE job_id LIKE 'AD%';

