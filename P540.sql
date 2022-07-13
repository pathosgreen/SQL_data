DROP TABLE product;
CREATE TABLE product(
            code NUMBER(5),
            name VARCHAR2(100),
            price NUMBER(8),
            pictureUrl VARCHAR2(50),
            description VARCHAR2(1000),
            PRIMARY KEY(code)
);

INSERT INTO product VALUES(product_seq.nextval, '개념을 콕콕 잡아주는 데이터베이스', 27000,'db.jpg','데이터베이스에 관한 모든 것을 쉽고 재미있게 정리한 교재...');
INSERT INTO product VALUES(product_seq.nextval, '웹표준을 위한 HTML5', 25000,'html5.jpg','HTML5 가이드북. 홈페이지 제작을 위한 필수 선택 HTML 기본 문법...');
INSERT INTO product VALUES(product_seq.nextval, 'Dynamic Programming book 시리즈-01 오라클 11g + PL/SQL', 25000,'oracle.jpg','Dynamic 실무 코칭 프로그래밍 Book의 첫번째 책으로, 오라클 11g의 새로운...');
INSERT INTO product VALUES(product_seq.nextval, 'Visual C++ MFC 윈도우 프로그래밍', 26000,'mfc.jpg','Visual C++을 처음 시작하는 독자들의 눈높이에 맞춘 Visual C++...');
INSERT INTO product VALUES(product_seq.nextval, 'JQuer and JQuary Mobile : 이해하기 쉽게 풀어쓴', 25000,'jquery.jpg','소스 하나로 데스크탑과 모바일까지 HTML5와 함께 사용한다. 초보자들도 ...');

commit;

SELECT
    *
FROM product;
DROP SEQUENCE product_seq;
CREATE SEQUENCE product_seq;
ALTER SEQUENCE product_seq INCREMENT BY -1;
SELECT product_seq .NEXTVAL FROM DUAL;
ALTER SEQUENCE product_seq INCREMENT BY 1;
SELECT product_seq.CURRVAL FROM dual;