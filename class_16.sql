

-- 1 단계  LEFT JOIN(= LEFT OUTER JOIN)
select *
from tb_student as s
left join tb_grade as g
on s.grade = g.grade; -- tb_student의 grade 와 tb_grade의 grade 공통된 정보이다.

-- 2 단계
-- 접근하는 기준을 바꿔본다.
select *
from tb_grade as g -- 기준이 되는 테이블
left join tb_student as s -- 조인인 되는 테이블
on g.grade = s.grade; -- tb_grade의 grade 와 tb_student의 grade 공통된 정보이다.

desc tb_student;
-- ------------------------------------------------------

-- 1단계 RIGHT JOIN(= RIGHT OUTER JOIN)
select *
from tb_student as s -- 기준이 되는 테이블
right join tb_grade as g -- 조인인 되는 테이블
on s.grade = g.grade; -- tb_grade의 grade 와 tb_student의 grade 공통된 정보이다.

use mydb;
