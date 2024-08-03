create DATABASE FranciscoDB;

DROP TABLE StudentGrade;

CREATE TABLE StudentGrade (
    CourseCode VARCHAR(20),
    CourseTitle VARCHAR(50),
    Units INT,
    Grade FLOAT
);

-- Insert data
INSERT INTO StudentGrade (CourseCode, CourseTitle, Units, Grade)
VALUES 
    ('COSC1003', 'Data Structures and Algorithms', 3, 1.50),
    ('GEDC1006', 'Readings in Philippine History', 3, 2.25),
    ('PHED1003', 'Physical Education 3', 2, 1.25),
    ('GEDC1014', 'Rizal’s Life and Works', 3, 1.5),
    ('COSC1007', 'Human-Computer Interaction', 3, 1.25),
    ('INTE1044', 'Object-Oriented Programming', 3, 1.75),
    ('COSC1001', 'Principles of Communication', 3, 2.25),
    ('COSC1008', 'Platform Technology', 3, 1.50);

-- a. The number of courses/subjects
SELECT COUNT(*) AS NumberOfCourses FROM StudentGrade;
-- b. The total units
SELECT SUM (Units) AS TotalUnits FROM StudentGrade;
-- c. The number of courses with grades higher than 2.00 (lower than 2.00 in the column)
SELECT COUNT(*) AS CourseBelow2 FROM StudentGrade WHERE Grade < 2.00;
-- d. The number of courses with grades lower than 2.00 (higher than 2.00 in the column) 
SELECT COUNT(*) AS CourseAbove2 FROM StudentGrade WHERE Grade > 2.00;
-- e. The general weighted average
SELECT (ROUND(SUM(Units * Grade) / SUM(Units), 2)) AS GeneralWeightedAverage FROM StudentGrade;





