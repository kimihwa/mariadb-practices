drop table member;

create table member(
	no int not null auto_increment,
    email varchar(200) not null,
    password varchar(64) not null,
    name varchar(100) not null,
    department varchar(100),
    primary key(no)
);

desc member;

alter table member add column juminbunho char(13) not null;
desc member;

alter table member drop column juminbunho;
desc member;

alter table member add column juminbunho char(13) not null after email;
desc member;

alter table member change column department dept varchar(100);
desc member;

alter table member add column self_intro text;
desc member;

alter table member drop column juminbunho;
desc member;

-- insert 
  insert
	into member
  values (null, 'rlaqu12@naver.com', password('123'), '김이화', '개발팀', null);
 
  insert
	into member(name, password, dept, email)
	values('김이화2', password('123'), '개발팀','rlaqu12@naver.com');
 
 -- update
 update member
	set email = 'rlaqu123@naver.com', password = password('5678')
  where no = 2;
  
  -- delete
  delete 
	from member
   where no=2;
   
  -- transaction
  select @@autocommit;
  set autocommit = 0;
  
   insert
	into member
  values (null, 'rlaqu12@naver.com', password('123'), '김이화', '개발팀', null);
  
  commit;
  
  -- select
  select *
	from member;
