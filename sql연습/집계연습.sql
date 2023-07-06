-- 
-- 1) 집계(통계) 쿼리
-- select 절에 그룹(통계, 집계)함수가 projection 된 쿼리alter
-- 그룹함수: avg, max, min, count, sum, variance, stddev
--

-- 2) select 절에 그룹함수가 있는 경우, 어떤 컬럼도 select 절에 올 수 없다!!!
-- 오류!!!
-- emp_no는 아무 의미가 없다
select emp_no, sum(salary)
	from salaries;