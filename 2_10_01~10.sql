SELECT COUNT(*) 전체행수, COUNT(height) 키건수,
MAX(height) 최대키, MIN (height) 최소키, ROUND(AVG(height),2) 평균키
FROM player;

SELECT position 포지션, AVG(height) 평균키
FROM player;

SELECT position 포지션, AVG(height) 평균키
FROM player
GROUP BY 포지션;

SELECT position 포지션, COUNT(*) 인원수, COUNT(height) 키대상,
MAX (height) 최대키, MIN (height) 최소키, ROUND(AVG(height),2) 평균키
FROM player
GROUP BY position;

SELECT position 포지션, ROUND(AVG(height),2) 평균키
FROM player
WHERE AVG (height) >= 180
GROUP BY position;

SELECT position 포지션, ROUND(AVG(height),2) 평균키
FROM player
GROUP BY position
HAVING AVG (height) >= 180;

SELECT position 포지션, ROUND(AVG(height),2) 평균키
FROM player
HAVING AVG (height) >= 180
GROUP BY position;

SELECT team_id 팀ID, COUNT(*) 인원수
FROM player
WHERE team_id IN ('K09','K02')
GROUP BY team_id;

SELECT team_id 팀ID, COUNT(*) 인원수
FROM player
GROUP BY team_id
HAVING team_id IN ('K09','K02');

SELECT position 포지션, ROUND(AVG(height),2) 평균키
FROM player
GROUP BY position
HAVING MAX (height) >= 190;

SELECT ename 사원명, deptno 부서번호,
      EXTRACT(MONTH FROM hiredate) 입사월, sal 급여
FROM emp;