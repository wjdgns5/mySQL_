
use employees;
-- 문제 

select *
from dept_emp;

select *
from salaries;

select *
from departments;

-- 
select *
from dept_emp;

-- 문제 dept_emp테이블과 deaprtments테이블 사용해 각 부서별 dept_name에 속한 상위 부서를 3팀을 구하여라
use employees;

select e.dept_no, d.dept_no, d.dept_name, count(dept_name) as 부서인원수
from dept_emp as e
left join departments as d 
on e.dept_no = d.dept_notb_member
group by d.dept_name
order by count(dept_name) desc
limit 3;

-- 문제 
use world;

select *
from city;


-- city에서 Population이 10000000 이하인 나라를 내림차순으로 30개 출력
-- world database 사용
select *
from city
group by District
having (Population < 10000000)
order by Population desc
limit  30;

-- city에서 Population이 3000000 이상인 경우 '인구많음'으로 표시하고 2000000 이상인 경우 '인구보통'으로 표시 그 이하는 '인구적음'으로 출력해라
-- world db 사용
use world;

select *, case
when Population >= 3000000 then '많음'
when Population >= 2000000 then '보통'
else '적음'
end as '인구통계'
from city
group by District
having CountryCode = 'KOR'
order by Population desc;

-- 문제풀기

-- 1조
-- 문제 1
-- 가장 인원이 많은 부서의 매니저 이름을 출력하세요. db = employees
-- (정답 = first_name : Leon , last_name : DasSarma)
-- (퇴사한 매니저는 제외 && 퇴사 직원 제외)
-- (서브쿼리를 사용 안해도 가능)

use employees;

select *
from dept_emp;










