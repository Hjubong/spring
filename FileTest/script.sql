-- FileTest > script.sql

create table tblFile(
	seq number primary key,
    subject varchar2(500) not null,
    content varchar2(1000) not null,
    regdate date default sysdate not null
);