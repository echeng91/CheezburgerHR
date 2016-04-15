--------------------------------------------------------
--  File created - Friday-April-15-2016   
--------------------------------------------------------
REM INSERTING into ORA1.CH_ACTIVITY
SET DEFINE OFF;
Insert into ORA1.CH_ACTIVITY (ACTID,ACTCODE,ACTDESCRIPTION) values (10,'AP','Approval');
Insert into ORA1.CH_ACTIVITY (ACTID,ACTCODE,ACTDESCRIPTION) values (1,'NT','Nationality Check');
Insert into ORA1.CH_ACTIVITY (ACTID,ACTCODE,ACTDESCRIPTION) values (2,'WR','Work History and Reference Check');
Insert into ORA1.CH_ACTIVITY (ACTID,ACTCODE,ACTDESCRIPTION) values (3,'DV','Degree Validation');
Insert into ORA1.CH_ACTIVITY (ACTID,ACTCODE,ACTDESCRIPTION) values (4,'DS','Drug Screen Test');
Insert into ORA1.CH_ACTIVITY (ACTID,ACTCODE,ACTDESCRIPTION) values (5,'VS','Veteran Status Check');
Insert into ORA1.CH_ACTIVITY (ACTID,ACTCODE,ACTDESCRIPTION) values (6,'HI','Human Resource Interview');
Insert into ORA1.CH_ACTIVITY (ACTID,ACTCODE,ACTDESCRIPTION) values (7,'MI','Hiring Manager Interview');
Insert into ORA1.CH_ACTIVITY (ACTID,ACTCODE,ACTDESCRIPTION) values (8,'GI','Group Interview');
Insert into ORA1.CH_ACTIVITY (ACTID,ACTCODE,ACTDESCRIPTION) values (9,'CT','Coding Test');

REM INSERTING into ORA1.CH_JOBTYPE
SET DEFINE OFF;
Insert into ORA1.CH_JOBTYPE (JOB_ID,JOB_CODE,JOB_DESCRIPTION) values (1,'ACCT','Accountant');
Insert into ORA1.CH_JOBTYPE (JOB_ID,JOB_CODE,JOB_DESCRIPTION) values (2,'PROG','Programmer');
Insert into ORA1.CH_JOBTYPE (JOB_ID,JOB_CODE,JOB_DESCRIPTION) values (3,'BSAT','Business Analyst');

REM INSERTING into ORA1.CH_ACTIVITY_DEPENDENCY
SET DEFINE OFF;
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (1,2,6,2);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (2,2,7,6);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (3,2,8,7);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (4,2,9,6);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (5,2,10,1);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (6,2,10,3);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (7,2,10,4);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (8,2,10,5);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (9,2,10,8);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (10,2,10,9);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (11,1,6,2);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (12,1,7,6);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (13,1,8,7);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (14,1,10,1);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (15,1,10,3);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (16,1,10,5);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (17,1,10,8);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (18,3,6,2);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (19,3,7,6);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (20,3,8,7);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (21,3,10,1);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (22,3,10,3);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (23,3,10,4);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (24,3,10,5);
Insert into ORA1.CH_ACTIVITY_DEPENDENCY (ACTDEPID,JOB_ID,ACTID,DEPACTID) values (25,3,10,8);
REM INSERTING into ORA1.CH_APPLICATION
SET DEFINE OFF;
Insert into ORA1.CH_APPLICATION (APPID,NAME,ADDRESS,BIRTHDAY,EDUCATION,JOBHISTORY,APPREF,JOB_ID,DRUGUSE,VETERAN,CITIZEN,APPSTATUS,CREATEDATE,MODDATE) values (1,'Joe','Zootopia','11/11/1995','master','xxxxxxxx','none',2,'LOL','nope','yes','C',to_date('15-APR-16','DD-MON-RR'),to_date('15-APR-16','DD-MON-RR'));
REM INSERTING into ORA1.CH_APPLICATION_ACTIVITY
SET DEFINE OFF;
Insert into ORA1.CH_APPLICATION_ACTIVITY (APPACTID,APPID,ACTID,ACTSTATUS,ACTMODDATE) values (1,1,1,'I',to_date('15-APR-16','DD-MON-RR'));
Insert into ORA1.CH_APPLICATION_ACTIVITY (APPACTID,APPID,ACTID,ACTSTATUS,ACTMODDATE) values (2,1,2,'I',to_date('15-APR-16','DD-MON-RR'));
Insert into ORA1.CH_APPLICATION_ACTIVITY (APPACTID,APPID,ACTID,ACTSTATUS,ACTMODDATE) values (3,1,3,'I',to_date('15-APR-16','DD-MON-RR'));
Insert into ORA1.CH_APPLICATION_ACTIVITY (APPACTID,APPID,ACTID,ACTSTATUS,ACTMODDATE) values (4,1,4,'I',to_date('15-APR-16','DD-MON-RR'));
Insert into ORA1.CH_APPLICATION_ACTIVITY (APPACTID,APPID,ACTID,ACTSTATUS,ACTMODDATE) values (5,1,5,'I',to_date('15-APR-16','DD-MON-RR'));
Insert into ORA1.CH_APPLICATION_ACTIVITY (APPACTID,APPID,ACTID,ACTSTATUS,ACTMODDATE) values (6,1,6,'I',to_date('15-APR-16','DD-MON-RR'));
Insert into ORA1.CH_APPLICATION_ACTIVITY (APPACTID,APPID,ACTID,ACTSTATUS,ACTMODDATE) values (7,1,7,'I',to_date('15-APR-16','DD-MON-RR'));
Insert into ORA1.CH_APPLICATION_ACTIVITY (APPACTID,APPID,ACTID,ACTSTATUS,ACTMODDATE) values (8,1,8,'I',to_date('15-APR-16','DD-MON-RR'));
Insert into ORA1.CH_APPLICATION_ACTIVITY (APPACTID,APPID,ACTID,ACTSTATUS,ACTMODDATE) values (9,1,9,'I',to_date('15-APR-16','DD-MON-RR'));
Insert into ORA1.CH_APPLICATION_ACTIVITY (APPACTID,APPID,ACTID,ACTSTATUS,ACTMODDATE) values (10,1,10,'I',to_date('15-APR-16','DD-MON-RR'));
REM INSERTING into ORA1.CH_HRROLE
SET DEFINE OFF;
Insert into ORA1.CH_HRROLE (HR_ID,ROLE_CODE,ROLE_DESCRIPTION) values (1,'HRM','HR Manager');
Insert into ORA1.CH_HRROLE (HR_ID,ROLE_CODE,ROLE_DESCRIPTION) values (2,'HRS','HR Specialist');
Insert into ORA1.CH_HRROLE (HR_ID,ROLE_CODE,ROLE_DESCRIPTION) values (3,'HRA','HR Assistant');
Insert into ORA1.CH_HRROLE (HR_ID,ROLE_CODE,ROLE_DESCRIPTION) values (4,'HRH','Healthcare Professional');
Insert into ORA1.CH_HRROLE (HR_ID,ROLE_CODE,ROLE_DESCRIPTION) values (5,'HRC','Compliance Officer');
Insert into ORA1.CH_HRROLE (HR_ID,ROLE_CODE,ROLE_DESCRIPTION) values (6,'HIM','Hiring Manager');
Insert into ORA1.CH_HRROLE (HR_ID,ROLE_CODE,ROLE_DESCRIPTION) values (7,'HGI','Group Interviewer');



