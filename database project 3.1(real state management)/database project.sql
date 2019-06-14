drop table pictures;
drop table reservations;
drop table advertisements;
drop table requests;
drop table estates;
drop table users;

//table_create
create table users(
    user_id integer,
    user_name varchar(20),
    passwords integer,
    addresses varchar(20),
    phone integer,
    primary key(user_id)
);

create table estates(
    estate_id integer,
    estate_type varchar(20),
    locations varchar(20),
    rooms number(10),
    bathrooms number(10),
    price number(15),
    primary key(estate_id)
);

create table requests(
    user_id integer,
    estate_id integer,
    appointment_date integer,
    appointment_time integer,
    foreign key(user_id) references users (user_id) ON DELETE CASCADE,
    foreign key(estate_id) references estates (estate_id) ON DELETE CASCADE
);

create table advertisements(
    estate_id integer,
    advertisement_type varchar(20),
    foreign key(estate_id) references estates (estate_id) ON DELETE CASCADE
);

create table reservations(
    user_id integer,
    estate_id integer,
    advance integer,
    remaining_prices integer,
    foreign key(user_id) references users (user_id) ON DELETE CASCADE,
    foreign key(estate_id) references estates (estate_id) ON DELETE CASCADE
);
create table pictures(
    estate_id integer,
    image_id integer,
    image_type varchar(20),
    foreign key(estate_id) references estates (estate_id) ON DELETE CASCADE
);

//insertion
insert into users (user_id,user_name,passwords,addresses,phone) values (1607091,'shuvo',091,'rashid_hall',01521414093);
insert into users (user_id,user_name,passwords,addresses,phone) values (1607092,'sajid_karim',092,'rashid_hall',01515652651);
insert into users (user_id,user_name,passwords,addresses,phone) values (1607093,'rohan',093,'rashid_hall',01913790346);
insert into users (user_id,user_name,passwords,addresses,phone) values (1607094,'delowar',094,'rashid_hall',NULL);
insert into users (user_id,user_name,passwords,addresses,phone) values (1607095,'rabeya',095,'rokeya_hall',01521475785);
insert into users (user_id,user_name,passwords,addresses,phone) values (1607096,'riad',091,'rashid_hall',01787201408);
insert into users (user_id,user_name,passwords,addresses,phone) values (1607097,'nasim',091,'rashid_hall',01735555900);
insert into users (user_id,user_name,passwords,addresses,phone) values (1607098,'ashik',091,'bangabandhu_hall',01721755035);
insert into users (user_id,user_name,passwords,addresses,phone) values (1607099,'joy',091,'bangabandhu_hall',01521430522);
insert into users (user_id,user_name,passwords,addresses,phone) values (1607100,'kawsar',091,'rashid_hall',01840151575);

insert into estates (estate_id,estate_type,locations,rooms,bathrooms,price) values (101,'computer_stall','dhaka',3,1,5000000);
insert into estates (estate_id,estate_type,locations,rooms,bathrooms,price) values (102,'grocery_stall','dhaka',1,1,1000000);
insert into estates (estate_id,estate_type,locations,rooms,bathrooms,price) values (103,'cycle_stall','dhaka',1,1,1500000);
insert into estates (estate_id,estate_type,locations,rooms,bathrooms,price) values (104,'shopping_mall','dhaka',100,10,200000000);
insert into estates (estate_id,estate_type,locations,rooms,bathrooms,price) values (105,'industry_building','gazipur',5,5,70000000);
insert into estates (estate_id,estate_type,locations,rooms,bathrooms,price) values (106,'living_building','dhaka',30,12,30000000);
insert into estates (estate_id,estate_type,locations,rooms,bathrooms,price) values (107,'hotel_building','khulna',40,40,60000000);
insert into estates (estate_id,estate_type,locations,rooms,bathrooms,price) values (108,'students_hall','khulna',50,5,30000000);
insert into estates (estate_id,estate_type,locations,rooms,bathrooms,price) values (109,'laboratory_building','khulna',4,2,10000000);
insert into estates (estate_id,estate_type,locations,rooms,bathrooms,price) values (110,'living_building','khulna',10,4,2000000);

insert into requests (user_id,estate_id,appointment_date,appointment_time) values (1607091,101,4.7,8.0);
insert into requests (user_id,estate_id,appointment_date,appointment_time) values (1607093,103,5.7,8.0);
insert into requests (user_id,estate_id,appointment_date,appointment_time) values (1607095,110,6.7,8.0);
insert into requests (user_id,estate_id,appointment_date,appointment_time) values (1607097,107,7.7,8.0);
insert into requests (user_id,estate_id,appointment_date,appointment_time) values (1607098,106,8.7,8.0);
insert into requests (user_id,estate_id,appointment_date,appointment_time) values (1607099,102,9.7,8.0);

