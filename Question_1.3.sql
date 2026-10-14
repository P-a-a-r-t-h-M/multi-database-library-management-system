--Question 1.3:

INSERT INTO INSTRUCTOR (instructorID, instructorName) VALUES (instructor_seq.NEXTVAL, 'Mr Craig Stephens');
INSERT INTO INSTRUCTOR (instructorID, instructorName) VALUES (instructor_seq.NEXTVAL, 'Ms Garcia Lopez');

INSERT INTO MODULE (moduleCode, moduleName, instructorID) VALUES ('ITDSA', 'Database Systems', 1);
INSERT INTO MODULE (moduleCode, moduleName, instructorID) VALUES ('ITAPA', 'Python Programming', 2);

INSERT INTO STUDENT (studentNo, studentName) VALUES (student_seq.NEXTVAL, 'Cole Parker');
INSERT INTO STUDENT (studentNo, studentName) VALUES (student_seq.NEXTVAL, 'Sofia Taylor');

INSERT INTO REGISTRATION (moduleCode, studentNo) VALUES ('ITDSA', 1);
INSERT INTO REGISTRATION (moduleCode, studentNo) VALUES ('ITAPA', 2);

COMMIT;