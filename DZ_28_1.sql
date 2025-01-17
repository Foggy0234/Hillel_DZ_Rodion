use `hillel-auto`;
select * from user_profiles where name like "%am%";

select car_brands.title ,max(expenses.totalCost) from cars
inner join expenses on expenses.carId = cars.id
	inner join car_brands on cars.carBrandId = car_brands.id
where cars.carBrandId = 1;

select car_brands.title, count(car_models.carBrandId) from car_models 
inner join car_brands on car_models.carBrandId = car_brands.id
where carBrandId = 1;
select car_brands.title, count(car_models.carBrandId) from car_models
 inner join car_brands on car_models.carBrandId = car_brands.id
where carBrandId = 2;

select car_brands.id, car_models.id, count(userId) from cars
inner join car_brands on cars.carBrandId = car_brands.id
inner join car_models on cars.carModelId = car_models.id
group by car_brands.id, car_models.id;

select user_profiles.name from cars
inner join users on cars.userId = users.id
inner join user_profiles on users.id = user_profiles.userId;









