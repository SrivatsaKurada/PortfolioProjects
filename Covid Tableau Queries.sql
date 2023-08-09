---- Queries used for Tableau

--1.
select sum(new_cases) as total_cases,
	   sum(cast(new_deaths as float)) as total_deaths,
	   sum(cast(new_deaths as float)) / sum(new_cases) * 100 as DeathPercentage
from [Covid Project]..covid_deaths
where continent is not NULL
--group by date
order by 1,2

--2.
select location,
       sum(cast(new_deaths as int)) as TotalDeathCount
from [Covid Project]..covid_deaths
where continent is NULL
and location not in ('World','European Union','International')
group by location
order by TotalDeathCount desc

--3.
select location,
       population,
       max(total_cases) as HighestInfectionCount, 
	   max((total_cases / population)) * 100 as PopulationPercentage
from [Covid Project]..covid_deaths
group by location, population
order by PopulationPercentage desc

--4.
select location,
       population,
	   date,
       max(total_cases) as HighestInfectionCount, 
	   max((total_cases / population)) * 100 as PopulationPercentage
from [Covid Project]..covid_deaths
group by location, population, date
order by PopulationPercentage desc
