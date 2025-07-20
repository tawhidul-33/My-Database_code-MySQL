CREATE TABLE student(
      Roll CHAR(4) PRIMARY KEY,
      Name VARCHAR(50),
      Marks DOUBLE
);
INSERT INTO student
(Roll,Name,Marks)values('1','siyam',95);


INSERT INTO student
(Roll,Name,Marks)values('2','rahim',55);

INSERT INTO student
(Roll,Name)values('3','karim');

INSERT INTO student
(Roll,Name,Marks)values('4','sahim',85);

SET SQL_SAFE_UPDATES=0;

UPDATE student
SET Name='TI Siam'
WHERE Roll=1;

DELETE FROM student --AITUKO DILE ALL DELETE
WHERE Roll=4; --AITUK DILE NIDRISTO Oi RULL ER RECORD TA DELETE HOBE 

SET SQL_SAFE_UPDATES=1;