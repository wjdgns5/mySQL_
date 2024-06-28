
use world;

select *
from city;

select *
from country;

desc countrylanguage;

select *
from countrylanguage;
-- 문제 
-- c.Name, c.Continent, l.CountryCode

-- 문제 world db에서 country 테이블과 contrylanguage를 활용하여 'KOR'의 국가코드, 지역, 정부, 언어를 출력해라
use world; 

select l.CountryCode, c.Region, c.GovernmentForm, l.Language, l.IsOfficial
from `country` as c 
join `countrylanguage` as l 
on c.Code = l.CountryCode
where c.code in (select Code from country where Code = 'KOR') && l.IsOfficial in (select IsOfficial from countrylanguage where IsOfficial = 'T');

-- 독립 이력이 없는 나라 코드와 언어를 찾고 30개를 출력하라 
-- country 와 countrylanguage 테이블 사용
select distinct l.CountryCode, c.IndepYear,  l.Language
from country as c
left join countrylanguage as l
on c.Code = l.CountryCode
where c.IndepYear is null
limit 30;


