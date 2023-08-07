select *
from [Covid Project]..covid_deaths
order by 3,4

--select *
--from [Covid Project]..covid_vaccinations
--order by 3,4
-------------------------------------------------------------------------------------------------------------
--Updating the NULL as text to Integer datatype

--total cases
update covid_deaths
set total_cases = cast(nullif(total_cases,'NULL') as int)
where total_cases = 'NULL'

--new cases
update covid_deaths
set new_cases = cast(nullif(new_cases,'NULL') as int)
where new_cases = 'NULL'

--new cases smoothed
update covid_deaths
set new_cases_smoothed = cast(nullif(new_cases_smoothed,'NULL') as int)
where new_cases_smoothed = 'NULL'

--total deaths
update covid_deaths
set total_deaths = cast(nullif(total_deaths,'NULL') as int)
where total_deaths = 'NULL'

--new deaths
update covid_deaths
set new_deaths = cast(nullif(new_deaths,'NULL') as int)
where new_deaths = 'NULL'

--new deaths smoothed
update covid_deaths
set new_deaths_smoothed = cast(nullif(new_deaths_smoothed,'NULL') as int)
where new_deaths_smoothed = 'NULL'

--total cases per million
update covid_deaths
set total_cases_per_million = cast(nullif(total_cases_per_million,'NULL') as int)
where total_cases_per_million = 'NULL'

--new cases per million
update covid_deaths
set new_cases_per_million = cast(nullif(new_cases_per_million,'NULL') as int)
where new_cases_per_million = 'NULL'

--new cases smoothed per million
update covid_deaths
set new_cases_smoothed_per_million = cast(nullif(new_cases_smoothed_per_million,'NULL') as int)
where new_cases_smoothed_per_million = 'NULL'

--total deaths per million
update covid_deaths
set total_deaths_per_million = cast(nullif(total_deaths_per_million,'NULL') as int)
where total_deaths_per_million = 'NULL'

--new deaths per million
update covid_deaths
set new_deaths_per_million = cast(nullif(new_deaths_per_million,'NULL') as int)
where new_deaths_per_million = 'NULL'

--new deaths smoothed per million
update covid_deaths
set new_deaths_smoothed_per_million = cast(nullif(new_deaths_smoothed_per_million,'NULL') as int)
where new_deaths_smoothed_per_million = 'NULL'

-- reproduction rate
update covid_deaths
set reproduction_rate = cast(nullif(reproduction_rate,'NULL') as int)
where reproduction_rate = 'NULL'

-- icu patients
update covid_deaths
set icu_patients = cast(nullif(icu_patients,'NULL') as int)
where icu_patients = 'NULL'

-- icu patients per million
update covid_deaths
set icu_patients_per_million = cast(nullif(icu_patients_per_million,'NULL') as int)
where icu_patients_per_million = 'NULL'

-- hosp patients
update covid_deaths
set hosp_patients = cast(nullif(hosp_patients,'NULL') as int)
where hosp_patients = 'NULL'

-- hosp patients per million
update covid_deaths
set hosp_patients_per_million = cast(nullif(hosp_patients_per_million,'NULL') as int)
where hosp_patients_per_million = 'NULL'

-- weekly icu admissions
update covid_deaths
set weekly_icu_admissions = cast(nullif(weekly_icu_admissions,'NULL') as int)
where weekly_icu_admissions = 'NULL'

-- weekly icu admissions per million
update covid_deaths
set weekly_icu_admissions_per_million = cast(nullif(weekly_icu_admissions_per_million,'NULL') as int)
where weekly_icu_admissions_per_million = 'NULL'

-- weekly hospital admissions
update covid_deaths
set weekly_hosp_admissions = cast(nullif(weekly_hosp_admissions,'NULL') as int)
where weekly_hosp_admissions = 'NULL'

-- weekly hospital admissions per million
update covid_deaths
set weekly_hosp_admissions_per_million = cast(nullif(weekly_hosp_admissions_per_million,'NULL') as int)
where weekly_hosp_admissions_per_million = 'NULL'

-------------------------------------------------------------------------------------------------------------------------------------------
-- Updating datatypes to INT for columns other than the first three. This is for using mathematical operations for data exploration
--total deaths
alter table covid_deaths 
alter column total_deaths float

