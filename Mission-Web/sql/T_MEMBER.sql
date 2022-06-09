-- type : s(��������), u(�Ϲ�����)
DROP TABLE T_MEMBER;

CREATE TABLE T_MEMBER(
	ID 				VARCHAR2(20) PRIMARY KEY,
    NAME 			VARCHAR2(20) NOT NULL,
    PASSWORD 		VARCHAR2(20) NOT NULL,
    EMAIL_ID 		VARCHAR2(30),
    EMAIL_DOMAIN 	VARCHAR2(20),
    TEL1 			CHAR(3),
    TEL2 			CHAR(4),
    TEL3 			CHAR(4),
    POST 			CHAR(6),
    BASIC_ADDR 		VARCHAR2(200),
    DETAIL_ADDR 	VARCHAR2(200),
    TYPE            CHAR(1) default 'U',
    REG_DATE 		DATE default sysdate
);
SELECT * FROM T_MEMBER;

SELECT tel1||'-'||tel2||'-'||tel3 as tel FROM T_MEMBER;

insert into t_member
 values('myid','ȫ�浿','SECRET123','AAA','naver.com','010','1234','5678','12345','��⵵ �����','�����ش��� 1��','U',sysdate);
insert into t_member
 values('yourid','��浿','SECRET127','BBB','daum.net','010','5678','1324','12345','��⵵ �����','�����ش��� 3��','U',sysdate);
insert into t_member
 values('ourid','�ڱ浿','SECRET125','CCC','gmail.com','010','1111','1593','12345','��⵵ �����','�����ش��� 4��','U',sysdate);
insert into t_member
 values('kingid','ȫ�浿','SECRET789','ZZZ','naver.com','010','9999','8888','12345','��⵵ �����','�����ش��� 2��','M',sysdate);
 
commit;