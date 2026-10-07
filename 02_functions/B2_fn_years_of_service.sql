CREATE OR REPLACE FUNCTION fn_years_of_service (
    p_hire_date DATE
)
RETURN NUMBER
IS
BEGIN
    RETURN TRUNC(MONTHS_BETWEEN(SYSDATE, p_hire_date) / 12);
END;
/

SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Years of service: ' || fn_years_of_service(DATE '2023-01-15'));
END;
/