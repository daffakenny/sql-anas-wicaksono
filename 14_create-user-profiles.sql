-- membuat table profil pengguna

CREATE TABLE user_profiles (
    user_id serial PRIMARY KEY,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(100),
    date_of_birth date,
    branch_code char(3),
    bio text
);

-- memasukkan data ke dalam tabel user_profiles
INSERT INTO user_profiles (first_name, last_name, email, date_of_birth, branch_code, bio)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '1990-05-15', 'JKT', 'Saya seorang insinyur perangkat lunak dengan passion terhadap teknologi dan pemrograman.'),
    ('Alice', 'Smith', 'alice.smith@example.com', '1985-12-10', 'BDG', 'Saya suka berpergian, fotografi, dan menjelajahi budaya baru.'),
    ('Bob', 'Johnson', 'bob.johnson@example.com', '1995-03-22', 'MDN', 'Saya seorang musisi pemula, dan saya bermain gitar dan piano.')
    
-- cek hasil insert 

select *
from user_profiles ;

select *
from user_profiles up 
where branch_code = 'JKT';

select *
from user_profiles up 
order by date_of_birth desc ;

drop table user_profiles ;











