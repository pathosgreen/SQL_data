SELECT mgr
FROM emp
WHERE ename = 'SCOTT';

SELECT mgr
FROM emp
WHERE ename = 'KING';

SELECT NVL(mgr,9999) AS mgr
FROM emp
WHERE ename = 'KING';

SELECT mgr
FROM emp
WHERE ename = 'JSC';

SELECT NVL(mgr,9999) AS mgr
FROM emp
WHERE ename = 'JSC';