use hrdb;
create table TBL_FNL_EMPLOYEES
(EMPLOYEE_ID int primary key,
EMPLOYEE_NAME varchar(50) not null,
EMAIL varchar(50)unique,
PHONE_NUMBER varchar(15)unique,
HIRE_DATE date default (current_date) ,
JOB_ID varchar(10),
SALARY Decimal(10,2) ,
COMMISSION_PCT Decimal(3,2),
MONTHLY_SALARY Decimal(15,2),
SALARY_CATEGORY int ,
MANAGER_ID int,
DEPARTMENT_ID int);




create table TBL_FNL_DEPARTMENTS
(DEPARTMENT_ID INT primary key,
DEPARTMENT_NAME varchar(50),
MANAGER_ID INT,
LOCATION_ID INT);




create table TBL_FNL_LOCATIONS
(LOCATION_ID INT primary key,
STREET_ADDRESS varchar(50),
POSTAL_CODE int,
CITY varchar(25),
STATE_PROVINCE varchar(25),
COUNTRY_ID varchar(2));




create table TBL_FNL_COUNTRIES
(COUNTRY_ID varchar(2) primary key,
COUNTRY_NAME varchar(25),
REGION_ID int);




create table TBL_FNL_REGIONS
( REGION_ID int primary key,
REGION_NAME varchar(50) not null,
REGION varchar(50)not null);

create table TBL_FNL_JOBS
(JOB_ID varchar(10)primary key,
MIN_SALARY decimal(10,2) check (min_salary>0),
MAX_SALARY decimal(10,2)check (max_salary>0),
JOB_TITAL varchar(50)not null);


create table TBL_FNL_JOB_HISTORY
(EMPLOYEE_ID int,
START_DATE DATE,
END_DATE DATE,
JOB_ID VARCHAR(10),
DEPARTMENT_ID INT);










alter table tbl_fnl_employees
add constraint foreign key(Manager_ID ) references tbl_fnl_employees
(Employee_ID),
add constraint foreign key(Department_ID) references 
tbl_fnl_departments(department_ID);


alter table tbl_fnl_job_history
 add constraint foreign key(Employee_ID) references 
tbl_fnl_employees(Employee_ID),
 add constraint  foreign key(job_ID) references tbl_fnl_jobs(job_ID),
 add constraint foreign key (Department_ID) references
 tbl_fnl_departments(Department_ID);
 

alter table tbl_fnl_departments
add constraint foreign key (Manager_ID ) references tbl_fnl_employees
(Employee_ID),
add constraint foreign key(Location_ID) references 
tbl_fnl_locations( Location_ID);

alter table tbl_fnl_locations
add constraint foreign key (country_ID) references 
 tbl_fnl_countries(country_ID);
 
 
 alter table tbl_fnl_countries
add constraint foreign key (region_ID) references
tbl_fnl_regions(region_ID);
