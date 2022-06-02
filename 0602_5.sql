-- 합집합
SELECT department_id
FROM employees
UNION
SELECT department_id
FROM departments;
-- 합집합(중복포함)
SELECT department_id
FROM employees
UNION ALL
SELECT department_id
FROM departments;
-- 교집합
SELECT department_id
FROM employees
INTERSECT
SELECT department_id
FROM departments;
-- 차집합
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
-- 위의 코드와 동일한 결과가 출력됨
SELECT *
FROM employees A
WHERE a.salary = 17000;
--** 다중행
SELECT *
FROM employees A
WHERE a.salary IN (SELECT salary
                   FROM employees
                   WHERE last_name = 'Taylor');

SELECT *
FROM employees A
WHERE a.salary IN(SELECT MIN(salary) 적자급여
                  FROM employees
                  GROUP BY department_id
                  )
ORDER BY a.salary DESC;

SELECT *
FROM employees A
WHERE (a.job_id, a.salary) IN(SELECT job_id,MIN(salary) 그룹별급여
                           FROM employees
                           GROUP BY job_id
                           )
ORDER BY a.salary DESC;

SELECT *
FROM employees A,
                 (SELECT department_id
                  FROM departments
                  WHERE department_name ='IT') B -- B는 가상 뷰(인라인 뷰) 
WHERE a.department_id = b.department_id;
-- 삽입
INSERT INTO departments(department_id,department_name,manager_id,location_id)
VALUES(271,'Sample_Dept',200,1700);
-- 확인
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




