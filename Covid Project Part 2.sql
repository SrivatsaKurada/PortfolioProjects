-----------------------------------COVID Vaccinations------------------------
select * from 
[Covid Project]..covid_vaccinations

-------------------------------------------------------------------------------------------------------------
--Updating the NULL as text to Integer datatype

--total tests
update covid_vaccinations
set total_tests = cast(nullif(total_tests,'NULL') as int)
where total_tests = 'NULL'

--new tests
update covid_vaccinations
set new_tests = cast(nullif(new_tests,'NULL') as int)
where new_tests = 'NULL'

--total tests per thousand
update covid_vaccinations
set total_tests_per_thousand = cast(nullif(total_tests_per_thousand,'NULL') as int)
where total_tests_per_thousand = 'NULL'

--new tests per thousand
update covid_vaccinations
set new_tests_per_thousand = cast(nullif(new_tests_per_thousand,'NULL') as int)
where new_tests_per_thousand = 'NULL'

--new tests smoothed
update covid_vaccinations
set new_tests_smoothed = cast(nullif(new_tests_smoothed,'NULL') as int)
where new_tests_smoothed = 'NULL'

--new tests smoothed per thousand
update covid_vaccinations
set new_tests_smoothed_per_thousand = cast(nullif(new_tests_smoothed_per_thousand,'NULL') as int)
where new_tests_smoothed_per_thousand = 'NULL'

--positive rate
update covid_vaccinations
set positive_rate = cast(nullif(positive_rate,'NULL') as int)
where positive_rate = 'NULL'

--tests per case
update covid_vaccinations
set tests_per_case = cast(nullif(tests_per_case,'NULL') as int)
where tests_per_case = 'NULL'

--tests units
update covid_vaccinations
set tests_units = cast(nullif(tests_units,'NULL') as varchar(50))
where tests_units = 'NULL'

--total vaccinations
update covid_vaccinations
set total_vaccinations = cast(nullif(total_vaccinations,'NULL') as int)
where total_vaccinations = 'NULL'

--people vaccinationated
update covid_vaccinations
set people_vaccinated = cast(nullif(people_vaccinated,'NULL') as int)
where people_vaccinated = 'NULL'

--people fully vaccinations
update covid_vaccinations
set people_fully_vaccinated = cast(nullif(people_fully_vaccinated,'NULL') as int)
where people_fully_vaccinated = 'NULL'

--total boosters
update covid_vaccinations
set total_boosters = cast(nullif(total_boosters,'NULL') as int)
where total_boosters = 'NULL'

--new vaccinations
update covid_vaccinations
set new_vaccinations = cast(nullif(new_vaccinations,'NULL') as int)
where new_vaccinations = 'NULL'

--new vaccinations smoothed
update covid_vaccinations
set new_vaccinations_smoothed = cast(nullif(new_vaccinations_smoothed,'NULL') as int)
where new_vaccinations_smoothed = 'NULL'

--total vaccinations per hundred
update covid_vaccinations
set total_vaccinations_per_hundred = cast(nullif(total_vaccinations_per_hundred,'NULL') as int)
where total_vaccinations_per_hundred = 'NULL'

--people vaccinated per hundred
update covid_vaccinations
set people_vaccinated_per_hundred = cast(nullif(people_vaccinated_per_hundred,'NULL') as int)
where people_vaccinated_per_hundred = 'NULL'

--people fully vaccinated per hundred
update covid_vaccinations
set people_fully_vaccinated_per_hundred = cast(nullif(people_fully_vaccinated_per_hundred,'NULL') as int)
where people_fully_vaccinated_per_hundred = 'NULL'

--total boosters per hundred
update covid_vaccinations
set total_boosters_per_hundred = cast(nullif(total_boosters_per_hundred,'NULL') as int)
where total_boosters_per_hundred = 'NULL'

--new vaccinations smoothed
update covid_vaccinations
set new_vaccinations_smoothed_per_million = cast(nullif(new_vaccinations_smoothed_per_million,'NULL') as int)
where new_vaccinations_smoothed_per_million = 'NULL'

--new vaccinations smoothed
update covid_vaccinations
set new_people_vaccinated_smoothed = cast(nullif(new_people_vaccinated_smoothed,'NULL') as int)
where new_people_vaccinated_smoothed = 'NULL'

--new vaccinations smoothed per hundred
update covid_vaccinations
set new_people_vaccinated_smoothed_per_hundred = cast(nullif(new_people_vaccinated_smoothed_per_hundred,'NULL') as int)
where new_people_vaccinated_smoothed_per_hundred = 'NULL'

