-- alias is used as a temporary name PER QUERY, NOT GLOBAL

select 
f.film_id, 
f.title, 
f.release_year, 
f.rental_rate, 
c."name"
from film f -- aliasing a table
join film_category fc -- table name to join 
on f.film_id = fc.film_id -- matching ID
join category c
on fc.category_id = c.category_id; -- matching ID


-- temporary naming query's table result
select 
f.film_id,
f.title as "Judul Film", -- with as
f.release_year "Tahun Rilis", -- without as
f.rental_rate "Harga Rental",
c."name" as "Genre Film",
l."name" as "Bahasa Digunakanl"

from film f
join film_category fc 
on f.film_id = fc.film_id 
join category c
on fc.category_id = c.category_id 
join "language" l 
on f.language_id =l.language_id ;


-- using alias in function aggregation

select 
sum(amount) total_pendapatan,
count(*) jumlah_transaksi,
min(amount) pembayaran_minimum,
max(amount) pembayaran_maximum,
avg(amount) ratarata_pembayaran

from payment p;

-- alias in subquery
select *

from

(select 
f. *,
c.name as film_category -- only display film's category

from film f
join film_category fc -- join to table.film_category first, since table.category is located inside table.film_category
on f.film_id = fc.film_id
join category c -- final join to retrieve category
on fc.category_id = c.category_id
where f.length >= 60)
as film_data_60





