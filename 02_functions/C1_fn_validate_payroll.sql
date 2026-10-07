CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_salary NUMBER
)
RETURN VARCHAR2
IS
BEGIN
    IF p_salary IS NULL THEN
        RETURN 'INVALID: Salary is NULL';
    ELSIF p_salary <= 0 THEN
        RETURN 'INVALID: Salary must be greater than zero';
    ELSE
        RETURN 'VALID: Payroll information is correct';
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RETURN 'INVALID: Unexpected error';
END;
/

SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE(fn_validate_payroll(500000));
    DBMS_OUTPUT.PUT_LINE(fn_validate_payroll(0));
    DBMS_OUTPUT.PUT_LINE(fn_validate_payroll(NULL));
END;
/