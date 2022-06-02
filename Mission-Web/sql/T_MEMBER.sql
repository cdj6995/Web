-- type : s(슈퍼유저), u(일반유저)
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

insert into t_member(id, name, password)
 values('AA','홍길동','123456');
insert into t_member(id, name, password)
 values('BB','박길동','123457');
insert into t_member(id, name, password)
 values('CC','고길동','123458');
 
commit;