--new cases
alter table covid_deaths 
alter column new_cases float

--new cases smoothed
alter table covid_deaths 
alter column new_cases_smoothed float

--total cases
alter table covid_deaths 
alter column total_cases float

--new deaths
alter table covid_deaths 
alter column new_deaths float

--new deaths smoothed
alter table covid_deaths 
alter column new_deaths_smoothed float

--total cases per million
alter table covid_deaths 
alter column total_cases_per_million float

--new cases per million
alter table covid_deaths 
alter column new_cases_per_million float

--new cases smoothed per million
alter table covid_deaths 
alter column new_cases_smoothed_per_million float

--total deaths per million
alter table covid_deaths 
alter column total_deaths_per_million float

--new deaths per million
alter table covid_deaths 
alter column new_deaths_per_million float

--new deaths smoothed per million
alter table covid_deaths 
alter column new_deaths_smoothed_per_million float

-- reproduction rate
alter table covid_deaths 
alter column reproduction_rate float

-- icu patients
alter table covid_deaths 
alter column icu_patients int

-- icu patients per million
alter table covid_deaths 
alter column icu_patients_per_million float

-- hosp patients
alter table covid_deaths 
alter column hosp_patients int

-- hosp patients per million
alter table covid_deaths 
alter column hosp_patients_per_million float

-- weekly icu admissions
alter table covid_deaths 
alter column weekly_icu_admissions int

-- weekly icu admissions per million
alter table covid_deaths 
alter column weekly_icu_admissions_per_million float

-- weekly hospital admissions
alter table covid_deaths 
alter column weekly_hosp_admissions int

-- weekly hospital admissions per million
alter table covid_deaths 
alter column weekly_hosp_admissions_per_million float

-----------------------------------------------------------------------------------------------------------------------------------------------------

----- DATA EXPLORATION-------
--Selecting Data to be used
select location, date, 
       total_cases, 
	   new_cases, 
	   total_deaths, 
	   population
from [Covid Project]..covid_deaths
order by 1,2

--Checking which country has highest infection rates.
select location,
       population,
       max(total_cases) as highest_infection_count, 
	   max((total_cases / population)) * 100 as population_percentage
from [Covid Project]..covid_deaths
group by location, population
order by population_percentage desc
-- The highest infection rate is in Cyprus with 73% of population effected by COVID

--Countries with highest death count per population
select location,
       max(cast(total_deaths as int)) as total_death_count
from [Covid Project]..covid_deaths
where continent is not NULL
group by location
order by total_death_count desc
-- United states has highest death count per population 

--Showing continents with highest death count
-- Breaking the data by continent
select continent,
       max(cast(total_deaths as int)) as total_death_count
from [Covid Project]..covid_deaths
where continent is not NULL
group by continent
order by total_death_count desc

-- Continent has NULL string values. Lets try to get it updated properly.
update covid_deaths
set continent = cast(nullif(continent,'NULL') as varchar(50))
where continent = 'NULL'

--Lets break down by continent again.
select continent,
       max(cast(total_deaths as int)) as total_death_count
from [Covid Project]..covid_deaths
where continent is not NULL
group by continent
order by total_death_count desc

-- Lets check location where continent data is NULL
select location,
       max(cast(total_deaths as int)) as total_death_count
from [Covid Project]..covid_deaths
where continent is NULL
group by location
order by total_death_count desc
-- We can see there are values in location which does not make sense. These need to be addressed.

-- GLOBAL NUMBERS --

--Death percentage globally
select location,
       date,
	   total_cases,
	   total_deaths,
	   (total_deaths / total_cases) * 100 as death_percentage
from [Covid Project]..covid_deaths
where continent is not NULL
order by 1,2

--Sum of new cases and new deaths everyday globally
select date,
	   sum(cast(new_cases as float)) as new_sum,
	   sum(cast(new_deaths as float)) as sum_deaths
from [Covid Project]..covid_deaths
where continent is not NULL
group by date
order by 1,2

-- Death percentage globally
select date,
	   sum(cast(new_cases as float)) as new_sum,
	   sum(cast(new_deaths as float)) as sum_deaths,
	   case
		when sum(cast(new_cases as float)) <> 0 and sum(cast(new_deaths as float)) <> 0 then sum(cast(new_deaths as float))/sum(cast(new_cases as float)) * 100
       end as global_death_percentage
