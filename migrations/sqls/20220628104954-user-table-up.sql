/* Replace with your SQL commands */
CREATE TABLE user_d( id SERIAL PRIMARY KEY, email VARCHAR(50) NOT NULL UNIQUE, 
 username VARCHAR(50) NOT NULL,password VARCHAR(50) NOT NULL, 
first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL);