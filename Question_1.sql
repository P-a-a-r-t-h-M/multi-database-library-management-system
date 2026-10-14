--Question 1.1:

CREATE TABLE INSTRUCTOR (
    instructorID NUMBER PRIMARY KEY,
    instructorName VARCHAR2 (100) NOT NULL
);

CREATE TABLE MODULE(
    moduleCode VARCHAR2 (10) PRIMARY KEY,
    moduleName VARCHAR2 (50) NOT NULL,
    instructorID NUMBER,
    FOREIGN KEY (instructorID) REFERENCES INSTRUCTOR(instructorID)
);

CREATE TABLE STUDENT (
    studentNo NUMBER PRIMARY KEY,
    studentName VARCHAR2 (100)NOT NULL
);

CREATE TABLE REGISTRATION (
    moduleCode VARCHAR2 (10),
    studentNo NUMBER,
    PRIMARY KEY (moduleCode, studentNo),
    FOREIGN KEY (moduleCode) REFERENCES MODULE(moduleCode),
    FOREIGN KEY (studentNo) REFERENCES STUDENT(studentNo)
);

COMMIT;