from [Covid Project]..covid_deaths
where continent is not NULL
group by date
order by 1,2
-- I used Case statement bacause there are 0s in columns and anything cannot be divided by 0. 
-- As of July 25th 2023 1.4% of people have passed away by COVID-19 globally.


-- Lot of patients were admitted to the hospitals every week. Lets check the percentage globally 
select date,
	   location,
	   avg(weekly_hosp_admissions) as average_weekly_hosp_admissions 
from [Covid Project]..covid_deaths
where continent is not NULL and weekly_hosp_admissions is not NULL
group by date, location
order by 1 desc


-- Percentage of weekly admissions per new cases
select date,
       location,
	   sum(cast(new_cases as float)) as new_sum,
	   sum(cast(weekly_hosp_admissions as float)) as weekly_sum,
	   case
		when sum(cast(new_cases as float)) <> 0 and sum(cast(weekly_hosp_admissions as float)) <> 0
		then sum(cast(weekly_hosp_admissions as float))/sum(cast(new_cases as float)) * 100
	   end as global_weekly_admits
from [Covid Project]..covid_deaths
where continent is not NULL
group by date, location
order by 1, 2

-- From both these queries we can see there are very few days where the weekly hospital cases recorded any numbers.

------------------------------------- Querying for United States--------------------------------------------------------
--Checking data for United States
select location, date, 
       total_cases, 
	   new_cases, 
	   total_deaths, 
	   population
from [Covid Project]..covid_deaths
where location = 'United States'
order by 1,2
-- We can see the first COVID-19 death was reported on Jan 20th 2020.

-- Lets look at Percentage of Total Cases vs Total Deaths in United States
select location, date, 
       total_cases, 
	   total_deaths, 
	   population,
	   (total_deaths / total_cases) * 100 as death_percentage
from [Covid Project]..covid_deaths
where total_cases is not NULL and location = 'United States'
order by 1,2
-- As of July 26th 2023, the likelihood of dying due to COVID is 1.08%. 

--Lets compare Total Cases to Population. This shows the percentage of population who got COVID.
select location, date, 
       total_cases,  
	   population,
	   (total_cases / population) * 100 as population_percentage
from [Covid Project]..covid_deaths
where total_cases != 0 and location = 'United States'
order by 1,2
-- As of July 26th 2023, the 30.5% of the Population was in Contact of COVID-19.

--Lets check the date on which United States recorded highest cases
select date, 
       max(new_cases) as highest_infection_count
from [Covid Project]..covid_deaths
where location = 'United States'
group by date
order by highest_infection_count desc
-- United States recorded highest cases on 12th Jan 2022.

--Lets check the date on which US recorded highest deaths in the year 2020
select top 1 date,
             cast(new_deaths as int) as highest_deaths
from [Covid Project]..covid_deaths
where location = 'United States' and year(date) = '2020'
order by new_deaths desc
-- US recorded highest deaths of 3389 on Dec 18th 2020 

-- Same data for the year 2021.
select top 1 date,
             new_deaths as highest_deaths
from [Covid Project]..covid_deaths
where location = 'United States' and year(date) = '2021'
order by new_deaths desc
-- In the year 2021 US recorded 5061 new deaths which was highest on a day. This was on 14th Feb 2021.


-- Lets check the weekly hospital admissions in United States.
select date,
       location,
	   sum(cast(new_cases as float)) as new_sum,
	   sum(cast(weekly_hosp_admissions as float)) as weekly_sum,
	   case
		when sum(cast(new_cases as float)) <> 0 and sum(cast(weekly_hosp_admissions as float)) <> 0
		then sum(cast(weekly_hosp_admissions as float))/sum(cast(new_cases as float)) * 100
	   end as weekly_admits_percentage
from [Covid Project]..covid_deaths
where continent is not NULL and location = 'United States' and year(date) = '2021'
group by date, location
order by 1

-- We can see there were 50% of the total new cases admitted to hospital on July 21 2020
--But there were few weeks in 2021 where the number of new cases were less than weekly admits.  