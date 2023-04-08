CREATE DATABASE  gamersOasis;
USE gamersOasis;


CREATE TABLE games (
    id integer PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(225) NOT NULL,
    contents TEXT NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT NOW()
);