--stringency index
update covid_vaccinations
set stringency_index = cast(nullif(stringency_index,'NULL') as float)
where stringency_index = 'NULL'

--population density
update covid_vaccinations
set population_density = cast(nullif(population_density,'NULL') as float)
where population_density = 'NULL'

--population density
update covid_vaccinations
set median_age = cast(nullif(median_age,'NULL') as float)
where median_age = 'NULL'

--age above 65
update covid_vaccinations
set aged_65_older = cast(nullif(aged_65_older,'NULL') as float)
where aged_65_older = 'NULL'

--age above 70
update covid_vaccinations
set aged_70_older = cast(nullif(aged_70_older,'NULL') as float)
where aged_70_older = 'NULL'

--gdp per capita
update covid_vaccinations
set gdp_per_capita = cast(nullif(gdp_per_capita,'NULL') as float)
where gdp_per_capita = 'NULL'

--extreme poverty
update covid_vaccinations
set extreme_poverty = cast(nullif(extreme_poverty,'NULL') as int)
where extreme_poverty = 'NULL'

--cardiovasc death rate
update covid_vaccinations
set cardiovasc_death_rate = cast(nullif(cardiovasc_death_rate,'NULL') as int)
where cardiovasc_death_rate = 'NULL'

--diabetes prevalence
update covid_vaccinations
set diabetes_prevalence = cast(nullif(diabetes_prevalence,'NULL') as int)
where diabetes_prevalence = 'NULL'

--female smokers
update covid_vaccinations
set female_smokers = cast(nullif(female_smokers,'NULL') as int)
where female_smokers = 'NULL'

--male smokers
update covid_vaccinations
set male_smokers = cast(nullif(male_smokers,'NULL') as int)
where male_smokers = 'NULL'

--handwashing facilities
update covid_vaccinations
set handwashing_facilities = cast(nullif(handwashing_facilities,'NULL') as int)
where handwashing_facilities = 'NULL'

--hospital beds per thousand
update covid_vaccinations
set hospital_beds_per_thousand = cast(nullif(hospital_beds_per_thousand,'NULL') as int)
where hospital_beds_per_thousand = 'NULL'

--life expentancy
update covid_vaccinations
set life_expectancy = cast(nullif(life_expectancy,'NULL') as int)
where life_expectancy = 'NULL'

--human development index
update covid_vaccinations
set human_development_index = cast(nullif(human_development_index,'NULL') as int)
where human_development_index = 'NULL'

--excess mortality absolute
update covid_vaccinations
set excess_mortality_cumulative_absolute = cast(nullif(excess_mortality_cumulative_absolute,'NULL') as int)
where excess_mortality_cumulative_absolute = 'NULL'

--excess mortality cumulative
update covid_vaccinations
set excess_mortality_cumulative = cast(nullif(excess_mortality_cumulative,'NULL') as int)
where excess_mortality_cumulative = 'NULL'

--excess mortality 
update covid_vaccinations
set excess_mortality = cast(nullif(excess_mortality,'NULL') as int)
where excess_mortality = 'NULL'

--excess mortality cumulative per million
update covid_vaccinations
set excess_mortality_cumulative_per_million = cast(nullif(excess_mortality_cumulative_per_million,'NULL') as int)
where excess_mortality_cumulative_per_million = 'NULL'

-- Continent has NULL values. Lets correct this. 
update [Covid Project]..covid_vaccinations
set continent = cast(nullif(continent,'NULL') as varchar(50))
where continent = 'NULL'

-------------------------------------------------------------------------------------------------------------------------------------------
-- Updating datatypes to INT for columns requiring mathematical operations for data exploration

--total tests
alter table covid_vaccinations 
alter column total_tests float

--new tests
alter table covid_vaccinations 
alter column new_tests float

--total tests per thousand
alter table covid_vaccinations 
alter column total_tests_per_thousand float

--new tests per thousand
alter table covid_vaccinations 
alter column new_tests_per_thousand float

--new tests smoothed
alter table covid_vaccinations 
alter column new_tests_smoothed float

--new tests smoothed per thousand
alter table covid_vaccinations 
alter column new_tests_smoothed_per_thousand float

--positive rate
alter table covid_vaccinations 
alter column positive_rate float

--tests per case
alter table covid_vaccinations 
alter column tests_per_case float

--tests units
alter table covid_vaccinations 
alter column tests_units varchar(50)

--total vaccinations
alter table covid_vaccinations 
alter column total_vaccinations float

--people vaccinated
alter table covid_vaccinations 
alter column people_vaccinated float

--people fully vaccinated
alter table covid_vaccinations 
alter column people_fully_vaccinated float

