--Select * 
--From PortfolioProject..CovidDeaths
--order by 3,4
--Select Location, date, total_cases, new_cases, total_deaths, population
--From PortfolioProject..CovidDeaths
--order by 1,2
--Lokking at totalcases vs total deaths
--Looking at countries with highest infection rate compared to population

--Select Location, Population, MAX(total_cases) as HighhestInfectionCount, MAX((total_cases/population)) *100 as
-- PercentPopulationInfected
--From PortfolioProject..CovidDeaths
--Group by Location,Population
--order by 1,2
--shoing countries ith hhighest death count per population
Select Location, MAX(cast(Total_deaths as int)) as TotalDeathCount
From PortfolioProject..CovidDeaths
--here location like '%states%'
Group By Location
order by TotalDeathCount desc