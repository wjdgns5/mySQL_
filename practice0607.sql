

-- 1조
-- 문제 1 매니저들의 최고 급여를 추출하세요.
-- 문제 2 퇴사자와 재직자를 구분 하며 퇴사자의 경우 재지년수를 출력하세요(출력예시 = first_name, last_name, 근무상태(재직중 or 퇴사자경우 근무연수))

-- 강인한 2조
-- 문제 1 : 직원의 이름, 근무연수, 부서를 출력하시오.
-- 단 , 직원의 이름은 퍼스트네임, 라스트네임을 합쳐쳐서 표에 나타내고 근무연수는 35년 이상 직원의 직원들만 포함시키시오. 
-- 문제 2 부서 이름과 그 부서에 현재근무하는 직원에 정보를 출력 하세요 


-- 3조 
-- 문제 1 부서별 인원과 그 부서별 평균 급여를 출력하세요.
-- 문제 2 
-- salaries테이블의 salary(연봉)을 월급으로 나누고(환율1365)
-- dept_name, dept_no, emp_no, from_date,to_date 조회하시오(조인필요)
-- 단 (from,to _date)는 salary의 테이블, 월급은 1,000,000 이상부터 나머지는 테이블 관계 X

-- 4조
-- 1. 회사 CEO가 근속 20년이 넘은 직원들을 대상으로 14일의 안식 휴가와 감사패를 
--    지급하기로 결정했습니다. 해당하는 직원들의 근속 년수와 풀네임을(한 컬럼) 출력하시오.
-- 2. 재직 중인 사람의 이름과 년차수를 출력 하세요

-- 5조 
-- 문제 1  first_name의 두 번째 알파벳이 a인 직원의 평균연봉을 구하세요.
-- 문제 2 각 부서별 직원의 수와 평균 연봉을 구하세요.
-- 표시 예시(title, '직원수' ,avg)


-- 6조 
-- 1. 마케팅부 30년차 근로자들 중 연봉이 80000 이상이면 O 아니면 X로 표기하세요.
--    이름(first_name + last_name), 년차, 연봉, 체크(O,X) 로 표시
-- 2. 현재 근무중인 근로자들의 직급(title)별 평균연봉을 나타내세요
--    직급, 평균연봉(소수점 제외) 로 표시