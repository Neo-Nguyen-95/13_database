DROP DATABASE da30v2;

CREATE DATABASE IF NOT EXISTS da30v2;

USE da30v2;

CREATE TABLE IF NOT EXISTS collection (
    collection_id INT,
    title VARCHAR(255),
    accession_number VARCHAR(255) NOT NULL UNIQUE,
    aquired VARCHAR(255),
    PRIMARY KEY(collection_id)
);

CREATE TABLE IF NOT EXISTS author (
    author_id INT,
    name TEXT,
    PRIMARY KEY(author_id) 
);

CREATE TABLE IF NOT EXISTS created (
    collection_id INT,
    author_id INT,
    CONSTRAINT fk_c_c FOREIGN KEY(collection_id) REFERENCES collection(collection_id),
    CONSTRAINT fk_c_a FOREIGN KEY(author_id) REFERENCES author(author_id)  
);

