DROP TABLE member;
CREATE TABLE member(
name varchar2(10),
userid varchar2(10),
pwd varchar2(10),
email varchar2(20),
phone varchar2(13),
admin NUMBER(1) DEFAULT 0, -- 0:����� 1: ������
PRIMARY key(userid)
);

INSERT INTO member VALUES('�̼ҹ�','somi','1234','gmd@naver.com','010-2362-5157',0);
INSERT INTO member VALUES('�ϻ��','sang12','1234','ha12@naver.com','010-5629-8888',1);
INSERT INTO member VALUES('������','light','1234','youn1004@naver.com','010-9999-8282',0);

commit;

SELECT
    *
FROM member;