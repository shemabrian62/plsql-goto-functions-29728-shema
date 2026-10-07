SET SERVEROUTPUT ON;

BEGIN
    GOTO inside_block;

    <<inside_block>>
    DBMS_OUTPUT.PUT_LINE('The GOTO now points to a valid label.');
END;
/