SELECT MAX(mgr) AS MGR
FROM emp
WHERE ename = 'JSC';

SELECT NVL( MAX(mgr),9999) AS MGR
FROM emp
WHERE ename = 'JSC';

SELECT ename,empno,mgr,NULLIF(mgr,7698) NUIF
FROM emp;

SELECT ename, empno, mgr,
    CASE
        WHEN mgr = 7698 THEN NULL
        ELSE MGR
    END AS NUIF
FROM emp;

SELECT ename, comm, sal, COALESCE(comm,sal) COAL
FROM emp;

SELECT ename, comm, sal,
    CASE
        WHEN comm IS NOT NULL THEN comm
        ELSE (CASE
                  WHEN sal IS NOT NULL THEN sal
                  ELSE NULL
              END)
        END COAL
FROM emp;