-- CREATE TABLE basics.students(
--     -- creat an auto incremental integer 1,2,3,4....
--     -- primary key unique key
--     id SERIAL PRIMARY KEY,
--     name Text Not NULL,
--     -- Text means only string and not null means required
--     email Text Not NULL UNIQUE,

--     age INTEGER CHECK(age >=18),
--     -- timestamp used to store the date and time formate
--     created_at TIMESTAMP DEFAULT NOW(),

-- );

CREATE TABLE basics.students(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    age INTEGER CHECK(age >= 18),
    created_at TIMESTAMP DEFAULT NOW()
);


INSERT INTO basics.students(name,email,age)
VALUES 
('davood','davoodbhai0@gmail.com',23),
('munshirsyed','syedmunshir@gmail.com',23);


SELECT * FROM basics.students;
