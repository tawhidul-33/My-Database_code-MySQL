CREATE DATABASE Assignment_1;
USE assignment_1;
CREATE TABLE student(
      Roll CHAR(6) PRIMARY KEY,
      Name VARCHAR(50) NOT NULL,
      Subject VARCHAR(30) NOT NULL,
      Mark INT DEFAULT 0,
      Email VARCHAR(70) UNIQUE,
      Age INT,
      Address VARCHAR(100)
);

CREATE TABLE Library(
      Books_Name VARCHAR(30),
      WhoHired_Roll CHAR(6),
      FOREIGN KEY(WhoHired_Roll) REFERENCES student(Roll)
);

CREATE TABLE Fees(
	  Student_Roll CHAR(6),
      FOREIGN KEY(Student_Roll) REFERENCES student(Roll),
      Student_Name VARCHAR(50),
      Fees_Amount INT NOT NULL
      
);

 INSERT INTO student(Roll,Name,Subject,Mark,Email,Age,Address)
 VALUES ('648433','Tawhidul','English',85,'tawhidul2442@gmail.com',22,'Gopalgonge');
 
 INSERT INTO student(Roll,Name,Subject,Mark,Email,Age,Address)
 VALUES ('648426','Ruhul','Math',89,'ruhulamin26@gmail.com',21,'Faridpur');
 
 INSERT INTO student(Roll,Name,Subject,Email,Age,Address)
 VALUES ('648432','Naimur','English','naimur442@gmail.com',22,'Gopalgonge');
 
 INSERT INTO student(Roll,Name,Subject,Email,Age)
 VALUES ('648448','Sakib','Bangla','sakib442@gmail.com',24);

 INSERT INTO Library (Books_Name,WhoHired_Roll) 
 VALUES('English',648433);

 INSERT INTO Library (Books_Name,WhoHired_Roll) 
 VALUES('Math',648426);

 INSERT INTO Library (Books_Name,WhoHired_Roll) 
 VALUES('English',648432);

 INSERT INTO Fees(Student_Roll,Student_Name,Fees_Amount)
 VALUES(648433,'tAWHIDUL',1000);
      
 INSERT INTO Fees(Student_Roll,Student_Name,Fees_Amount)
 VALUES(648426,'Ruhul',1000);