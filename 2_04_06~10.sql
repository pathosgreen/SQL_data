SELECT team_id 팀ID,to_number(zip_code1, 999)+ TO_NUMBER(zip_code2, '999') AS 우편번호함
FROM team;

SELECT ename,
       CASE
            WHEN sal > 2000 THEN sal
            ElSE 2000
       END AS revised_salary
FROM emp;

SELECT loc,
       CASE loc
            WHEN 'NEW YORK' THEN 'EAST'
            WHEN 'BOSTON' THEN 'EAST'
            WHEN 'CHICAGO' THEN 'CENTER'
            WHEN 'DALLAS' THEN 'CENTER'
            END AS AREA
FROM dept;

SELECT ename,
        CASE
            WHEN sal >= 3000 THEN 'HIGH'
            WHEN sal >= 1000 THEN 'MID'
            ELSE 'LOW'
        END AS salary_grade
FROM emp;

SELECT ename, sal,
        CASE
            WHEN SAL >= 2000 THEN 1000
            
            ELSE (CASE
                      WHEN sal >= 1000 THEN 500
                      ELSE 0
                 END)
            END AS BONUS
FROM emp;