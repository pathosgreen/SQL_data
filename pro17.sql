DROP TABLE t_board CASCADE CONSTRAINTS;

-- 게시판 테이블 생성
CREATE TABLE t_board(
    articleno NUMBER(10) PRIMARY KEY,
    parentno NUMBER(10) DEFAULT 0,
    title VARCHAR2(500) NOT NULL,
    content VARCHAR2(4000),
    imagefilename VARCHAR2(30),
    writedate DATE DEFAULT SYSDATE NOT NULL,
    id VARCHAR2(10),
    CONSTRAINT FK_ID FOREIGN KEY(id)
    REFERENCES t_member(id)
);
-- 테이블에 테스트 글 추가
INSERT INTO t_board(articleno,parentno,title,content,imagefilename,writedate,id)
VALUES (1,0,'테스트글입니다.','테스트글입니다.',null,SYSDATE,'hong');

INSERT INTO t_board(articleno,parentno,title,content,imagefilename,writedate,id)
VALUES (2,0,'안녕하세요.','상품 후기입니다.',null,SYSDATE,'hong');

INSERT INTO t_board(articleno,parentno,title,content,imagefilename,writedate,id)
VALUES (3,2,'답변입니다.','상품 후기에 대한 답변입니다.',null,SYSDATE,'hong');

INSERT INTO t_board(articleno,parentno,title,content,imagefilename,writedate,id)
VALUES (5,3,'답변입니다.','상품 좋습니다.',null,SYSDATE,'lee');

INSERT INTO t_board(articleno,parentno,title,content,imagefilename,writedate,id)
VALUES (4,0,'김유신입입니다.','김유신 테스트글입니다.',null,SYSDATE,'kim');

INSERT INTO t_board(articleno,parentno,title,content,imagefilename,writedate,id)
VALUES (6,2,'상품 후기입니다.','이순신씨의 상품 사용 후기를 올립니다!!',null,SYSDATE,'lee');

commit;
SELECT *
FROM t_board;
SELECT *
FROM t_member;
INSERT INTO t_member(id,pwd,name,email,joindate)
VALUES ('hong','1212','홍길동','hong@gmail.com',SYSDATE);
INSERT INTO t_member(id,pwd,name,email,joindate)
VALUES ('lee','1212','이순신','lee@test.com',SYSDATE);
INSERT INTO t_member(id,pwd,name,email,joindate)
VALUES ('kim','1212','김유신','kim@jweb.com',SYSDATE);
INSERT INTO t_member(id,pwd,name,email,joindate)
VALUES ('ki','1234','기성용','ki@test.com',SYSDATE);

select * from t_member order by joinDate desc;
