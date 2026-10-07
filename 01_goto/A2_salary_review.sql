SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 600000;
BEGIN
    IF v_salary >= 800000 THEN
        GOTO high_salary;
    ELSIF v_salary >= 500000 THEN
        GOTO average_salary;
    ELSE
        GOTO low_salary;
    END IF;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary review: High salary.');
    GOTO finish;

    <<average_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary review: Average salary.');
    GOTO finish;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary review: Low salary.');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary review completed.');
END;
/