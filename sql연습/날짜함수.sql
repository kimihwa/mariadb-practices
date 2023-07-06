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
-- ex) 근무 개월
select emp_no, hire_date 
	from employees;