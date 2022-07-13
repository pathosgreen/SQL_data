
-- 선수명 정보를 칼럼 별명을 이용해 출력.
SELECT player_name AS 선수명, 
       position AS 위치,
       height AS 키,
       weight AS 몸무게
FROM player;

-- 선수명 정보를 칼럼 별명을 이용해 출력.(별명 중간에 공백 출력)
SELECT player_name AS "선수 명", 
       position AS 포지션,
       height AS 키,
       weight AS 몸무게
FROM player;

-- 선수들의 키에서 몸무게를 뺀 값 출력
SELECT player_name AS 선수명, 
       height - weight AS "키-몸무게"
FROM player;

-- 선수들의 키와 몸무게를 이용해 비만지수(BMI)출력
SELECT player_name AS 선수명, 
       ROUND(weight/((height/100)*(height/100)),2) AS BMI비만지수
FROM player;

-- 선수명 선수, 키 cm 몸무게 kg 형식으로 출력
SELECT player_name || ' 선수,'|| 
       height ||' cm,'||
       weight ||'kg' AS 체격정보
FROM player;