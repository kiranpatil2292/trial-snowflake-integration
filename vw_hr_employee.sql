
-- =====================================================
-- File Name  : vw_hr_employee.sql
-- Object     : View
-- Purpose    : Active employee view
-- =====================================================

CREATE OR REPLACE VIEW HR_DB.HR_SCHEMA.VW_HR_EMPLOYEE AS
SELECT
    EMP_ID,
    EMP_NAME,
    GENDER,
    DEPARTMENT,
    JOB_LEVEL,
    HIRE_DATE,
    TERMINATION_DATE,
    EMP_STATUS,
    LOCATION,
    SALARY,
    PERFORMANCE_RATING,
    MANAGER_ID
FROM HR_DB.HR_SCHEMA.HR_EMPLOYEE
WHERE EMP_STATUS = 'ACTIVE';
