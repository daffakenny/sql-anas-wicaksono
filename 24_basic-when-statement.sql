-- Creating a table named "case_when1"
CREATE TABLE case_when1 (
    product_id INT,
    price INT
);

-- Inserting data into the "case_when1" table
INSERT INTO case_when1 (product_id, price)
VALUES
    (1, 60000),
    (2, 160000),
    (3, 40000),
    (4, 90000),
    (5, 120000);

select *
from case_when1 

select
product_id ,
price, 
case 
	when price < 50000 then 'low'
	when price > 100000 then 'high'
	else 'medium'
end "priceCat"
from case_when1 
order by price ;



-- Creating a table named "case_when2"
CREATE TABLE case_when2 (
    order_id SERIAL PRIMARY KEY,
    item_id VARCHAR(10),
    quantity INT,
    price INT
);

-- Inserting data into the "case_when2" table
INSERT INTO case_when2 (item_id, quantity, price)
VALUES
    ( 'a', 5, 100000),
    ( 'b', 13, 500000),
    ( 'c', 12, 50000),
    ( 'd', 50, 25000),
    ( 'e', 100, 125000);
   
select * ,
quantity * price "revenue", -- shows revenue

case 
	when quantity * price > 500000 then 0.15
	when quantity * price > 200000 then 0.1
	else 0
end "discountRate",

case 
	when quantity * price > 500000 then quantity * price * 0.15
	when quantity * price > 200000 then quantity * price * 0.1
	else 0
end "discountAmount",

case 
	when quantity * price > 500000 then (quantity * price) - (quantity * price * 0.15)
	when quantity * price > 200000 then (quantity * price) - (quantity * price * 0.1)
	else 0
end "discountedPrice"


from case_when2



-- Creating a table named "case_when3"
CREATE TABLE case_when3 (
    ticket_id SERIAL PRIMARY KEY,
    ticket_created TIMESTAMP,
    complaint_category VARCHAR(50),
    complaint_channel VARCHAR(50)
);

-- Inserting sample data into the "Tickets" table with specified complaint_channel values
INSERT INTO case_when3 (ticket_created, complaint_category, complaint_channel)
VALUES
    ('2023-01-01 10:30:00', 'Billing Issue', 'email'),
    ('2023-01-02 09:45:00', 'Technical Problem', 'phone'),
    ('2023-01-03 14:20:00', 'Delivery Delay', 'whatsapp'),
    ('2023-01-04 11:10:00', 'Product Quality', 'email'),
    ('2023-01-05 08:55:00', 'Billing Issue', 'phone'),
    ('2023-01-06 13:40:00', 'Technical Problem', 'livechat'),
    ('2023-01-07 16:25:00', 'Product Quality', 'phone'),
    ('2023-01-08 12:15:00', 'Delivery Delay', 'telegram'),
    ('2023-01-09 09:00:00', 'Billing Issue', 'website'),
    ('2023-01-10 17:00:00', 'Technical Problem', 'whatsapp');

select *
from case_when3

select *,
case
	when complaint_channel in ('phone', 'livechat') then 3
	when complaint_channel in ('whatsapp', 'telegram') then 5
	else 15
end "expResponseTime"
from case_when3 cw 




