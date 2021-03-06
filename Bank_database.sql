drop DATABASE BMS_DB1;
create DATABASE BMS_DB1;
use BMS_DB1;
show databases;
-- CUSTOMER_PERSONAL_INFO
CREATE TABLE CUSTOMER_PERSONAL_INFO
(
CUSTOMER_ID VARCHAR(5),
CUSTOMER_NAME VARCHAR(30),
DATE_OF_BIRTH DATE,
GUARDIAN_NAME VARCHAR(30),
ADDRESS VARCHAR(50),
CONTACT_NO BIGINT(10),
MAIL_ID VARCHAR(30),
GENDER CHAR(1),
MARITAL_STATUS VARCHAR(10),
IDENTIFICATION_DOC_TYPE VARCHAR(20),
ID_DOC_NO VARCHAR(20),
CITIZENSHIP VARCHAR (10),
CONSTRAINT CUST_PERS_INFO_PK PRIMARY KEY(CUSTOMER_ID)
);
show tables;
-- CUSTOMER_REFERENCE_INFO
CREATE TABLE CUSTOMER_REFERENCE_INFO
(
CUSTOMER_ID VARCHAR(5),
REFERENCE_ACC_NAME VARCHAR(20),
REFERENCE_ACC_NO BIGINT(16),
REFERENCE_ACC_ADDRESS VARCHAR(50),
RELATION VARCHAR(25),
CONSTRAINT CUST_REF_INFO_PK PRIMARY KEY(CUSTOMER_ID),
CONSTRAINT CUST_REF_INFO_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER_PERSONAL_INFO(CUSTOMER_ID)
);
-- BANK INFO
CREATE TABLE BANK_INFO
(
IFSC_CODE VARCHAR(15),
BANK_NAME VARCHAR(25),
BRANCH_NAME VARCHAR(25),
CONSTRAINT BANK_INFO_PK PRIMARY KEY(IFSC_CODE)
);
-- ACCOUNT_INFO
CREATE TABLE ACCOUNT_INFO
(
ACCOUNT_NO BIGINT(16),
CUSTOMER_ID VARCHAR(10),
REGISTRATION_DATE DATE,
ACTIVATION_DATE DATE,
IFSC_CODE VARCHAR(10),
INTEREST DECIMAL(7,2),
INITIAL_DEPOSIT BIGINT(10),
CONSTRAINT ACC_INFO_PK PRIMARY KEY(ACCOUNT_NO),
CONSTRAINT ACC_INFO_PERS_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER_REFERENCE_INFO(CUSTOMER_ID),
CONSTRAINT ACC_INFO_BANK_FK FOREIGN KEY(IFSC_CODE) REFERENCES BANK_INFO(IFSC_CODE)
);

-- BANK_INFO
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)VALUES('HDVL0012','HDFC','VALASARAVAKKAM');

INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)VALUES('SBIN0016362','SBI','AGARTALA');
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)VALUES('ICITN0232','ICICI','TNAGAR');
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)VALUES('ICIPG0242','ICICI','PERUNGUDI');
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)VALUES('SBISD0113','SBI','SAIDAPET');
select * FROM BANK_INFO;
-- CUSTOMER_PERSONAL_INFO
INSERT INTO CUSTOMER_REFERENCE_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID);
INSERT INTO CUSTOMER_REFERENCE_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID);
INSERT INTO CUSTOMER_REFERENCE_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID);
INSERT INTO CUSTOMER_REFERENCE_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID);
select * FROM CUSTOMER_PERSONAL_INFO;