--total boosters
alter table covid_vaccinations 
alter column total_boosters float

--new vaccinations
alter table covid_vaccinations 
alter column new_vaccinations float

--new vaccinations smoothed
alter table covid_vaccinations 
alter column new_vaccinations_smoothed float

--total vaccinations per hundred
alter table covid_vaccinations 
alter column total_vaccinations_per_hundred float

--people vaccinated per hundred
alter table covid_vaccinations 
alter column people_vaccinated_per_hundred float

--people fully vaccinated per hundred
alter table covid_vaccinations 
alter column people_fully_vaccinated_per_hundred float

--total boosters per hundred
alter table covid_vaccinations 
alter column total_boosters_per_hundred float

--new vaccinations smoothed
alter table covid_vaccinations 
alter column new_vaccinations_smoothed_per_million float

--new people vaccinated smoothed
alter table covid_vaccinations 
alter column new_people_vaccinated_smoothed float

--new people vaccinated smoothed per hundred
alter table covid_vaccinations 
alter column new_people_vaccinated_smoothed_per_hundred float

--stringency index
alter table covid_vaccinations 
alter column stringency_index float

--population density
alter table covid_vaccinations 
alter column population_density float

--median age
alter table covid_vaccinations 
alter column median_age float

--aged above 65
alter table covid_vaccinations 
alter column aged_65_older float

--age above 70
alter table covid_vaccinations 
alter column aged_70_older float

--gdp per capita
alter table covid_vaccinations 
alter column gdp_per_capita float

--extreme poverty
alter table covid_vaccinations 
alter column extreme_poverty float

--cardiovasc death rate
alter table covid_vaccinations 
alter column cardiovasc_death_rate float

--diabetes prevalence
alter table covid_vaccinations 
alter column diabetes_prevalence float

--female smokers
alter table covid_vaccinations 
alter column female_smokers float

--male smokers
alter table covid_vaccinations 
alter column male_smokers float

--handwashing facilities
alter table covid_vaccinations 
alter column handwashing_facilities float

--hospital beds per thousand
alter table covid_vaccinations 
alter column hospital_beds_per_thousand float

--life expentancy
alter table covid_vaccinations 
alter column life_expectancy float

--human development index
alter table covid_vaccinations 
alter column human_development_index float

--excess mortality absolute
alter table covid_vaccinations 
alter column excess_mortality_cumulative_absolute float

--excess mortality cumulative
alter table covid_vaccinations 
alter column excess_mortality_cumulative float

--excess mortality 
alter table covid_vaccinations 
alter column excess_mortality float

--excess mortality cumulative per million
alter table covid_vaccinations 
alter column excess_mortality_cumulative_per_million float
---------------------------------------------------------------------------------------------------------------------------------------------

-- Looking at Total Population vs Vaccinations
select dea.continent,
	   dea.location,
	   dea.date,
	   dea.population,
	   vac.new_vaccinations,
	   SUM(vac.new_vaccinations) OVER (PARTITION BY dea.location order by dea.location, dea.date) as rolling_people_vaccinated
from [Covid Project]..covid_deaths dea
join [Covid Project]..covid_vaccinations vac
	on dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not NULL
order by 2,3


--Using CTE

with PopvsVac (Continent, Location, Date, Population, NewVaccinations, RollingPeopleVaccinated) as
(
select dea.continent,
	   dea.location,
	   dea.date,
	   dea.population,
	   vac.new_vaccinations,
	   SUM(vac.new_vaccinations) OVER (PARTITION BY dea.location order by dea.location, dea.date) as rolling_people_vaccinated
from [Covid Project]..covid_deaths dea
join [Covid Project]..covid_vaccinations vac
	on dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not NULL
)
select *, (RollingPeopleVaccinated/Population)*100  as population_vaccinated_percentage
from PopvsVac

-- Used CTE for getting rolling numbers for every country to check vaccinations based on population.

-- TEMP TABLE
Drop table if exists #PercentPopulationVaccinated
create table #PercentPopulationVaccinated
(
Continent nvarchar(255),
Location nvarchar(255),
Date date,
Population numeric,
NewVaccinations numeric,
RollingPeopleVaccinated numeric
)
Insert into #PercentPopulationVaccinated
select dea.continent,
	   dea.location,
	   dea.date,
	   dea.population,
	   vac.new_vaccinations,
	   SUM(vac.new_vaccinations) OVER (PARTITION BY dea.location order by dea.location, dea.date) as rolling_people_vaccinated
from [Covid Project]..covid_deaths dea
join [Covid Project]..covid_vaccinations vac
	on dea.location = vac.location
	and dea.date = vac.date
