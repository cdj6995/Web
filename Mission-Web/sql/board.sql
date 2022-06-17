
create table t_board(
    no      number(5)       primary key,
    title   varchar2(200)   not null,
    writer  varchar2(50)    not null,
    content varchar2(4000)  not null,
    view_cnt number(5)     default 0,
    reg_date date           default sysdate
);

create sequence seq_t_board_no;

alter sequence seq_t_board_no nocache;


select * from t_board;

insert into t_board(no, title, writer, content)
 values(seq_t_board_no.nextval, '제목입니다','홍길동','내용입니다.');
 
 insert into t_board(no, title, writer, content)
 values(seq_t_board_no.nextval, '제목입니다2','홍길동','내용입니다2');
 
 commit;
 
 
 -- 첨부파일 테이블
 create table t_board_file(
            no              number(10)   primary key,
            board_no        number(10) not null,
            file_ori_name   varchar2(100),
            file_save_name  varchar2(200),
            file_size       number(10) );
            
create sequence seq_t_board_file_no nocache;


select * from t_board;
select * from t_board_file;

commit;










