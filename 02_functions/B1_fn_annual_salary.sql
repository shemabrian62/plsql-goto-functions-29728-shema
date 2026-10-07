CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_monthly_salary NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN p_monthly_salary * 12;
END;
/

SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Annual salary: ' || fn_annual_salary(500000));
END;
/