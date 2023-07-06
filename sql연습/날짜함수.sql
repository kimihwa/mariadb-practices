-- 날짜 함수

-- curdate(), current_date
select curdate(), current_date()
	from dual;
    
-- curtime(), current_time
select curtime(), current_time()
	from dual;
    
-- now() vs sysdate()
select now(), sysdate()
	from dual;
 
 -- 쿼리가 실행될 때 시간
select now(), sleep(2), now() from dual;
    
 -- 함수가 실행될 때 시간
 select sysdate(), sleep(2), sysdate() from dual;
 
 -- date_format
 select date_format(now(), '%Y년 %m월 %d일 %h시 %i분 %s초') 
	from dual;
    
select date_format(now(), '%d %b \'%y') 
	from dual;
    
-- period_diff
-- 포맷팅(YYMM, YYYYMM)
-- ex) 근무 개월
select emp_no,
       hire_date,
       period_diff(date_format(curdate(), '%y%m'), date_format(hire_date, '%y%m')) as month
from employees;
    
 -- date_add(-addate), date_sub(subdate)
 -- 시간을 date 타입의 컬럼이나 값에 type(year, month, day)의 표현식으로 더하거나 뺄 수 있다.
 -- ex) 각 사원의 근속 년 수가 5년이 되는 날에 휴가를 보내 준다면 각 사원의 근속 휴가 날짜는?
 select first_name,
		hire_date,
		date_add(hire_date, interval 5 year)
	from employees

-- cast
select '12345' + 10, cast('12345' as int) + 10
  from dual;
    
select date_format(cast('2023-07-06' as date), '%Y년 %m월 %d일')
	from dual;
    
select cast(cast(1-2 as unsigned) as signed) from dual; 
select cast(cast(1-2 as unsigned) as int) from dual;  
select cast(cast(1-2 as unsigned) as integer) from dual;
  
-- type
-- 문자: varchar(크기 가변), char(크기 고정), text, CLOB(Character Large OBject)
-- 정수: tyny int, medium int, int(signed, integer), unsigned, big int  
-- 실수: float, double
-- 시간: date, datetime
-- LOB: CLOB, BLOB(Binary Large OBject)

