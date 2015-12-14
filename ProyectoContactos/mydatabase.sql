create database mydatabase;
CREATE TABLE CONTACTS
(   id           serial PRIMARY KEY,
    firstname    VARCHAR(30),
    lastname    VARCHAR(30),
    telephone   VARCHAR(15),
    email         VARCHAR(30),
    created     TIMESTAMP DEFAULT NOW()
);
