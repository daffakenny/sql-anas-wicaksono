-- Table creation
CREATE TABLE OrderDetails (
    OrderID INT PRIMARY KEY,
    OrderReference VARCHAR(50)
);

-- Sample data insertion
INSERT INTO OrderDetails (OrderID, OrderReference) VALUES
(1, 'JKT192839BDG'),
(2, 'NYC123456LAX'),
(3, 'LON987654PAR'),
(4, 'LAH456789ISL'),
(5, 'TKY987654OSK'),
(6, 'SYD456123MEL'),
(7, 'DEL789456MUM'),
(8, 'MIA654321ORL'),
(9, 'AMS987654BER'),
(10, 'ROM123456MIL');


-- 
select *
from orderdetails o ;

select left (orderreference, 3) as origin
from orderdetails o 

select right (orderreference, 3) as destination
from orderdetails o 

select substring(orderreference, 4, 6) as "orderID"
from orderdetails o 

-- final result
select 
orderreference ,
left (orderreference, 3) as originCode ,
right (orderreference, 3) as destinationCode ,
substring(orderreference, 4, 6) as orderId
from orderdetails o 

drop table orderdetails 