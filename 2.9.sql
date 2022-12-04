Use sakila;
-- How many distinct (different) actors' last names are there?
Select count(distinct(last_name))
FROM actor;



-- Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.




-- Get all films with ARMAGEDDON in the title.
Select title
from film
where title like "%ARMAGEDDON%";


-- Get 10 the longest films.
Select title,length
from film
group by title, length
order by length desc
limit 10;


-- How many films include Behind the Scenes content?
Select count(title)
from film
where special_features like "%Behind the Scenes%";


-- Which kind of movies (rating) have a mean duration of more than two hours?
Select rating,avg(length)
from film
group by rating
having avg(length)>120;


-- Rank films by length (filter out the rows that have nulls or 0s in length column). In your output, only select the columns title, length, and the rank.
Select title, length
from film
where length != 0 and length is not null
order by length desc;


