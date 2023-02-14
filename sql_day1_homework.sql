
-- WEEK 5 HOMEWORK QUESTIONS
--1. How many actors are there with the last name ‘Wahlberg’?    2
select last_name
from actor
where last_name like 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99?         4794
select amount, count(amount) from payment group by amount order by amount;

--3. What film does the store have the most of? (search in inventory) there are 72 different film_id's with a quanitity of 8
select film_id ,count(film_id) from inventory group by film_id order by count desc ;

--4. How many customers have the last name ‘William’?    0 ( there is one Williams)
select * from customer where last_name like 'Wil%';

--5. What store employee (get the id) sold the most rentals?   Jon had 12 more sales than Mike
select staff_id, count(staff_id) from payment group by staff_id order by staff_id;

--6. How many different district names are there?    there are 2
select * from store;

--7. What film has the most actors in it? (use film_actor table and get film_id)    film id 508 (Lambs Cincinatti)
select count(actor_id), film_id from film_actor group by film_id order by count desc;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)   there are 21
select count(last_name) from customer where last_name like '%es';

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)      3 payment amounts over 250 ct. 4.99,6.99, and 2.99
select count(amount),amount from payment where customer_id > 380 and customer_id < 430 group by amount order by count desc;

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?     5 categories pg-13 being the most
select count(film_id), rating from film group by rating order by count desc;