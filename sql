BEGIN;

CREATE SCHEMA schedule1;
SET search_path TO schedule1;


CREATE TABLE subjects(
    id SERIAL PRIMARY KEY,
    subject_name TEXT
);
 

CREATE TABLE teachers(
    id SERIAL PRIMARY KEY,
    first_name   TEXT,
    last_name    TEXT,
    patronymic  TEXT,
    science_degree TEXT
);

CREATE TABLE audience(
    id SERIAL PRIMARY KEY,
    number_audience VARCHAR(50)
);

CREATE TABLE groups(
    id SERIAL PRIMARY KEY,
    group_name   VARCHAR(20),
    number_of_students VARCHAR(20)
);

CREATE TABLE time(
    beginning_of_the_pair TIMESTAMP,
    end_of_pair TIMESTAMP,
    pair_number VARCHAR(20)
);

CREATE TABLE week (
    day of the week VARCHAR(20),
    even BOOLEAN
);

 
person_id INTEGER REFERENCES person(id),
CREATE TABLE schedule(
    id          SERIAL PRIMARY KEY,
    group_id     INTEGER REFERENCES groups(id),
    subject_id   INTEGER REFERENCES subjects(id),
    teacher_id   INTEGER REFERENCES teachers(id),
);
 
