DROP TABLE cust_account;

CREATE TABLE cust_account(
    accountNo VARCHAR2(20) PRIMARY KEY,
    custName VARCHAR2(50),
    balance NUMBER(20,4)
);

INSERT INTO cust_account(accountNo,custName,balance)
VALUES('70-490-930','홍길동','10000000');
INSERT INTO cust_account(accountNo,custName,balance)
VALUES('70-490-911','김유신','10000000');

commit;

SELECT * FROM cust_account;