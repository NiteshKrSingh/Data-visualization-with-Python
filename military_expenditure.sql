show databases;
use practice;

create table military_expenditure_by_country(
Country_Name varchar(300),
Country_Code varchar(100),
Region varchar(500),
Income_Group varchar(500),
Indicator_Name varchar(500),
ME_2011 int,
ME_2012 int,
ME_2013 int,
ME_2014 int,
ME_2015 int,
ME_2016 int,
ME_2017 int,
ME_2018 int,
ME_2019 int,
ME_2020 int
);

#select
select * from military_expenditure_by_country;
select country_name, income_group, me_2020 from military_expenditure_by_country;
select country_name, income_group, me_2020 as '2020(Military expenditure (% of GDP))' from military_expenditure_by_country;

#where
select country_name, income_group, me_2020 as '2020(Military expenditure (% of GDP))' from military_expenditure_by_country where ME_2020>=7;
select country_name, income_group, me_2020 as '2020(Military expenditure (% of GDP))' from military_expenditure_by_country where ME_2020 between 5 and 10;
select country_name, income_group, me_2020 as '2020(Military expenditure (% of GDP))' from military_expenditure_by_country where ME_2020<=10 and ME_2020>=5;
select country_name, income_group, me_2020 as '2020(Military expenditure (% of GDP))' from military_expenditure_by_country where Income_Group = 'low income';
select country_name, income_group, me_2020 as '2020(Military expenditure (% of GDP))' from military_expenditure_by_country where region = 'asia' and Income_Group = 'low income';

#order by/shorting
select country_name, income_group, me_2020 as 'me(% of gdp) in 2020' from military_expenditure_by_country order by ME_2020 desc;
select country_name, income_group, me_2020 as 'me(% of gdp) in 2020' from military_expenditure_by_country order by ME_2020 asc;
select country_name, income_group, me_2020 as 'me(% of gdp) in 2020' from military_expenditure_by_country where region = 'south asia' order by ME_2020 desc;
select country_name, income_group, me_2020 as 'me(% of gdp) in 2020' from military_expenditure_by_country where region = 'south asia' and Income_Group = 'low income' order by ME_2020 desc;
select country_name, income_group, me_2020 as 'me(% of gdp) in 2020' from military_expenditure_by_country where region in ('south asia', 'europe & central asia') order by ME_2020 desc;
select country_name, income_group, me_2020 as 'me(% of gdp) in 2020' from military_expenditure_by_country where Income_Group like '%middle%' order by ME_2020 desc;
select country_name, income_group, me_2020 as 'me(% of gdp) in 2020' from military_expenditure_by_country where Country_Name like '_n%' order by ME_2020 desc;

#group by & having
select country_name, count(country_name) from military_expenditure_by_country group by Country_Name;
select Income_Group, count(income_group) from military_expenditure_by_country group by Income_Group;
select income_group, count(income_group) as count from military_expenditure_by_country group by Income_Group having count(Income_Group)>35;
select income_group, count(income_group) as count from military_expenditure_by_country group by Income_Group having count(Income_Group) between 30 and 50;
select income_group, count(income_group) as count from military_expenditure_by_country group by Income_Group having count(Income_Group) like '%35%';

#removing duplicate
select income_group from military_expenditure_by_country;
select distinct income_group from military_expenditure_by_country;
select region, income_group from military_expenditure_by_country;
select distinct region, income_group from military_expenditure_by_country;

#count
select count(*) from military_expenditure_by_country; #it's showing total number of rows
select count(*) from military_expenditure_by_country where ME_2020>=5;
select count(country_name) from military_expenditure_by_country where ME_2020>10;
select count(income_group) from military_expenditure_by_country where ME_2020 between 2 and 11;
select count(Country_Name) from military_expenditure_by_country where ME_2020 between 5 and 11;
