SELECT job,deptno,sal
FROM t1
UNPIVOT INCLUDE NULLS (sal FOR deptno IN (D10_SAL AS 10,D20_SAL AS 20))
ORDER BY 1,2;

SELECT *
FROM t1
UNPIVOT ((sal,cnt) FOR deptno IN ((D10_SAL,D10_CNT) AS 10,(D20_SAL,D20_CNT)AS 20))
ORDER BY 1,2;


SELECT *
FROM t1
UNPIVOT ((sal,cnt) FOR (deptno,dname) IN ((D10_SAL,D10_CNT) AS (10,'ACCOUNTING'),(D20_SAL,D20_CNT)AS (20,'RESEARCH')))
ORDER BY 1,2;

SELECT a.job,
       CASE b.lv WHEN 1 THEN 10        WHEN 2 THEN 20        END AS deptno,
       CASE b.lv WHEN 1 THEN a.D10_SAL WHEN 2 THEN a.D20_SAL END AS sal,
       CASE b.lv WHEN 1 THEN a.D10_CNT WHEN 2 THEN a.D20_CNT END AS cnt
FROM t1 a,(SELECT level AS lv FROM DUAL CONNECT BY level <=2) b
ORDER BY 1,2;

SELECT a.job, b.lv, a.D10_SAL, a.D20_SAL, a.D10_CNT, a.D20_CNT
FROM t1 a,(SELECT level AS lv FROM DUAL CONNECT BY level <=2) b
ORDER BY 1,2;

SELECT regexp_substr('aab', 'a.b') C1,
       regexp_substr('abb', 'a.b') C2,
       regexp_substr('acb', 'a.b') C3,
       regexp_substr('adc', 'a.b') C4
FROM DUAL;

SELECT regexp_substr('a', 'a|b') C1,
       regexp_substr('b', 'a|b') C2,
       regexp_substr('c', 'a|b') C3,
       regexp_substr('ab', 'ab|cd') C4,
       regexp_substr('cd', 'ab|cd') C5,
       regexp_substr('bc', 'ab|cd') C6,
       regexp_substr('aa', 'a|aa') C7,
       regexp_substr('aa', 'aa|a') C8
FROM DUAL;

SELECT regexp_substr('a|b', 'a|b') C1,
       regexp_substr('a|b', 'a\|b') C2
FROM DUAL;

SELECT regexp_substr('ab' || CHR(10) || 'cd', '^.',1,1) C1,
       regexp_substr('ab' || CHR(10) || 'cd', '^.',1,2) C2,
       regexp_substr('ab' || CHR(10) || 'cd', '.$',1,1) C3,
       regexp_substr('ab' || CHR(10) || 'cd', '.$',1,2) C4
FROM DUAL;

SELECT regexp_substr('ac', 'ab?c') C1,
       regexp_substr('abc', 'ab?c') C2,
       regexp_substr('abbc', 'ab?c') C3,
       regexp_substr('ac', 'ab*c') C4,
       regexp_substr('abc', 'ab*c') C5,
       regexp_substr('abbc', 'ab*c') C6,
       regexp_substr('ac', 'ab+c') C7,
       regexp_substr('abc', 'ab+c') C8,
       regexp_substr('abbc', 'ab+c') C9
FROM DUAL;