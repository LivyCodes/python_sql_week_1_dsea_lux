SELECT * FROM weather.weather_1;

-- 1.Find all records where the weather was exactly clear
select * from weather_1
where Weather = 'Clear';

-- view for records where weather was exactly clear
create view clear_weather
as
select * from weather_1
where Weather = 'Clear';

-- 2.Find the number of times the wind speed was exactly 4km/hr
select count(*) as Wind_Speed_4km_hr
from weather_1
where Wind_Speed_km_h = 4;

-- 6.Find the number of records where the windspeed is greater than 24km/hr and visibility is equal to 25
select count(*) as windspeed_visibility
from weather_1
where Wind_Speed_km_h > 24 and Visibility_km = 25;

-- 8. Find all instances where the weather is clear and the relative humidity is greater than 50 or visibility is above 40
select * from weather_1
where Weather = 'Clear' and ( Rel_Hum > 50 or Visibility_km > 40);

-- view for 8 above
create view weather_hum_visibility
as 
select * from weather_1
where Weather = 'Clear' and ( Rel_Hum > 50 or Visibility_km > 40);

-- 9. Find the number of weather conditions that include snow
select count(*) as snowy_weather
from weather_1
where Weather ='Snow';



