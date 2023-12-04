select * from tblAddress;

seq, name, age, gender, address, regdate

create table tblAddress (
    seq number primary key,
    name varchar2(50) not null,
    age number not null,
    gender char(1) not null,
    address varchar(1000) not null,
    regdate date default sysdate not null
);

create sequence seqAddress;

insert into tblAddress values (seqAddress.nextVal, '이연섭', 25, 'm', '서울시 구로구', default);
insert into tblAddress values (seqAddress.nextVal, '홍길동', 20, 'm', '천안시 직산읍', default);
insert into tblAddress values (seqAddress.nextVal, '아무개', 21, 'm', '천안시 두정동', default);
insert into tblAddress values (seqAddress.nextVal, '하하하', 22, 'f', '서울시 금천구', default);
insert into tblAddress values (seqAddress.nextVal, '호호호', 23, 'f', '서울시 영등포구', default);



select * from tblAddress;

commit;