insert into advertisements (estate_id,advertisement_type) values (101,'posters');
insert into advertisements (estate_id,advertisement_type) values (102,'posters');
insert into advertisements (estate_id,advertisement_type) values (103,'posters');
insert into advertisements (estate_id,advertisement_type) values (104,'tv_advertise');
insert into advertisements (estate_id,advertisement_type) values (105,'bill_board');
insert into advertisements (estate_id,advertisement_type) values (106,'tv_advertise');
insert into advertisements (estate_id,advertisement_type) values (107,'tv_advertise');
insert into advertisements (estate_id,advertisement_type) values (108,NULL);
insert into advertisements (estate_id,advertisement_type) values (109,'bill-board');
insert into advertisements (estate_id,advertisement_type) values (110,'tv-advertise');

insert into reservations (user_id,estate_id,advance,remaining_prices) values (1607091,101,1000000,4000000);
insert into reservations (user_id,estate_id,advance,remaining_prices) values (1607093,103,500000,1000000);
insert into reservations (user_id,estate_id,advance,remaining_prices) values (1607098,106,5000000,25000000);

insert into pictures (estate_id,image_id,image_type) values (101,1,'interior');
insert into pictures (estate_id,image_id,image_type) values (102,11,'front');
insert into pictures (estate_id,image_id,image_type) values (103,21,'interior');
insert into pictures (estate_id,image_id,image_type) values (104,31,'front');
insert into pictures (estate_id,image_id,image_type) values (105,41,'interior');
insert into pictures (estate_id,image_id,image_type) values (106,51,'interior');
insert into pictures (estate_id,image_id,image_type) values (107,61,'interior');
insert into pictures (estate_id,image_id,image_type) values (108,71,'front');
insert into pictures (estate_id,image_id,image_type) values (109,81,'interior');
insert into pictures (estate_id,image_id,image_type) values (110,91,'interior');

commit;
//checks
select * from users;
select * from requests;
select * from estates;
select * from advertisements;
select * from pictures;

select estate_type,price from estates 
where locations like '%khulna%';

select estate_type,price from estates
order by price;

//aggregate_function
select max(price) from estates;
select max(advance) from reservations;
select min(remaining_prices) from reservations;
select count(*),sum(price),avg(price)
from estates;
select count(*),count(price)
from estates;

//joinn
select reservations.user_id,estates.estate_type
from reservations join estates
using(estate_id);

//3_table_join
select user_name,estate_type,price
accomplishments from users u, reservations r,estates e
where u.user_id=r.user_id and r.estate_id=e.estate_id;

//sub_query
select user_id,user_name
from users
where user_id = (select user_id from reservations 
where advance > 4000000);

//set_operation
select user_id from requests
union
select user_id from reservations;

select user_id from requests
union all
select user_id from reservations;

select user_id from requests
intersect
select user_id from reservations;

select user_id from requests
minus
select user_id from reservations;

set serveroutput on;

//functions
CREATE OR REPLACE FUNCTION totaluser 
RETURN number IS 
   total number(2) := 0; 
BEGIN 
   SELECT count(*) into total 
   FROM users; 
    
   RETURN total; 
END; 
/
DECLARE 
   c number(2); 
BEGIN 
   c := totaluser(); 
   dbms_output.put_line('Total no. of users: ' || c); 
END; 
/
drop function totaluser;

//procedures
CREATE OR REPLACE PROCEDURE proceed
AS 
BEGIN 
  dbms_output.put_line('thank you'); 
END; 
/
execute proceed;

drop procedure proceed;

//trigger
CREATE OR REPLACE TRIGGER display_price_changes 
BEFORE DELETE OR INSERT OR UPDATE ON estates 
FOR EACH ROW 
WHEN (NEW.estate_id > 0) 
DECLARE 
   price_diff number; 
BEGIN 
   price_diff := :NEW.price  - :OLD.price; 
   dbms_output.put_line('Old price: ' || :OLD.price); 
   dbms_output.put_line('New price: ' || :NEW.price); 
   dbms_output.put_line('price difference: ' || price_diff); 
END; 
/ 
insert into estates (estate_id,estate_type,locations,rooms,bathrooms,price) values (111,'living_building','khulna',20,8,4000000);

drop trigger display_price_changes;