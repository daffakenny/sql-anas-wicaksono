CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    type VARCHAR(50),
    author_id INT,
    editor_id INT,
    translator_id INT
);

INSERT INTO books (title, type, author_id, editor_id, translator_id) VALUES
('Time to Grow Up!', 'original', 11, 21, NULL),
('Your Trip', 'translated', 15, 22, 32),
('Lovely Love', 'original', 14, 24, NULL),
('Dream Your Life', 'original', 11, 24, NULL),
('Oranges', 'translated', 12, 25, 31),
('Your Happy Life', 'translated', 15, 22, 33),
('Applied AI', 'translated', 13, 23, 34),
('My Last Book', 'original', 11, 28, NULL);

-- membuat table authors

CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

INSERT INTO authors (id, first_name, last_name) VALUES
(11, 'Ellen', 'Writer'),
(12, 'Olga', 'Savelieva'),
(13, 'Jack', 'Smart'),
(14, 'Donald', 'Brain'),
(15, 'Yao', 'Dou');

-- membuat table editors

CREATE TABLE editors (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

INSERT INTO editors (id, first_name, last_name) VALUES
(21, 'Daniel', 'Brown'),
(22, 'Mark', 'Johnson'),
(23, 'Maria', 'Evans'),
(24, 'Cathrine', 'Roberts'),
(25, 'Sebastian', 'Wright'),
(26, 'Barbara', 'Jones'),
(27, 'Matthew', 'Smith');

-- membuat table translators

CREATE TABLE translators (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

INSERT INTO translators (id, first_name, last_name) VALUES
(31, 'Ira', 'Davies'),
(32, 'Ling', 'Weng'),
(33, 'Kristian', 'Green'),
(34, 'Roman', 'Edwards');



select *
from books b 

select *
from authors a 

select * 
from translators t 

select * 
from editors e 

select b.title , a.first_name , a.last_name , t.first_name , t.last_name 
from books b
join authors a 
on b.author_id = a.id 
join translators t 
on b.translator_id = t.id 

-- books and their translators
select b.title , t.first_name "translatorFirstName", t.last_name "translatorLastName" 
from books b 
join translators t 
on b.translator_id = t.id 

-- left join; editor
select b.title "bookTitle" , 
b."type" "bookType" ,
e.first_name "editorFirstName" ,
e.last_name "editorLastName"
from books b
left join editors e -- shows title even editor = NULL
on b.editor_id = e.id 

-- right join; translator
select
b.title bookTitle,
b."type" bookType ,
t.first_name translatorFirstName ,
t.last_name translatorLastName
from books b
right join translators t  -- shows only translator with their work's
on b.translator_id  = t.id 

-- full join returns data from every table, matches or not
select 
b.title bookTitle,
e.first_name editorFirstName ,
e.last_name editorLastName
from books b 
full join editors e 
on b.editor_id = e.id 

drop table books, authors, editors, translators ;