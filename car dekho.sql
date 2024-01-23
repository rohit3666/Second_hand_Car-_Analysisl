-- read car data
select * from cars.`car dekho`;
-- total cars - to get a count of total records
SELECT count(*) FROM cars.`car dekho`;
-- the manager asked the employ how many cars will be available in 2023 ?
select count(*) from  cars.`car dekho`
where year=2023
-- The manager asked the employee how many cars available in (2020,2021,2022) ?
select count(*) from  cars.`car dekho`
where year in (2020,2021,2022)
group by year;
-- client asked me to print the total of all cars by year. i dont see all the details. 
select count(*),year from cars.`car dekho`
group by year
-- client asked to car dealer agent  how many diesel are will be there in 2020 ?
select count(*) as total_diesel_car ,year,fuel from cars.`car dekho`
where year =2020 and fuel='diesel' 
-- client request a car dealer agent how many petrol cars will be there in 2020?
select count(*) as total_petrol_car ,year,fuel from cars.`car dekho`
where year =2020 and fuel='petrol' 
-- the manager told the employee to give a print all the fuel cars(petrol,diesel, and cng) by all year?
select count(*),year from cars.`car dekho`
where fuel='petrol'
group by year;
select count(*),year from cars.`car dekho`
where fuel='diesel'
group by year;
select count(*),year from cars.`car dekho`
where fuel='CNG'
group by year;
-- MANAGER SAID THAT THERE WERE MORE THAN 100 CARS IN A GIVEN YEAR,WHICH YEAR HAD MORE THAN 100 CARS?
select count(*) , year from cars.`car dekho`
group by year
 having count(*)>=100
 -- the manager said to the employee all cars count details between 2015 and 2023;we need a complete list
 select count(*) from cars.`car dekho`where
 year between 2015 and 2023
 -- the manager said to employee all cars detail between 2015 to 2023 we need complete list
 select * from cars.`car dekho`
 where year between 2015 and 2023
 