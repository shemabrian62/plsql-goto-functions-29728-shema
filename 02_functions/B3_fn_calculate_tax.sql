CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_salary NUMBER
)
RETURN NUMBER
IS
    v_tax NUMBER;
BEGIN
    IF p_salary <= 300000 THEN
        v_tax := p_salary * 0.10;
    ELSIF p_salary <= 600000 THEN
        v_tax := p_salary * 0.20;
    ELSE
        v_tax := p_salary * 0.30;
    END IF;
    RETURN v_tax;
END;
/

SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Tax: ' || fn_calculate_tax(500000));
END;
/