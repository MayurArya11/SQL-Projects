use firstproject;

-- Read Data--
select * from gaadilo24;

-- Total Cars: to get a count of total records--
select count(Name) from gaadilo24;

-- How many cars will available in 2023?--
select count(year) from gaadilo24 where year=2023;

-- How many cars availbale in 2020, 2021, 2022 --
select count(year) from gaadilo24 where year in (2020, 2021, 2022) group by year;

-- Print the total of all cars by year --
select count(*), year from gaadilo24 group by year;

-- How many diesel cars will be there in 2020--
select count(*) from gaadilo24 where year=2020 and fuel="Diesel";

-- How any petrol cars will be there in 2020?--
select count(*) from gaadilo24 where year=2020 and fuel="Petrol";

-- Print all the fuels cars (petrol, diesel and CNG) come by all year --
select year, fuel, count(*) from gaadilo24 where fuel="Petrol" group by year;
select year, fuel, count(*) from gaadilo24 where fuel = "Diesel" group by year;
select year, fuel, count(*) from gaadilo24 where fuel = "CNG" group by year;

-- Which year had more than 100 cars? --
select year, count(*) from gaadilo24 group by year having count(year) >= 100;
select year, count(*) from gaadilo24 group by year having count(year) <= 100;

-- All cars count details between 2015 and 2023 --
select count(*) from gaadilo24 where year between 2015 and 2023;

-- All cars details between 2015 and 2023 --
select * from gaadilo24 where year between 2015 and 2023;

-- All car details having 7 seat--
select * from gaadilo24 where seats = 7;


