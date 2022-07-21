-- MANAGER 테이블 생성하기
CREATE TABLE MANAGER(
	MANAGERID VARCHAR(50),
    MANAGERPW VARCHAR(16)
);
INSERT INTO MANAGER (MANAGERID, MANAGERPW)
VALUES('admin@shop.com', '111111');
SELECT * FROM MANAGER;
-------------------------------------------------------
-- BOOK 테이블 생성하기
CREATE TABLE BOOK(
	BOOK_ID NUMBER(10),
    BOOK_KIND VARCHAR2(3),
    BOOK_TITLE VARCHAR2(100),
    BOOK_PRICE NUMBER(10),
    BOOK_COUNT NUMBER(10),
    AUTHOR VARCHAR2(40),
    PUBLISHING_COM VARCHAR2(30),
    PUBLISHING_DATE VARCHAR2(15),
    BOOK_IMAGE VARCHAR2(16),			-- DEFAULT 'NOTHING.JPG'
    BOOK_CONTENT VARCHAR2(500),
    DISCOUNT_RATE NUMBER(10),				-- DEFAULT 10
    REG_DATE VARCHAR2(50)
);
INSERT INTO BOOK VALUES(1, '100', '나미야 잡화점의 기적', 15000, 100, '히가시노 게이고', '현대문학', '2019-01-11', '01.jpg', '일본을 대표하는 소설가 히가시노 게이고의 신작', 10, SYSDATE);
INSERT INTO BOOK VALUES(2, '100', '연필로 쓰기', 18000, 80, '김훈', '문학동네', '2018-02-14', '02.jpg', '70대의 김훈이 연필로 꾹꾹 눌러쓴 산문의 진경', 5, SYSDATE);
INSERT INTO BOOK VALUES(3, '100', '인간 실격', 20000, 50, '다자이 오사무', '민음사', '2016-11-20', '03.jpg', '2019 상반기 종합 베스트셀러', 15, SYSDATE);
INSERT INTO BOOK VALUES(4, '100', '기묘한 신혼여행', 12000, 30, '정태원', '문학의 문학', '2017-04-20', '04.jpg', '13편의 추리문학 걸작선', 20, SYSDATE);
INSERT INTO BOOK VALUES(5, '200', '외국어 공부의 감각', 15000, 100, '아키야마 요헤이', '월북', '2011-03-11', '05.jpg', '나는 어떻게 10개 국어를 말하게 되었나?', 25, SYSDATE);
INSERT INTO BOOK VALUES(6, '200', 'EBS 수능완성 고등 제2외국어', 28000, 200, 'EBS 편집부', 'EBS교육방송', '2014-08-14', '06.jpg', '2014 학년도 수능 연계교재', 10, SYSDATE);
INSERT INTO BOOK VALUES(7, '200', '외국어 전파담', 23000, 70, '로버트 파우저', '혜화', '2012-10-03', '07.jpg', '외국어는 어디에서 어디로', 10, SYSDATE);
INSERT INTO BOOK VALUES(8, '200', '아무튼,외국어', 22000, 50, '조지영', '위고', '2019-04-20', '08.jpg', '모든 나라에는 철수와 영희가 있다', 10, SYSDATE);
INSERT INTO BOOK VALUES(9, '300', '컴퓨터 비전과 딥러닝', 35000, 700, '라쟈링가파 샨무갸마니', '에이콘', '2018-02-18', '09.jpg', '텐서플로와 케라스를 사용한 전문 가이드', 5, SYSDATE);
INSERT INTO BOOK VALUES(10, '300', '쉽게 배우는 데이터 통신', 19000, 100, '박기현', '한빛아카데미', '2015-03-10', '10.jpg', '데이터 통신과 컴퓨터 네트워크', 10, SYSDATE);
INSERT INTO BOOK VALUES(11, '300', '컴퓨터활용능력', 38000, 200, '이주희', '배움', '2012-09-24', '11.jpg', '컴퓨터 자격증', 20, SYSDATE);
INSERT INTO BOOK VALUES(12, '300', '초등학생이 알아야할 숫자', 22000, 0, '엘리스 제임스', '어스본코리아', '2013-06-12', '12.jpg', '컴퓨터와 코디 100가지', 10, SYSDATE);
SELECT * FROM BOOK;

-------------------------------------------------------
-- bank 테이블 생성하기
CREATE TABLE BANK(
	ACCOUNT VARCHAR2(30),
    BANK VARCHAR2(20),
    NAME VARCHAR2(20)
);
INSERT INTO BANK (account, bank, name) VALUES('11111-111-11111', '우리은행', '(주)코리아');
INSERT INTO BANK (account, bank, name) VALUES('22222-222-22222', '신한은행', '(주)코리아');
SELECT * FROM BANK;
-------------------------------------------------------
-- CART 테이블 생성하기
CREATE TABLE CART(
	CART_ID NUMBER(10) NOT NULL PRIMARY KEY,
    BUYER VARCHAR2(50),
    BOOK_ID NUMBER(10),
    BOOK_TITLE VARCHAR2(100),
    BUY_PRICE NUMBER(10),
    BUY_COUNT NUMBER(10),
    BOOK_IMAGE VARCHAR2(16)			-- DEFAULT 'NOTHING.JPG'
);

CREATE SEQUENCE CART_seq START WITH 1 INCREMENT BY 1;


SELECT * FROM CART;
-------------------------------------------------------
-- BUY 테이블 생성하기
CREATE TABLE BUY(
	BUY_ID NUMBER(19) ,
    BUYER VARCHAR2(50),
    BOOK_ID VARCHAR2(12),
    BOOK_TITLE VARCHAR2(100),
    BUY_PRICE NUMBER(10),
    BUY_COUNT NUMBER(10),
    BOOK_IMAGE VARCHAR2(16),				-- DEFAULT 'NOTHING.JPG'
    BUY_DATE DATE,
    ACCOUNT VARCHAR2(50),
    DELIVERYNAME VARCHAR2(10),
    DELIVERYTEL VARCHAR2(20),
    DELIVERYADRESS VARCHAR2(10),
    SANCTION VARCHAR2(10)			-- DEFAULT '상품준비중'
);
SELECT * FROM BUY;
-------------------------------------------------------

-- MEMBER 테이블 생성하기
CREATE TABLE MEMBER(
	ID VARCHAR2(20),
    PASSWD VARCHAR2(16),
    NAME VARCHAR2(20),
    REG_DATE VARCHAR2(50),
    ADDRESS VARCHAR2(100),
    TEL VARCHAR2(20)
);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO MEMBER
VALUES('qwer@shop.com', '1111', '홍길동', systimestamp, '경기도 구리시 교문동 아차산로', '010-3034-2291');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
SELECT * FROM MEMBER;
---------------------

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE QNA(
	QNA_ID NUMBER(10) NOT NULL PRIMARY KEY,
    BOOK_ID NUMBER(10),
    BOOK_TITLE VARCHAR2(40),
    QNA_WRITER VARCHAR2(20),
    QNA_CONTENT VARCHAR2(500),
    GROUP_ID NUMBER(10),
    QORA NUMBER(10),
    REPLY NUMBER(10),
    REG_DATE TIMESTAMP(0)
);
SELECT * FROM qna;
-- Generate ID using sequence and trigger
CREATE SEQUENCE QNA_seq START WITH 1 INCREMENT BY 1;

commit;
