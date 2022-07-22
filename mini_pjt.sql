
create table pjt_customer (
    id              varchar2(20)        primary key,
    name            varchar2(20)        not null,
    password        varchar2(20)        not null,
    gender          char(1)             not null,
    tel             char(11)            not null,
    email           varchar2(50)        not null,
    openbank        char(1)             default 'F',
    post            char(6),
    basic_addr      varchar2(200)       not null,
    detail_addr     varchar2(200)       not null,
    regdate         date                default to_char(sysdate, 'YYYY/MM/DD') );

DROP TABLE pjt_customer;
select * from pjt_customer;
select * from pjt_account;


create table pjt_board(
    no          number(5)       primary key,
    groupno       number(5)       not null,
    orderno        number(5)       default 0,
    parent       number(5)       default 0,
    title       varchar2(200)   not null,
    writer      varchar2(50)    not null,
    content     varchar2(4000)  not null,
    view_cnt    number(5)      default 0,
    regdate     date           default sysdate );

drop table pjt_board;
create sequence seq_pjt_board_no nocache;
create sequence seq_pjt_board_groupno nocache;
select * from pjt_board;


create table  pjt_account(
    accountno       char(13)        primary key,
    bank_code       char(4)         default '0003',
    id              varchar2(20)    not null,
    tel             char(11)        not null,
    type            varchar2(20)    not null,
    name            varchar2(50)    not null,
    password        char(4)         not null,
    balance         number(9)       default 10000 );
    
drop table pjt_account;
select * from pjt_account;

create table pjt_transfer_history (
    no              number(5)       primary key,        -- 번호
    accountno       varchar2(20)        not null,           -- 출금 계좌번호
    sendname        varchar2(30)     not null,           -- 보내는 사람 이름
    opponentacc     varchar2(16)    not null,           -- 입금 계좌번호
    -- opponentname    varchar2(30)     not null,           -- 받는 사람 이름
    amount          number(7)       not null,           -- 거래액
    sendbalance     number(9)       not null,           -- 출금 후 잔액
    -- receivebalance  number(9)       not null,           -- 입금 후 잔액
    regdate         char(8)         default to_char(sysdate, 'YY/MM/DD'),
    regtime         char(8)         default to_char(sysdate, 'HH24:MI:SS') );

drop table pjt_transfer_history;

create sequence seq_pjt_transfer_history_no nocache;
select * from pjt_transfer_history;


create table pjt_bank (
    bank_code       char(4)         primary key,
    bank_name       varchar2(15)    not null,
    establish       date            default sysdate );
    
drop table pjt_bank;

insert into pjt_bank(bank_code, bank_name) values('0001','J은행');
insert into pjt_bank(bank_code, bank_name) values('0002','써니은행');
insert into pjt_bank(bank_code, bank_name) values('0003','DJ Bank');
insert into pjt_bank(bank_code, bank_name) values('0004','MORE뱅크');
commit;
select * from pjt_bank;



---------------------------------------------------------------
-- db link
select * from all_db_links;
drop public database link D001;

CREATE PUBLIC DATABASE LINK D004 CONNECT TO scott IDENTIFIED BY "tiger" USING '(DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = 192.168.217.247)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = ORCL)
    )
  )';

select * from account@D004;

CREATE PUBLIC DATABASE LINK D002 CONNECT TO scott IDENTIFIED BY "tiger" USING '(DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = 192.168.217.250)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = ORCL)
    )
  )';

select * from account@D002;
select * from bank_customer@D002;

CREATE PUBLIC DATABASE LINK D001 CONNECT TO HANA IDENTIFIED BY "1234" USING '(DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = 192.168.217.232)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = ORCL)
    )
  )';

select * from jbank_account@D001;
select * from transferhistory@D001;

