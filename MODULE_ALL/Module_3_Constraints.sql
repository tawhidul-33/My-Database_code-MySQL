
-- constraints mane rulse ... jemon primary key, unique ,deafult,check,forign key,Not Null

CREATE DATABASE my_database; -- database creat 
USE my_database; -- kon database use korbo tar jonno
CREATE TABLE student(
      Roll CHAR(6) PRIMARY KEY,
      Name VARCHAR(50) NOT NULL,
      Email VARCHAR(60) UNIQUE,
      Address VARCHAR(100) ,
      Age INT CHECK(Age>18)
);

CREATE TABLE library(
      Bookname VARCHAR(50) PRIMARY KEY,
      WhoHired_Roll CHAR(6),
      FOREIGN KEY(WhoHired_Roll) REFERENCES student(Roll)
);

INSERT INTO student(Roll,Name,Email,Address,Age)
VALUES('648433','Tawhidul','tawhidul2442@gmail.com','Gopalgonge',20);

INSERT INTO student(Roll,Name,Email,Address,Age)
VALUES('648426','Rohul','rohul2442@gmail.com','Faridpur',20);

INSERT INTO library(Bookname,WhoHired_Roll)
VALUES('Dtatabase Management','648433');


CREATE TABLE course(
      course_name VARCHAR(50),
      university VARCHAR(100),
      credit INT,
      PRIMARY KEY(course_name,university) -- COMPOSIT KEY
);

INSERT INTO course(course_name,university,credit)
VALUES('Web development','ELE',4);

INSERT INTO course(course_name,university,credit)
VALUES('Web development','EPIT',4);

INSERT INTO course(course_name,university,credit)
VALUES('Networking','ELE',3);


