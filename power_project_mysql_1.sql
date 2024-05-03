create schema akkimotivational;
use akkimotivational;
select*from mobile;
-- check mobile features and price list--
select Phone_name, Price from mobile;

-- find out the price of 5 most expensive phonces--
select*from mobile
order by price desc
limit 5;

-- find out the price of 5 most cheapest phonces--
select*from mobile
order by price asc
limit 5;

-- list of top 5 samsamg phones with price and all features--
select*from mobile 
where Brands = "Samsung"
order by Price desc
limit 5; 

-- must have android phone list top 5  high price android phones --
select*from mobile
where Operating_System_Type = "Android"
order by Price desc
limit 5;

-- must have android phone list top 5 cheapest price android phones --
select*from mobile
where Operating_System_Type = "Android"
order by Price asc
limit 5;

-- must have IOS phone list then top 5 high price IOS  phones --
select*from mobile
where Operating_System_Type = "iOS"
order by price desc
limit 5; 

-- must have IOS phone list then top 5 lowest price IOS  phones --
select*from mobile
where Operating_System_Type = "iOS"
order by price asc
limit 5;

-- write a querry which phone support 5g and also top 5 phones with 5g support --
select*from mobile
where 5G_Availability = "Yes"
order by price desc
limit 5;

-- total price of all mobile is to be found with brand name --
select Brands, sum(Price) from mobile
group by Brands;
