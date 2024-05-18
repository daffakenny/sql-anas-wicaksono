select *
from payment p ;

-- payment where staff_id 1 handled
select *
from payment p 
where staff_id = 1
order by p.amount ;

-- payment where staff_id 1 handled & amount > $10
select *
from payment p 
where staff_id = 1 and amount > 10
order by p.amount ;

-- using UPDATE and WHERE
select *
from nilai_siswa ns ;

-- from 92 tp 95
update nilai_siswa 
set nilai_mtk = 95 where id_siswa ='10001';

-- delete student id 10001
delete from nilai_siswa 
where id_siswa = '10001';


