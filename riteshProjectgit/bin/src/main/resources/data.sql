insert into Instructor(id, name, email, password) values(100,'ritesh','rit@gmail.com','password');
insert into Instructor(id,name, email, password) values(101,'subu','subu@gmail.com','password');
insert into Instructor(id,name, email, password) values(102,'ravi','ravi@gmail.com','password');
insert into Instructor(id,name, email, password) values(103,'rani','rani@gmail.com','password');
insert into Instructor(id,name, email, password) values(104,'roshan','roshan@gmail.com','password');

insert into Subject(id, name) values(200,'ENGLISH');
insert into Subject(id, name) values(201,'PHYSICS');
insert into Subject(id, name) values(202,'CHEMISTRY');


insert into Student(id,name, email, password) values(300,'soni','soni@gmail.com','password');
insert into Student(id,name, email, password) values(301,'moni','moni@gmail.com','password');
insert into Student(id,name, email, password) values(302,'chingu','chingu@gmail.com','password');
insert into Student(id,name, email, password) values(303,'chinti','chinti@gmail.com','password');

insert into Location(id, name,city) values(400,'edalhatu','ranchi');
insert into Location(id, name,city) values(401,'bariatu','ranchi');
insert into Location(id, name,city) values(402,'rayagada','orissa');
insert into Location(id, name,city) values(403,'kanke','ranchi');


insert into Standard(id, name) values(500,'class-1');
insert into Standard(id, name) values(501,'class-2');
insert into Standard(id, name) values(502,'class-3');
insert into Standard(id, name) values(503,'class-4');
insert into Standard(id, name) values(504,'class-5');

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
