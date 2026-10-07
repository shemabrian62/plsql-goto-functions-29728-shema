SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Annual salary: ' || fn_annual_salary(500000));
    DBMS_OUTPUT.PUT_LINE('Years of service: ' || fn_years_of_service(DATE '2023-01-15'));
    DBMS_OUTPUT.PUT_LINE('Tax: ' || fn_calculate_tax(500000));
    DBMS_OUTPUT.PUT_LINE('Department: ' || fn_dept_name(10));
    DBMS_OUTPUT.PUT_LINE('Payroll: ' || fn_validate_payroll(500000));
END;
/