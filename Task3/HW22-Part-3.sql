CREATE DATABASE university_db ;

USE university_db;

CREATE TABLE Student
(
student_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
data_of_birth  DATE  
);

CREATE TABLE Module
(
module_id INT PRIMARY KEY AUTO_INCREMENT,
module_title VARCHAR(50) NOT NULL,
level INT NOT NULL,
credits INT NOT NULL DEFAULT 20
);


CREATE TABLE registration
(
student_id INT,
module_id INT,
result  NUMERIC,
PRIMARY KEY(Student_id,module_id),
FOREIGN KEY (student_id) REFERENCES  Student (student_id),
FOREIGN KEY (module_id) REFERENCES Module(module_id)
);

INSERT INTO Student 
VALUES (1, 'Daniel', 'Radcliffe', '1994-07-15');
 
INSERT INTO Student 
VALUES (2, 'Emma', 'Watson', '1994-07-15');
 
INSERT INTO Student 
VALUES (3, 'Rupert', 'Grint', '1995-10-24');
 
INSERT INTO Module 
VALUES (1, 'Math', 1, 30);

INSERT INTO Module (module_id, module_title, level_)
VALUES (2, 'Physics', 1);

INSERT INTO Module 
VALUES (3, 'Chemistry', 1, 15);

INSERT INTO registration (student_id, module_id) 
VALUES (1, 1);

INSERT INTO registration (student_id, module_id) 
VALUES (1,2);

INSERT INTO registration (student_id, module_id ) 
VALUES (1,3);
 
 
INSERT INTO registration (student_id, module_id ) 
VALUES (2,3);

INSERT INTO registration (student_id, module_id ) 
VALUES (2,1);

INSERT INTO registration (student_id, module_id ) 
VALUES (3,2);

INSERT INTO registration (student_id, module_id ) 
VALUES (3,1);



SELECT * FROM Student;
SELECT * FROM Module;
SELECT * FROM registration;