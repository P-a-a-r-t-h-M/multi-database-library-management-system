--Question 1.5:

CREATE OR REPLACE PROCEDURE registers_student_for_module(p_studentNo IN NUMBER,
                                                         p_moduleCode IN VARCHAR2) AS

    v_check NUMBER;

BEGIN
    SELECT COUNT(*) INTO v_check
    FROM REGISTRATION
    WHERE studentNo = p_studentNo AND moduleCode = p_moduleCode;
    
    IF v_check = 0 THEN
        INSERT INTO REGISTRATION (studentNo, moduleCode)
        VALUES (p_studentNo, p_moduleCode);
        DBMS.OUTPUT.PUT_LINE('Student registered successfully. Record inserted.');
    ELSE
        DBMS.OUTPUT.PUT_LINE('Student already registered for this module. Record not inserted.');
    END IF;
END;
/

COMMIT;