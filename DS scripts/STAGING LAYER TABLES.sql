use hrdb;
create table TBL_STG_EMPLOYEES
(Employee_id int,
FIRST_NAME varchar(45),
LAST_NAME varchar(45),
EMAIL varchar(20),
PHONE_NUMBER varchar(13),
HIRE_DATE date,
JOB_ID varchar(10),
SALARY decimal,
COMMISSION_PCT decimal(3,2),
MANAGER_ID int,
DEPARTMENT_ID int
);


create table TBL_STG_JOBS
(JOB_ID varchar(10),
JOB_TITTLE varchar(45),
MIN_SALARY int,
MAX_SALARY int
);

CREATE TABLE TBL_JOB_HISTORY
(EMPLOYEE_ID INT,
START_DATE DATE,
END_DATE DATE,
JOB_ID VARCHAR(10),
DEPARTMENT_ID INT
);


CREATE TABLE TBL_STG_COUNTRIES
(COUNTRY_ID VARCHAR(2),
COUNTRY_NAME VARCHAR(20),
REGION_ID INT
);


CREATE TABLE TBL_STG_LOCATIONS
(LOCATION_ID INT,
STREET_ADDRESS VARCHAR(45),
POSTAL_CODE VARCHAR(20),
CITY VARCHAR (25),
STATE_PROVINCE VARCHAR(25),
COUNTRY_ID VARCHAR(2)
);


CREATE TABLE TBL_STG_DEPARTMENTS
(DEPARTMENT_ID INT,
DEPARTMENT_NAME VARCHAR(45),
MANAGER_ID INT,
LOCATION_ID INT
);


CREATE TABLE TBL_STG_REGIONS
(REGION_ID INT,
REGION_NAME VARCHAR(20)
);