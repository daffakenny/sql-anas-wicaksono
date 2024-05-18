select *
from nilai_siswa ns ;

-- passed = mat >=75 and ipa >= 75
select id_siswa, nilai_mtk, nilai_ipa 
from nilai_siswa ns 
where nilai_mtk >=75 and nilai_ipa >= 75;

-- passed is mat >=75 and ipa >= 75 and bing >= 75 and bind >= 75
select id_siswa, nilai_mtk, nilai_ipa , nilai_bing , nilai_bind 
from nilai_siswa ns 
where nilai_mtk >=75 and nilai_ipa >= 75 and nilai_bing >= 75 and nilai_bind >= 75;

-- passed is mat >= 75 or ipa >= 75
select id_siswa, nilai_mtk, nilai_ipa 
from nilai_siswa ns 
where nilai_mtk >=75 or nilai_ipa >= 75;

-- passed is (mat >= 75 or ipa >= 75) and bind >= 75
select id_siswa, nilai_mtk, nilai_ipa , nilai_bind 
from nilai_siswa ns 
where (nilai_mtk >=75 or nilai_ipa >= 75) and nilai_bind >= 75;



-- NOT operator
-- returns PG13 films
select title, length, rating 
from film f 
where rating in ('PG-13');

-- returns films not in PG13
select title, length, rating 
from film f 
where rating not in ('PG-13')
order by rating ;

select 
f.title , 
a.first_name , 
a.last_name ,
f.rating 

from film f  
join film_actor fa 
on f.film_id = fa.film_id

join actor a 
on fa.actor_id = a.actor_id 

where rating not in ('PG-13')
order by rating ;
