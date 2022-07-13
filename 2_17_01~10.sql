SELECT b.team_name 팀명, a.player_name 선수명, a.back_no 백넘버
FROM (SELECT *
      FROM player
      WHERE position = 'MF') a,
      team b
WHERE b.team_id = a.team_id
ORDER BY 선수명;

SELECT player_name 선수명, position 포지션
FROM (SELECT player_name, position, back_no, height
      FROM player
      WHERE height IS NOT NULL
      ORDER BY height DESC)
WHERE ROWNUM <= 5;

SELECT a.team_id 팀코드, b.team_name 팀명, ROUND(AVG(a.height),3) 평균키
FROM player a, team b
WHERE b.team_id = a.team_id
GROUP BY a.team_id, b.team_name
HAVING AVG(a.height) < (SELECT AVG(x.height)
                        FROM player x
                        WHERE x.team_id IN (SELECT team_id
                                            FROM team
                                            WHERE team_name = '삼성블루윙즈'));

SELECT player_name, position, back_no, team_id, team_name
FROM v_player_team
WHERE player_name LIKE '황%';

SELECT team_id 팀코드, player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE team_id = 'K02'
UNION
SELECT team_id 팀코드, player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE team_id = 'K07';

CREATE VIEW v_player_team AS
SELECT a.player_name, a.position, a.back_no, b.team_id, b.team_name
FROM player a, team b
WHERE b.team_id = a.team_id;

SELECT player_name, position, back_no, team_id, team_name
FROM v_player_team
WHERE player_name LIKE '황%';

SELECT team_id 팀코드, player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE team_id = 'K02'
UNION
SELECT team_id 팀코드, player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE position = 'GK';

SELECT team_id 팀코드, player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE team_id = 'K02'
UNION ALL
SELECT team_id 팀코드, player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE position = 'GK';

SELECT 팀코드,선수명,포지션,백넘버,키, COUNT(*) 중복수
FROM (SELECT team_id 팀코드, player_name 선수명, position 포지션, back_no 백넘버, height 키
      FROM player
      WHERE team_id = 'K02'
      UNION ALL
      SELECT team_id 팀코드, player_name 선수명, position 포지션, back_no 백넘버, height 키
      FROM player
      WHERE position = 'GK')
GROUP BY 팀코드,선수명,포지션,백넘버,키
HAVING COUNT (*) > 1;

SELECT 'P' 구분코드, position 포지션, ROUND(AVG(height),3) 평균키
FROM player
GROUP BY position
UNION ALL
SELECT 'T' 구분코드, team_id 팀명, ROUND(AVG(height),3) 평균키
FROM player
GROUP BY team_id
ORDER BY 1;

SELECT team_id 팀코드, player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE team_id = 'K02'
MINUS
SELECT team_id 팀코드, player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE position = 'MF'
ORDER BY 1,2,3,4,5;
