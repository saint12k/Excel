CREATE TABLE students (
    student_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    enrollment_date DATE NOT NULL,
    major VARCHAR(50) NOT NULL
);
CREATE TABLE courses (
    course_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL CHECK (credits > 0),
    department VARCHAR(50) NOT NULL
);

CREATE TABLE instructors (
    instructor_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL,
    department VARCHAR(50) NOT NULL
);

CREATE TABLE enrollments (
    enrollment_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    semester VARCHAR(10) NOT NULL,
    year INT NOT NULL,
    grade VARCHAR(2),
    CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE
);

-- Insert 10 Students
INSERT INTO students (first_name, last_name, date_of_birth, enrollment_date, major) VALUES
('Alice', 'Smith', '2002-05-14', '2020-08-25', 'Computer Science'),
('Bob', 'Johnson', '2001-11-20', '2019-08-25', 'Biology'),
('Charlie', 'Williams', '2003-02-10', '2021-08-25', 'Mathematics'),
('Diana', 'Brown', '2002-09-03', '2020-08-25', 'Computer Science'),
('Ethan', 'Jones', '2000-12-18', '2018-08-25', 'History'),
('Fiona', 'Garcia', '2003-07-22', '2021-08-25', 'Physics'),
('George', 'Miller', '2001-04-12', '2019-08-25', 'English'),
('Hannah', 'Davis', '2002-01-30', '2020-08-25', 'Biology'),
('Ian', 'Rodriguez', '2003-10-05', '2021-08-25', 'Mathematics'),
('Julia', 'Martinez', '2001-08-16', '2019-08-25', 'Computer Science');

-- Insert 8 Courses
INSERT INTO courses (course_name, credits, department) VALUES
('Introduction to Computer Science', 4, 'Computer Science'),
('Calculus I', 4, 'Mathematics'),
('General Biology', 3, 'Biology'),
('World History', 3, 'History'),
('University Physics', 4, 'Physics'),
('Data Structures', 3, 'Computer Science'),
('Linear Algebra', 3, 'Mathematics'),
('Organic Chemistry', 4, 'Chemistry');

-- Insert 5 Instructors
INSERT INTO instructors (first_name, last_name, hire_date, department) VALUES
('Alan', 'Turing', '2015-08-15', 'Computer Science'),
('Katherine', 'Johnson', '2012-01-10', 'Mathematics'),
('Charles', 'Darwin', '2010-08-20', 'Biology'),
('Howard', 'Zinn', '2018-06-01', 'History'),
('Marie', 'Curie', '2011-09-01', 'Physics');

-- Insert 20 Enrollments
INSERT INTO enrollments (student_id, course_id, semester, year, grade) VALUES
(1, 1, 'Fall', 2020, 'A'),
(1, 2, 'Fall', 2020, 'B+'),
(2, 3, 'Fall', 2019, 'A-'),
(2, 8, 'Spring', 2020, 'B'),
(3, 2, 'Fall', 2021, 'A'),
(3, 7, 'Spring', 2022, 'A'),
(4, 1, 'Fall', 2020, 'B'),
(4, 6, 'Spring', 2021, 'A-'),
(5, 4, 'Fall', 2018, 'A'),
(6, 5, 'Fall', 2021, 'B+'),
(6, 2, 'Fall', 2021, 'A'),
(7, 4, 'Fall', 2019, 'C+'),
(8, 3, 'Fall', 2020, 'A'),
(8, 8, 'Spring', 2021, 'B-'),
(9, 2, 'Fall', 2021, 'B'),
(9, 7, 'Spring', 2022, 'A'),
(10, 1, 'Fall', 2019, 'A'),
(10, 6, 'Spring', 2020, 'A'),
(10, 5, 'Fall', 2020, 'B'),
(5, 1, 'Spring', 2019, 'C');

SELECT * FROM students;

SELECT * FROM courses 
WHERE credits > 3;

SELECT * FROM instructors 
WHERE department = 'Computer Science';