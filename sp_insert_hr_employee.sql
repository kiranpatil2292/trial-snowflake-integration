
-- =====================================================
-- File Name  : sp_insert_hr_employee.sql
-- Object     : Stored Procedure
-- Purpose    : Insert employee record
-- =====================================================

CREATE OR REPLACE PROCEDURE HR_DB.HR_SCHEMA.SP_INSERT_HR_EMPLOYEE (
    P_EMP_ID NUMBER,
    P_EMP_NAME STRING,
    P_DEPARTMENT STRING,
    P_SALARY NUMBER
)
RETURNS STRING
LANGUAGE SQL
EXECUTE AS OWNER
AS
$$
BEGIN
    INSERT INTO HR_DB.HR_SCHEMA.HR_EMPLOYEE (
        EMP_ID,
        EMP_NAME,
        DEPARTMENT,
        SALARY,
        HIRE_DATE,
        EMP_STATUS
    )
    VALUES (
        P_EMP_ID,
        P_EMP_NAME,
        P_DEPARTMENT,
        P_SALARY,
        CURRENT_DATE,
        'ACTIVE'
    );

    RETURN 'Employee inserted successfully';
END;
$$;
