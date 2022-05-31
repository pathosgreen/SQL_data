-- salary 행 수 확인
SELECT COUNT(salary) 행의수
FROM employees;
-- salary의 합계와 평균 확인 (avg 사용 X)
SELECT SUM(salary) 합계,
    AVG(salary) 평균,
    SUM(salary)/COUNT(salary) 계산된평균
FROM employees;
-- salary의 최대값,최소값 구하고 first_name도 같이 출력
SELECT MAX(salary) 최대값,MIN(salary) 최소값,
    MAX(first_name) 최대문자값,MIN(first_name) 최소문자값
FROM employees;
-- employee_id가 10 이상인 직원들을 job_id기준으로 그룹화하여 job_id별 총,평균급여를
SELECT job_id 직무, SUM(salary) 직무별_총급여, AVG(salary) 직무별_평균급여
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
ORDER BY 직무별_총급여 DESC, 직무별_평균급여;

SELECT job_id job_id_대그룹,manager_id manager_id_중그룹,
    SUM(salary) 그룹별_총급여, AVG(salary) 그룹별_평균급여
FROM employees
WHERE employee_id >= 10
GROUP BY job_id,manager_id
ORDER BY 그룹별_총급여 DESC, 그룹별_평균급여;

SELECT job_id 직무, SUM(salary) 직무별_총급여, AVG(salary) 직무별_평균급여
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
HAVING SUM(salary) >= 30000
ORDER BY 직무별_총급여 DESC, 직무별_평균급여;

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

SELECT COUNT(*) 조인된건수
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

