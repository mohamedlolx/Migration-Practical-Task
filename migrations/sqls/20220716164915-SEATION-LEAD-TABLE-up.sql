CREATE TABLE seationLead (

seationLead_id SERIAL PRIMARY KEY,
seationLead_name VARCHAR(255) NOT NULL,
seationLead_group VARCHAR(255) NOT NULL,
lecture_id INT NOT NULL, 
FOREIGN KEY (lecture_id) REFERENCES lecture (lecture_id) 

);