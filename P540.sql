DROP TABLE product;
CREATE TABLE product(
            code NUMBER(5),
            name VARCHAR2(100),
            price NUMBER(8),
            pictureUrl VARCHAR2(50),
            description VARCHAR2(1000),
            PRIMARY KEY(code)
);

INSERT INTO product VALUES(product_seq.nextval, '������ ���� ����ִ� �����ͺ��̽�', 27000,'db.jpg','�����ͺ��̽��� ���� ��� ���� ���� ����ְ� ������ ����...');
INSERT INTO product VALUES(product_seq.nextval, '��ǥ���� ���� HTML5', 25000,'html5.jpg','HTML5 ���̵��. Ȩ������ ������ ���� �ʼ� ���� HTML �⺻ ����...');
INSERT INTO product VALUES(product_seq.nextval, 'Dynamic Programming book �ø���-01 ����Ŭ 11g + PL/SQL', 25000,'oracle.jpg','Dynamic �ǹ� ��Ī ���α׷��� Book�� ù��° å����, ����Ŭ 11g�� ���ο�...');
INSERT INTO product VALUES(product_seq.nextval, 'Visual C++ MFC ������ ���α׷���', 26000,'mfc.jpg','Visual C++�� ó�� �����ϴ� ���ڵ��� �����̿� ���� Visual C++...');
INSERT INTO product VALUES(product_seq.nextval, 'JQuer and JQuary Mobile : �����ϱ� ���� Ǯ�', 25000,'jquery.jpg','�ҽ� �ϳ��� ����ũž�� ����ϱ��� HTML5�� �Բ� ����Ѵ�. �ʺ��ڵ鵵 ...');

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