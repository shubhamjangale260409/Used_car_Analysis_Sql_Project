create database car;
use car;

-- 1] Read cars data.
select * from car_dekho;

-- 2] Total cars: To get a count of total records.
select count(*) from car_dekho;

-- 3] The manager asked the employee -
-- How many cars will be available in 2023.
select count(*) from car_dekho where year=2023;

-- 4] The manager asked the employee, How many cars is avaialble in 2020, 2021, 2022.
select year, count(*) from car_dekho where year in (2020,2021,2022)
group by year;

-- 5] Clint asked me to print the total of all cars by year.
-- I don't see all the details.
select year, count(*) from car_dekho group by year;

-- 6] Clint asked to car dealer agent, How many diesel cars will there be in 2020?
select count(*) from car_dekho where year=2020 and fuel='diesel';

-- 7] Clint requested a car dealer agent, How many petrol cars will there be in 2020?
select count(*) from car_dekho where year=2020 and fuel='petrol';

-- 8] The manager told the employee to give a print All the fuel cars
-- (petrol, diesel and CNG) come by all year.
select year, count(*) from car_dekho where fuel in ('petrol') group by year;
select year, count(*) from car_dekho where fuel in ('diesel') group by year;
select year, count(*) from car_dekho where fuel in ('CNG') group by year;

-- 9] Manager said there were more than 100 cars in a given year, which year had more than 100 cars?
select year, count(*) from car_dekho group by year having count(*)>100;


-- 10] The manager said to the employee All cars count details between 2015 and 2023; we need a complete list.
select year, count(*) from car_dekho where year between 2015 and 2023 group by year;

-- 11] The manager said to the employee All cars details between 2015 to 2023 We need complete list.
select * from car_dekho where year between 2015 and 2023;


-- 12] Show all cars, selling price who have 1st Owner there km given between 20000 and 60000 and there fuel type is petrol.
select  name, owner, fuel, km_driven, selling_price from car_dekho where owner= 'First owner' and fuel = 'petrol' 
and  km_driven between 20000 and 60000;

-- 13] Show Top 10 cars details who have highest selling price.
select * from car_dekho order by selling_price desc limit 10;







