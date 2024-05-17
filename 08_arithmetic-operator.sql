/* 
 + addition
- subtraction
* multiplication
/ division
% mod
^ exponent
*/

select 
unit_price "hargaNow",
unit_price + 5 as "hargaBaru/+$5"
from supermarket_transactions st; 

select
unit_price "hargaNow",
unit_price - 5 as "hargaDiskon"
from supermarket_transactions st;

select 
st.unit_price "harga",
st.quantity "stok",
st.unit_price  * st.quantity as potProfit
from supermarket_transactions st;

select 
unit_price "basePrice",
unit_price * 0.1 as tax,
(unit_price * 0.1) + unit_price as finalPrice,
((unit_price * 0.1) + unit_price) * quantity as grossProfit,
(((unit_price * 0.1) + unit_price) * quantity) - (unit_price * quantity) as netProfit

from supermarket_transactions st;

