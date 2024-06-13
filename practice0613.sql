
select *
from city;

select *
from country;

select *
from countrylanguage;
-- 문제 
-- c.Name, c.Continent, l.CountryCode

-- 문제 
select l.CountryCode, c.Region, c.GovernmentForm
from country as c
join countrylanguage as l
on c.`Code` = l.CountryCode
group by `Code`
having Code in (select `Code` from country where `Code` = 'KOR');



-- where CountryCode in (select `Code` from country where `Code` = 'KOR');
