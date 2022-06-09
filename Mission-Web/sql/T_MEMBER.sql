-- type : s(슈퍼유저), u(일반유저)
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
 values('myid','홍길동','SECRET123','AAA','naver.com','010','1234','5678','12345','경기도 광명시','폴리텍대학 1층','U',sysdate);
insert into t_member
 values('yourid','김길동','SECRET127','BBB','daum.net','010','5678','1324','12345','경기도 광명시','폴리텍대학 3층','U',sysdate);
insert into t_member
 values('ourid','박길동','SECRET125','CCC','gmail.com','010','1111','1593','12345','경기도 광명시','폴리텍대학 4층','U',sysdate);
insert into t_member
 values('kingid','홍길동','SECRET789','ZZZ','naver.com','010','9999','8888','12345','경기도 광명시','폴리텍대학 2층','M',sysdate);
 
commit;