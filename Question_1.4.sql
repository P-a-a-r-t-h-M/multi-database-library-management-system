--Question 1.4:

CREATE OR REPLACE VIEW vw_instructors_modules AS
    SELECT i.instructorName, m.moduleName
    FROM INSTRUCTOR i INNER JOIN MODULE m on i.instructorID = m.instructorID;
    
COMMIT;