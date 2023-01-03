select country.continent,TRUNCATE(avg(city.population) ,0)
from country,city
where country.code = city.countrycode
group by country.continent