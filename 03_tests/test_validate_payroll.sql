SELECT
    employee_id,
    first_name,
    salary,
    fn_validate_payroll(salary) AS payroll_status
FROM employees;