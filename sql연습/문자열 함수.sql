--
-- 문자열 함수
--

-- upper
select upper('seoul'), ucase('SeoUl')
	from dual;

-- lower
select lower('SEOUL'), lcase('SeoUl')
	from dual;
    
-- substring(문자열, 인덱스, 길이)
select substring('Hello World', 3, 2);

-- 예제1: 1989년 입사한 사원들의 이름, 입사일을 출력하세요.
select first_name, hire_date
	from employees
where substring(hire_date, 1, 4) = '1989';

-- lpad(오른쪽 정렬), rpad(왼쪽 정렬)
select lpad('1234', 10, '-'), rpad('1234', 10, '-');

-- 예제2: 직원들의 월급을 오른쪽 정렬(빈공간 *)
select lpad(salary, 10, '*')
	from salaries;