--where dea.continent is not NULL
--order by 2,3

select *, (RollingPeopleVaccinated/Population)*100  as population_vaccinated_percentage
from #PercentPopulationVaccinated



--Creating View to store data for later visualizations

Use [Covid Project]
go
Create View PercentPopulationVaccinated as
select dea.continent,
	   dea.location,
	   dea.date,
	   dea.population,
	   vac.new_vaccinations,
	   SUM(vac.new_vaccinations) OVER (PARTITION BY dea.location order by dea.location, dea.date) as rolling_people_vaccinated
from [Covid Project]..covid_deaths dea
join [Covid Project]..covid_vaccinations vac
	on dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not NULL
--order by 2,3

Select * 
from PercentPopulationVaccinated
---------------- GLOBAL NUMBERS --------------------

--Lets check the number of people being tested daily in the year 2020.
select continent,
       location,
       date,
	   new_tests 
from [Covid Project]..covid_vaccinations
where continent is not NULL and year(date) = '2020' and new_tests is not NULL
order by 1,2

--Lets check the number of people being tested daily in the year 2021.
select continent,
       location,
       date,
	   new_tests 
from [Covid Project]..covid_vaccinations
where continent is not NULL and year(date) = '2021' and new_tests is not NULL
order by 1,2

--Lets check the number of people being tested daily in the year 2022.
select continent,
       location,
       date,
	   new_tests 
from [Covid Project]..covid_vaccinations
where continent is not NULL and year(date) = '2022' and new_tests is not NULL
order by 1,2

-- Lets check the total people vaccinations continent wise.
select location,
       sum(people_vaccinated) as PeopleVac
from [Covid Project]..covid_vaccinations
where continent is not NULL
group by location
order by location

--Lets check the total vaccinations globally.
select continent,
       sum(total_vaccinations) as TotVac
from [Covid Project]..covid_vaccinations
where continent is not NULL
group by continent

-- Lets check the people with ages above 60 and above inclusive.
select location,
       aged_65_older,
	   aged_70_older
from [Covid Project]..covid_vaccinations
where continent is not NULL
order by 1

-- Creating a view for this as it will help understand the share of the population through visualization.
use [Covid Project]
go
create view OlderPeopleShare as
select location,
       aged_65_older,
	   aged_70_older
from [Covid Project]..covid_vaccinations
where continent is not NULL
--order by 1

--Lets check sum of new vaccinations and total vaccinations globally everyday.
select date,
	   sum(cast(new_vaccinations as float)) as new_vac,
	   sum(cast(total_vaccinations as float)) as totalvac
from [Covid Project]..covid_vaccinations
where continent is not NULL 
group by date
order by 1

-- We can see from 2021 the total vaccinations skyrocketted everyday as the vaccinations were invented.

---------------UNITED STATES----------------

-- Checking all data for United States
select * 
from [Covid Project]..covid_vaccinations
where location = 'United States'

-- Date on which USA recorded highest vaccinations.
select top 1 date,
       total_vaccinations as highest_vaccinations
from [Covid Project]..covid_vaccinations
where location = 'United States'
order by highest_vaccinations desc

-- We can see as on 9th May 2023, US had a total of 676 million vaccinations. This includes people who are fully vaccinated and have taken booster shots as well. 
	   
--Creating View and CTE
--Population vs total vaccinations

with USAVac (Location, Date, Population, NewVaccinations, USAVaccinated) as
(
select dea.location,
	   dea.date,
	   dea.population,
	   vac.new_vaccinations,
	   SUM(vac.new_vaccinations) OVER (PARTITION BY dea.location order by dea.location, dea.date) as usa_vaccinated
from [Covid Project]..covid_deaths dea
join [Covid Project]..covid_vaccinations vac
	on dea.location = vac.location
	and dea.date = vac.date
where dea.location = 'United States' 
--order by 2,3
)

select *, (USAVaccinated/Population) * 100 as VaccinationPercentage
from USAVac

-- Based on the output we can see that US confirmed the entire population was vaccinated on 29th June 2021. 


drop view if exists PercentPeopleVaccinatedUSA
use [Covid Project]
go
CREATE VIEW PercentPeopleVaccinatedUSA as
select dea.location,
	   dea.date,
	   dea.population,
	   vac.new_vaccinations,
	   SUM(vac.new_vaccinations) OVER (PARTITION BY dea.location order by dea.location, dea.date) as usa_vaccinated
from [Covid Project]..covid_deaths dea
join [Covid Project]..covid_vaccinations vac
	on dea.location = vac.location
	and dea.date = vac.date
where dea.location = 'United States' 
--order by 2,3


