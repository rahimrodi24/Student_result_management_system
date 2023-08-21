sudo systemctl start mysql




create table department (
   department_id INT PRIMARY KEY,
   department_name VARCHAR(100) DEFAULT NULL,
   Creationdate timestamp NULL DEFAULT current_timestamp(),
   Updationdate timestamp NULL DEFAULT NULL
    );


    create table subject (
   subject_code INT PRIMARY KEY,
   subject_name VARCHAR(100),
   Creationdate timestamp NULL DEFAULT current_timestamp(),
   Updationdate timestamp NULL DEFAULT NULL
    );

  CREATE TABLE class (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(100),
    Creationdate timestamp NULL DEFAULT current_timestamp(),
    Updationdate timestamp NULL DEFAULT NULL
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);


   CREATE TABLE class_subject (
    class_subject_id INT PRIMARY KEY,
    Creationdate timestamp NULL DEFAULT current_timestamp(),
    Updationdate timestamp NULL DEFAULT NULL
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES class(class_id),
    subject_id INT,
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id)
);

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    student_password VARCHAR(100),
    student_father_name VARCHAR(100),
    Creationdate timestamp NULL DEFAULT current_timestamp(),
    Updationdate timestamp NULL DEFAULT NULL
    role_id INT,
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES class(class_id)
);

CREATE TABLE marks (
    marks_id INT PRIMARY KEY,
    Creationdate timestamp NULL DEFAULT current_timestamp(),
    Updationdate timestamp NULL DEFAULT NULL
    subject_id INT,
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);

   create table admin (
   User_id INT PRIMARY KEY,
   UserName VARCHAR(100),
   role_id VARCHAR(100),
   );
  ALTER id int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
