create database customer;
use customer;
create table payment (
	customer_id int primary key,
    name varchar(50),
    mode varchar(50),
    city varchar(20)
);
insert into payment(customer_id,name,mode,city)
values
(101,"olivia barrett","netbanking","portland"),
(102,"ethan sinclair","credit card","miami"),
(103,"maya hernandez ","credit card","seattle"),
(104,"lian donovan ","netbanking","denver"),
(105,"sophia niguyen ","credit card","new orleans"),
(106,"caleb foster ","debit card","minneapolis"),
(107,"ava patel ","debit card","phoenix"),
(108,"lucas carter ","netbanking","boston"),
(109,"isabelle martinez ","netbanking","nashville"),
(110,"jackson brooks ","credit card","boston");

select mode , count(name)
from payment
group by mode;
