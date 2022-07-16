CREATE TABLE completeData (

completeData_id SERIAL PRIMARY KEY,
seationLead_id INT NOT NULL,
student_id INT NOT NULL, 
FOREIGN KEY (seationLead_id) REFERENCES seationLead (seationLead_id),
FOREIGN KEY (student_id) REFERENCES students (student_id)

);