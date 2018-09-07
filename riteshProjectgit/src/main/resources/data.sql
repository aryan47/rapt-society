insert into Instructor(id, name, email, password) values(100,'ritesh','rit@gmail.com','password');
insert into Instructor(id, name, email, password) values(101,'subu','subu@gmail.com','password');
insert into Instructor(id, name, email, password) values(102,'ravi','ravi@gmail.com','password');
insert into Instructor(id,name, email, password) values(103,'rani','rani@gmail.com','password');
insert into Instructor(id,name, email, password) values(104,'roshan','roshan@gmail.com','password');

insert into Subject(id, name) values(200,'ENGLISH');
insert into Subject(id, name) values(201,'PHYSICS');
insert into Subject(id, name) values(202,'CHEMISTRY');


insert into Student(id,FIRST_NAME,LAST_NAME, email, password) values(300,'soni','kumari','soni@gmail.com','password');
insert into Student(id,FIRST_NAME,LAST_NAME, email, password) values(301,'moni','kumari','moni@gmail.com','password');
insert into Student(id,FIRST_NAME,LAST_NAME, email, password) values(302,'chingu','kumar','chingu@gmail.com','password');
insert into Student(id,FIRST_NAME,LAST_NAME, email, password) values(303,'chinti','ritesh','chinti@gmail.com','password');
insert into Student(id,FIRST_NAME,LAST_NAME,email, password) values(304,'ravi','kant','ravi@gmail.com','$2a$10$o1hzjOiIuGHH3GdHeW2O9OxWBoxagCI1PJJIZyAzCQdyTkgWo3eG6');
insert into Student(id,FIRST_NAME,LAST_NAME, email, password) values(305,'aryan','hitesh','aryan.hitesh47@gmail.com','$2a$10$T1TS.oFTT756N8tg/0q64um2ygkFvBtO5WHHU9P2yKVMU8lvHHQd.');

insert into Location(id, name,city) values(400,'edalhatu','ranchi');
insert into Location(id, name,city) values(401,'bariatu','ranchi');
insert into Location(id, name,city) values(402,'rayagada','orissa');
insert into Location(id, name,city) values(403,'kanke','ranchi');


insert into Standard(id, name) values(500,'1');
insert into Standard(id, name) values(501,'2');
insert into Standard(id, name) values(502,'3');
insert into Standard(id, name) values(503,'4');
insert into Standard(id, name) values(504,'5');

insert into INSTRUCTOR_STUDENT (INSTRUCTOR_id , STUDENT_id  ) values(100,303);
insert into INSTRUCTOR_STUDENT (INSTRUCTOR_id , STUDENT_id  ) values(101,302);
insert into INSTRUCTOR_STUDENT (INSTRUCTOR_id , STUDENT_id  ) values(102,300);
insert into INSTRUCTOR_STUDENT (INSTRUCTOR_id , STUDENT_id  ) values(102,301);

insert into INSTRUCTOR_subject(INSTRUCTOR_id , SUBJECT_id  ) values(100,200);
insert into INSTRUCTOR_subject(INSTRUCTOR_id , SUBJECT_id  ) values(100,201);
insert into INSTRUCTOR_subject(INSTRUCTOR_id , SUBJECT_id  ) values(100,202);
insert into INSTRUCTOR_subject(INSTRUCTOR_id , SUBJECT_id  ) values(101,202);
insert into INSTRUCTOR_subject(INSTRUCTOR_id , SUBJECT_id  ) values(102,201);
insert into INSTRUCTOR_subject(INSTRUCTOR_id , SUBJECT_id  ) values(102,202);

insert into INSTRUCTOR_location(INSTRUCTOR_id , location_id  ) values(100,400);
insert into INSTRUCTOR_location(INSTRUCTOR_id , location_id  ) values(100,401);
insert into INSTRUCTOR_location(INSTRUCTOR_id , location_id  ) values(101,402);
insert into INSTRUCTOR_location(INSTRUCTOR_id , location_id  ) values(101,400);

insert into standard_subject(standard_id , SUBJECT_id  ) values(504,201);
insert into standard_subject(standard_id , SUBJECT_id  ) values(504,202);

insert into role(role_id,role) values(600,'USER');


insert into user_role(user_id, role_id) values(305,600);

insert into BOOK_CONFIRM_DETAILS
(name,subject,address,city, landmark, pin, state, date, email,phone_no,std) 
values('ritesh','physics','morabadi','ranchi','school',834008,'jh', CURRENT_DATE() ,'aryan.hitesh47@gmail.com',999999999,1);
insert into BOOK_CONFIRM_DETAILS
(name,subject,address,city, landmark, pin, state, date, email,phone_no,std) 
values('subu','chem','morabadi','ranchi','school',834008,'jh', CURRENT_DATE() ,'subu@gmail.com',999999999,2);
insert into BOOK_CONFIRM_DETAILS
(name,subject,address,city, landmark, pin, state, date, email,phone_no,std) values('ritesh','chemistry','morabadi','ranchi','school',834008,'jh', CURRENT_DATE() ,'aryan.hitesh47@gmail.com',999999999,3)
