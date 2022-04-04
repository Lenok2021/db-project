-- This is how write comment in sql
-- single line comment like this
/*
 This is how you write multilines in sql
 */
--each query you write known as sql statement
-- * means all, here it means all columns
-- from sometable that exist in the database
-- JUST like Java SQL statement ends with semi-colon, and this MANDATORY!!!
-- IF YOU to RUN only on statement click courser to statement this statement will be run

-- click on Data Base settings you can change your settings

SELECT * FROM COUNTRIES ;

SELECT * FROM REGIONS ;

SELECT * FROM LOCATIONS ;

SELECT * FROM  DEPARTMENTS ;

SELECT * FROM JOBS ;

SELECT * FROM JOB_HISTORY ;

SELECT * FROM EMPLOYEES ;

-- what if I want to see specific COLUMNS???
-- SQL IS SPACE INSENSITIVE

-- let' select one column
SELECT FIRST_NAME
FROM EMPLOYEES ;

-- let's select two columns, separated by comma
SELECT FIRST_NAME, LAST_NAME
FROM EMPLOYEES ;

-- let's select three columns
SELECT FIRST_NAME, LAST_NAME, EMAIL
FROM EMPLOYEES ;


/*
 Only getting Unique value from the result
 for a example, only get unique name from employees table
 */

--Get  only  unique first name
SELECT DISTINCT FIRST_NAME
FROM EMPLOYEES ;  -- 91 ROWS

-- Get only  unique second name
SELECT DISTINCT LAST_NAME
FROM EMPLOYEES ; -- 102 ROWS

SELECT DISTINCT FIRST_NAME, LAST_NAME  -- 107 ROWS
FROM EMPLOYEES ; -- This looking for people with unique first and last name, full name


-- RESTRICTING ROWS IN THE RESULT USING WHERE CLAUSE

-- OPERATORS = , > , >=, < , <= , != , <>
--LOGICAL OPERATORS :  AND /   OR

--Display the Employee information for the employee with first_name Ellen

-- in SQL  we use single quote for String
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME = 'Ellen' ;

-- REMEMBER!!!!!  you  can write Keyword from capital letter or small letter
--  BUT Value is case sensitive ELLEN != Ellen

/*TASK : --Display the Employee information for
the employee with SALARY 100000

  */

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE  SALARY = 11000 ;

/*
 TASK : Display the Employee FIRST_NAME, LAST_NAME, SALARY
 for the employee with SALARY 4800 OR FIRST_NAME is  David
 */

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE  FIRST_NAME = 'David' OR SALARY = 11000 ;

/*
SELECT * FROM EMPLOYEE
SALARY > 5000 AND SALARY < 12000
 */


-- TASK : Display the employee that make MORE Than 5000 and LESS that 12000
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY > 5000 AND SALARY < 12000;
/*
SELECT * FROM EMPLOYEES
SALARY > 5000 AND SALARY < 12000  // another solution
 */



-- TASK : Display the employees that have JOB_ID of
                                       -- AC_ACCOUNT
                                       -- AD_VP
                                       --AD_ASST
                                     --FI_ACCOUNT

SELECT * FROM EMPLOYEES
WHERE JOB_ID = 'AD_VP'
OR JOB_ID = 'AC_ACCOUNT'
OR JOB_ID = 'FI_ACCOUNT'
OR JOB_ID = 'AD_ASST' ;