REM INSERTING into ORA1.CH_JOBACTIVITY
SET DEFINE OFF;
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (25,1,10);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (26,2,10);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (27,3,10);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (1,2,1);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (2,2,2);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (3,2,3);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (4,2,4);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (5,2,5);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (6,2,6);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (7,2,7);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (8,2,8);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (9,2,9);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (10,1,1);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (11,1,2);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (12,1,3);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (13,1,5);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (14,1,6);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (15,1,7);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (16,1,8);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (17,3,1);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (18,3,2);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (19,3,3);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (20,3,4);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (21,3,5);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (22,3,6);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (23,3,7);
Insert into ORA1.CH_JOBACTIVITY (JOBACT_ID,JOB_ID,ACTID) values (24,3,8);

REM INSERTING into ORA1.CH_ROLE_ACTIVITY
SET DEFINE OFF;
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (29,7,10,'1');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (1,5,1,'1');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (2,3,2,'1');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (3,2,3,'1');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (4,4,4,'1');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (5,3,5,'1');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (6,1,1,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (7,1,2,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (8,1,3,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (9,1,4,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (10,1,5,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (11,1,6,'1');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (12,6,1,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (13,6,2,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (14,6,3,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (15,6,4,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (16,6,5,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (17,6,6,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (18,6,7,'1');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (19,6,9,'1');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (20,7,1,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (21,7,2,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (22,7,3,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (23,7,4,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (24,7,5,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (25,7,6,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (26,7,7,'0');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (27,7,8,'1');
Insert into ORA1.CH_ROLE_ACTIVITY (ROLEACTID,HR_ID,ACTID,RAACCESS) values (28,7,9,'1');
REM INSERTING into ORA1.CH_USER
SET DEFINE OFF;
Insert into ORA1.CH_USER (USERID,USERNAME,PASSWORD) values (1,'one','111');
Insert into ORA1.CH_USER (USERID,USERNAME,PASSWORD) values (2,'two','222');
Insert into ORA1.CH_USER (USERID,USERNAME,PASSWORD) values (3,'three','333');
Insert into ORA1.CH_USER (USERID,USERNAME,PASSWORD) values (4,'four','444');
Insert into ORA1.CH_USER (USERID,USERNAME,PASSWORD) values (5,'five','555');
Insert into ORA1.CH_USER (USERID,USERNAME,PASSWORD) values (6,'six','666');
Insert into ORA1.CH_USER (USERID,USERNAME,PASSWORD) values (7,'seven','777');
Insert into ORA1.CH_USER (USERID,USERNAME,PASSWORD) values (8,'eight','888');
Insert into ORA1.CH_USER (USERID,USERNAME,PASSWORD) values (9,'nine','999');
REM INSERTING into ORA1.CH_USER_ROLE
SET DEFINE OFF;
Insert into ORA1.CH_USER_ROLE (USERROLEID,USERID,HR_ID) values (1,1,1);
Insert into ORA1.CH_USER_ROLE (USERROLEID,USERID,HR_ID) values (2,2,2);
Insert into ORA1.CH_USER_ROLE (USERROLEID,USERID,HR_ID) values (3,3,3);
Insert into ORA1.CH_USER_ROLE (USERROLEID,USERID,HR_ID) values (4,4,4);
Insert into ORA1.CH_USER_ROLE (USERROLEID,USERID,HR_ID) values (5,5,5);
Insert into ORA1.CH_USER_ROLE (USERROLEID,USERID,HR_ID) values (6,6,6);
Insert into ORA1.CH_USER_ROLE (USERROLEID,USERID,HR_ID) values (7,7,7);
Insert into ORA1.CH_USER_ROLE (USERROLEID,USERID,HR_ID) values (8,8,1);
Insert into ORA1.CH_USER_ROLE (USERROLEID,USERID,HR_ID) values (9,9,7);
