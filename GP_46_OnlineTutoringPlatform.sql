create database OnlineTutoringPlatform;
-- drop database OnlineTutoringPlatform;

use OnlineTutoringPlatform;
create table SIGNIN (
	User_ID varchar(20),
    User_Name varchar(40),
    User_Password varchar(20),
    User_Type varchar(25),
    primary key (User_ID)
);
INSERT INTO SIGNIN VALUES ('user001','nirangaNIluminda','nn123','T');
INSERT INTO SIGNIN VALUES ('user002','janithNiroshan','jani123','T');
INSERT INTO SIGNIN VALUES ('user003','chamaraKumara','abc456','S');
INSERT INTO SIGNIN VALUES ('user004','sandunPerera','qwerty','S');
INSERT INTO SIGNIN VALUES ('user005','isuruSilva','pass123','T');
INSERT INTO SIGNIN VALUES ('user006','tharinduFernando','hello2022','T');
INSERT INTO SIGNIN VALUES ('user007','malithJayawardena','p@ssw0rd','S');
INSERT INTO SIGNIN VALUES ('user008','dilshanRanasinghe','secret','A');
INSERT INTO SIGNIN VALUES ('user009','kasunPerera','k1234','T');
INSERT INTO SIGNIN VALUES ('user010','nuwanFernando','fernando123','S');
INSERT INTO SIGNIN VALUES ('user011','thilinaSilva','tsilva','S');
INSERT INTO SIGNIN VALUES ('user012','samanthaGunawardena','sam123','T');
INSERT INTO SIGNIN VALUES ('user013','chamariPerera','chamari456','S');
INSERT INTO SIGNIN VALUES ('user014','priyanthaKumara','pk456','T');
INSERT INTO SIGNIN VALUES ('user015','ishaniFernando','ishani2022','S');
INSERT INTO SIGNIN VALUES ('user016','tharinduKumara','thk123','T');
INSERT INTO SIGNIN VALUES ('user017','nimalSilva','silva123','T');
INSERT INTO SIGNIN VALUES ('user018','kusalPerera','kusal456','S');
INSERT INTO SIGNIN VALUES ('user019','malakaFernando','malaka2022','T');
INSERT INTO SIGNIN VALUES ('user020','ranjithSilva','ranjith123','S');

UPDATE SIGNIN SET User_Password = 'newpassword' WHERE User_ID = 'user001';

DELETE FROM SIGNIN WHERE User_ID = 'user020';

INSERT INTO SIGNIN VALUES ('user020','ranjithSilva','ranjith123','S');


create table USER (
	User_ID varchar(20),
    User_Name varchar(40),
    User_Password varchar(20),
    User_Type varchar(25),
    STREAM_Name varchar(25),
    primary key (User_ID),
	foreign key (User_ID) references SIGNIN(User_ID)
);

UPDATE USER SET User_Type = 'S' WHERE User_ID = 'user001';

DELETE FROM USER WHERE User_ID = 'user020';

INSERT INTO USER VALUES ('user001','nirangaNIluminda','nn123','T','Maths');
INSERT INTO USER VALUES ('user002','janithNiroshan','jani123','T','Science');
INSERT INTO USER VALUES ('user003','chamaraKumara','abc456','S','Commerce');
INSERT INTO USER VALUES ('user004','sandunPerera','qwerty','S','Arts');
INSERT INTO USER VALUES ('user005','isuruSilva','pass123','T','Technology');
INSERT INTO USER VALUES ('user006','tharinduFernando','hello2022','T','Maths');
INSERT INTO USER VALUES ('user007','malithJayawardena','p@ssw0rd','S','Science');
INSERT INTO USER VALUES ('user008','dilshanRanasinghe','secret','A','Commerce');
INSERT INTO USER VALUES ('user009','kasunPerera','k1234','T','Arts');
INSERT INTO USER VALUES ('user010','nuwanFernando','fernando123','S','Technology');
INSERT INTO USER VALUES ('user011','thilinaSilva','tsilva','S','Maths');
INSERT INTO USER VALUES ('user012','samanthaGunawardena','sam123','T','Science');
INSERT INTO USER VALUES ('user013','chamariPerera','chamari456','S','Commerce');
INSERT INTO USER VALUES ('user014','priyanthaKumara','pk456','T','Arts');
INSERT INTO USER VALUES ('user015','ishaniFernando','ishani2022','S','Technology');
INSERT INTO USER VALUES ('user016','tharinduKumara','thk123','T','Maths');
INSERT INTO USER VALUES ('user017','nimalSilva','silva123','T','Science');
INSERT INTO USER VALUES ('user018','kusalPerera','kusal456','S','Commerce');
INSERT INTO USER VALUES ('user019','malakaFernando','malaka2022','T','Arts');
INSERT INTO USER VALUES ('user020','ranjithSilva','ranjith123','S','Technology');

create table STUDENT(
	S_ID varchar(20),
    User_Type varchar(20),
    Stream_Name varchar(20),
    S_FirstName varchar(40),
    S_lastName varchar (40),
    S_Name varchar(100),
    Street_Number varchar(10),
    City varchar(40),
    Postal_Code int,
    S_Adress varchar(200) ,
    S_DoB date,
	primary key (S_ID),
    foreign key (S_ID) references USER(User_ID)
);

UPDATE STUDENT SET S_Name = 'John Doe' WHERE S_ID = 'user003';

DELETE FROM STUDENT WHERE S_ID = 'user020';



INSERT INTO STUDENT VALUES ('user003','S','Commerce','Chamara','Kumara','Chamara Kumara','123','Colombo','12345','123 , Colombo , 12345','1990-01-15');
INSERT INTO STUDENT VALUES ('user004','S','Arts','Sandun','Perera','Sandun Perera','456','Kandy','54321','456 , Kandy , 54321','1991-05-20');
INSERT INTO STUDENT VALUES ('user007','S','Science','Malith','Jayawardena','Malith Jayawardena','789','Galle','67890','789 , Galle , 67890','1992-10-25');
INSERT INTO STUDENT VALUES ('user010','S','Technology','Nuwan','Fernando','Nuwan Fernando','101','Matara','98765','101 , Matara , 98765','1993-02-28');
INSERT INTO STUDENT VALUES ('user011','S','Maths','Thilina','Silva','Thilina Silva','202','Jaffna','13579','202 , Jaffna , 13579','1994-07-12');
INSERT INTO STUDENT VALUES ('user013','S','Commerce','Chamari','Perera','Chamari Perera','303','Negombo','24680','303 , Negombo , 24680','1995-11-30');
INSERT INTO STUDENT VALUES ('user015','S','Technology','Ishani','Fernando','Ishani Fernando','404','Anuradhapura ','13579','404 , Anuradhapura  , 13579','1996-04-05');
INSERT INTO STUDENT VALUES ('user018','S','Commerce','Kusal','Perera','Kusal Perera','505','Badulla','35791','505 , Badulla , 35791','1997-09-18');
INSERT INTO STUDENT VALUES ('user020','S','Technology','Ranjith','Silva','Ranjith Silva','606','Ratnapura','57931','606 , Ratnapura , 57931','1998-12-24');

create table STUDENT_SUBJECT (
	User_ID varchar(20),
	Subject_ID int ,
    S_ID varchar(20),
    S_Subject varchar(30),
    primary key (User_ID,Subject_ID),
	foreign key (User_ID) references STUDENT(S_ID)
    
);

UPDATE STUDENT_SUBJECT
SET S_Subject = 'Accounting'
WHERE User_ID = 'user003' AND Subject_ID = 1;

DELETE FROM STUDENT_SUBJECT
WHERE User_ID = 'user003' AND Subject_ID = 2;

INSERT INTO STUDENT_SUBJECT VALUES ('user003','1','Commerce','Economics');
INSERT INTO STUDENT_SUBJECT VALUES ('user003','2','Commerce','Business_Studies');
INSERT INTO STUDENT_SUBJECT VALUES ('user004','1','Arts','Dancing');
INSERT INTO STUDENT_SUBJECT VALUES ('user004','2','Arts','Music');
INSERT INTO STUDENT_SUBJECT VALUES ('user007','1','Science','Biology');
INSERT INTO STUDENT_SUBJECT VALUES ('user007','2','Science','Chemistry');
INSERT INTO STUDENT_SUBJECT VALUES ('user010','1','Technology','BT');
INSERT INTO STUDENT_SUBJECT VALUES ('user010','2','Technology','ET');
INSERT INTO STUDENT_SUBJECT VALUES ('user011','1','Maths','Combined Maths');
INSERT INTO STUDENT_SUBJECT VALUES ('user011','2','Maths','Physics');
INSERT INTO STUDENT_SUBJECT VALUES ('user013','1','Commerce','Economics');
INSERT INTO STUDENT_SUBJECT VALUES ('user013','2','Commerce','Business_Studies');
INSERT INTO STUDENT_SUBJECT VALUES ('user015','1','Technology','BT');
INSERT INTO STUDENT_SUBJECT VALUES ('user015','2','Technology','ET');
INSERT INTO STUDENT_SUBJECT VALUES ('user018','1','Commerce','Economics');
INSERT INTO STUDENT_SUBJECT VALUES ('user018','2','Commerce','Business_Studies');
INSERT INTO STUDENT_SUBJECT VALUES ('user020','1','Technology','BT');
INSERT INTO STUDENT_SUBJECT VALUES ('user020','2','Technology','ET');


create table STUDENT_PHONES(
	Student_TID varchar (4),
	S_ID varchar(20),
    S_TNumber int,
    primary key (Student_TID),
    foreign key (S_ID) references STUDENT(S_ID)
);

UPDATE STUDENT_PHONES
SET S_TNumber = 987654321
WHERE Student_TID = 't1';

DELETE FROM STUDENT_PHONES
WHERE Student_TID = 't15';

INSERT INTO STUDENT_PHONES VALUES ('t1','user003','123456789');
INSERT INTO STUDENT_PHONES VALUES ('t2','user003','987654321');
INSERT INTO STUDENT_PHONES VALUES ('t3','user004','234567890');
INSERT INTO STUDENT_PHONES VALUES ('t4','user004','876543219');
INSERT INTO STUDENT_PHONES VALUES ('t5','user007','345678901');
INSERT INTO STUDENT_PHONES VALUES ('t6','user007','765432198');
INSERT INTO STUDENT_PHONES VALUES ('t7','user010','456789012');
INSERT INTO STUDENT_PHONES VALUES ('t8','user010','654321987');
INSERT INTO STUDENT_PHONES VALUES ('t9','user011','567890123');
INSERT INTO STUDENT_PHONES VALUES ('t10','user013','432198765');
INSERT INTO STUDENT_PHONES VALUES ('t11','user015','321987654');
INSERT INTO STUDENT_PHONES VALUES ('t12','user018','890123456');
INSERT INTO STUDENT_PHONES VALUES ('t13','user018','219876543');
INSERT INTO STUDENT_PHONES VALUES ('t14','user020','901234567');
INSERT INTO STUDENT_PHONES VALUES ('t15','user020','198765432');

create table TUTOR(
	T_ID varchar(20),
    T_FirstName varchar(40),
    T_LastName varchar(40),
    User_Type varchar(1),
    Stream_Name varchar(30),
    primary key (T_ID),
    foreign key (T_ID) references USER(User_ID)
);

UPDATE TUTOR
SET T_FirstName = 'John'
WHERE T_ID = 'user001';

DELETE FROM TUTOR
WHERE T_ID = 'user019';

INSERT INTO TUTOR VALUES ('user001','Niranga','Niluminda','T','Maths');
INSERT INTO TUTOR VALUES ('user002','Janith','Niroshan','T','Science');
INSERT INTO TUTOR VALUES ('user005','Isuru','Silva','T','Technology');
INSERT INTO TUTOR VALUES ('user006','Tharindu','Fernando','T','Maths');
INSERT INTO TUTOR VALUES ('user009','Kasun','Perera','T','Arts');
INSERT INTO TUTOR VALUES ('user012','Samantha','Gunawardena','T','Science');
INSERT INTO TUTOR VALUES ('user014','Priyantha','Kumara','T','Arts');
INSERT INTO TUTOR VALUES ('user016','Tharindu','Kumara','T','Maths');
INSERT INTO TUTOR VALUES ('user017','Nimal','Silva','T','Science');
INSERT INTO TUTOR VALUES ('user019','Malaka','Fernando','T','Arts');

create table TUTOR_SUBJECT (
	User_ID varchar(20),
	Subject_ID varchar (20),
	T_Scheme varchar (40),
    T_Subject varchar (40),
    primary key (User_ID),
    foreign key (User_ID) references TUTOR(T_ID)
);

UPDATE TUTOR_SUBJECT
SET T_Subject = 'Advanced Maths'
WHERE User_ID = 'user001';

DELETE FROM TUTOR_SUBJECT
WHERE User_ID = 'user019';

INSERT INTO TUTOR_SUBJECT VALUES ('user001','1','Maths','Combined Maths');
INSERT INTO TUTOR_SUBJECT VALUES ('user002','2','Science','Biology');
INSERT INTO TUTOR_SUBJECT VALUES ('user005','3','Technology','BT');
INSERT INTO TUTOR_SUBJECT VALUES ('user006','1','Maths','Combined Maths');
INSERT INTO TUTOR_SUBJECT VALUES ('user009','1','Arts','Dancing');
INSERT INTO TUTOR_SUBJECT VALUES ('user012','2','Science','Biology');
INSERT INTO TUTOR_SUBJECT VALUES ('user014','1','Arts','Dancing');
INSERT INTO TUTOR_SUBJECT VALUES ('user016','1','Maths','Combined Maths');
INSERT INTO TUTOR_SUBJECT VALUES ('user017','2','Science','Biology');
INSERT INTO TUTOR_SUBJECT VALUES ('user019','1','Arts','Dancing');

create table STREAM (
	Stream_ID varchar(20),
    Steeam_Name varchar (40),
    primary key (Stream_ID)
);

UPDATE STREAM
SET Steeam_Name = 'Business'
WHERE Stream_ID = 'S0001';

DELETE FROM STREAM
WHERE Stream_ID = 'S0005';

INSERT INTO STREAM VALUES ('S0001','Commerce');
INSERT INTO STREAM VALUES ('S0002','Arts');
INSERT INTO STREAM VALUES ('S0003','Science');
INSERT INTO STREAM VALUES ('S0004','Technology');
INSERT INTO STREAM VALUES ('S0005','Maths');

create table STREAM_SUBJECT (
	Stream_Name varchar(20),
    Sub_Name varchar (40),
    Stream_ID varchar(20),
	Sub_ID varchar (20),
    primary key (Stream_ID,Sub_ID),
    foreign key (Stream_ID) references STREAM(Stream_ID)
    
);

UPDATE STREAM_SUBJECT
SET Sub_Name = 'Accounting'
WHERE Stream_ID = 'S0001' AND Sub_ID = 'SB0001';

DELETE FROM STREAM_SUBJECT
WHERE Stream_ID = 'S0001' AND Sub_ID = 'SB0002';

INSERT INTO STREAM_SUBJECT VALUES ('Commerce','Economics','S0001','SB0001');
INSERT INTO STREAM_SUBJECT VALUES ('Commerce','Business Studies','S0001','SB0002');
INSERT INTO STREAM_SUBJECT VALUES ('Arts','Dancing','S0002','SA0001');
INSERT INTO STREAM_SUBJECT VALUES ('Arts','Music','S0002','SA0002');
INSERT INTO STREAM_SUBJECT VALUES ('Science','Biology','S0003','SS0001');
INSERT INTO STREAM_SUBJECT VALUES ('Science','Chemistry','S0003','SS0002');
INSERT INTO STREAM_SUBJECT VALUES ('Technology','BT','S0004','ST0001');
INSERT INTO STREAM_SUBJECT VALUES ('Technology','ET','S0004','ST0002');
INSERT INTO STREAM_SUBJECT VALUES ('Maths','Combined Maths','S0005','SM0001');
INSERT INTO STREAM_SUBJECT VALUES ('Maths','Physics','S0005','SM0002');

create table SEASON (
	Sub_Name varchar (40),
	T_ID varchar (20),
	Sesion_ID varchar (100),
    Time_Slot varchar (20),
	Stream_ID varchar(20),
    primary key (Sub_Name,T_ID),
    foreign key (T_ID) references TUTOR(T_ID),
    foreign key (Stream_ID) references STREAM(Stream_ID)
    
    -- Duration

    
);

UPDATE SEASON
SET Time_Slot = '10am-1pm'
WHERE Sub_Name = 'Economics' AND T_ID = 'user001';

DELETE FROM SEASON
WHERE Sub_Name = 'Business Studies' AND T_ID = 'user001';

INSERT INTO SEASON VALUES ('Economics', 'user001', 'SE0001', '9am-12pm', 'S0001');
INSERT INTO SEASON VALUES ('Business Studies', 'user001', 'SE0001', '9am-12pm', 'S0001');
INSERT INTO SEASON VALUES ('Dancing','user009','SE0002','1pm-3pm','S0002');
INSERT INTO SEASON VALUES ('Music','user009','SE0002','1pm-3pm','S0002');
INSERT INTO SEASON VALUES ('Biology','user002','SE0003','4pm-6pm','S0003');
INSERT INTO SEASON VALUES ('Chemistry','user002','SE0003','4pm-6pm','S0003');
INSERT INTO SEASON VALUES ('BT', 'user005', 'SE0004', '9am-12pm', 'S0004');
INSERT INTO SEASON VALUES ('ET', 'user005', 'SE0004', '9am-12pm', 'S0004');
INSERT INTO SEASON VALUES ('Combined Maths','user016','SE0005','1pm-3pm','S0005');
INSERT INTO SEASON VALUES ('Physics','user016','SE0005','1pm-3pm','S0005');


create table S_PAYMENT (
	Pay_ID varchar(20),
    Pay_Method varchar(40),
    T_ID varchar (20),
    S_ID varchar (20),
    Comments varchar (100),
    primary key (Pay_ID),
    foreign key (T_ID) references TUTOR(T_ID),
    foreign key (S_ID) references STUDENT(S_ID)
);

UPDATE S_PAYMENT
SET Comments = 'Paid with discount'
WHERE Pay_ID = 'P0001';

DELETE FROM S_PAYMENT
WHERE Pay_ID = 'P0009';

INSERT INTO S_payment VALUES ('P0001', 'Credit Card', 'user001', 'user003', 'Good service');
INSERT INTO S_payment VALUES ('P0002', 'PayPal', 'user002', 'user004', 'Payment processed');
INSERT INTO S_payment VALUES ('P0003', 'Cash', 'user002', 'user007', 'Payment pending');
INSERT INTO S_payment VALUES ('P0004', 'Credit Card', 'user005', 'user010', 'Payment received');
INSERT INTO S_payment VALUES ('P0005', 'PayPal', 'user005', 'user011', 'Payment confirmed');
INSERT INTO S_payment VALUES ('P0006', 'Cash', 'user006', 'user013', 'Payment completed');
INSERT INTO S_payment VALUES ('P0007', 'Credit Card', 'user012', 'user015', 'Payment successful');
INSERT INTO S_payment VALUES ('P0008', 'PayPal', 'user017', 'user018', 'Payment authorized');
INSERT INTO S_payment VALUES ('P0009', 'Cash', 'user019', 'user020', 'Payment failed');

create table T_PAYMENT (
	T_ID varchar (20),
    S_ID varchar (20),
    Tutor_Amount int,
	primary key (T_ID, S_ID),
    foreign key (T_ID) references TUTOR(T_ID),
    foreign key (S_ID) references STUDENT(S_ID)
    
);

UPDATE T_PAYMENT
SET Tutor_Amount = 1800
WHERE T_ID = 'user001' AND S_ID = 'user003';

DELETE FROM T_PAYMENT
WHERE T_ID = 'user005' AND S_ID = 'user011';

INSERT INTO T_PAYMENT VALUES ('user001', 'user003', 1000);
INSERT INTO T_PAYMENT VALUES ('user002', 'user004', 1500);
INSERT INTO T_PAYMENT VALUES ('user002', 'user007', 1200);
INSERT INTO T_PAYMENT VALUES ('user005', 'user010', 1300);
INSERT INTO T_PAYMENT VALUES ('user005', 'user011', 1400);

-- simple queries


SELECT User_Name, User_Password, User_Type FROM SIGNIN;

SELECT User_Name, User_Type FROM USER;

SELECT * FROM USER, TUTOR;

CREATE VIEW TutorDetails AS SELECT T_ID, T_FirstName, T_LastName, Stream_Name FROM TUTOR;

SELECT T_FirstName AS FirstName, T_LastName AS LastName, Stream_Name AS Subject FROM TUTOR;

SELECT MAX(Tutor_Amount) AS MaximumTutorAmount FROM T_PAYMENT;

SELECT User_Name FROM SIGNIN WHERE User_Name LIKE 'n%';





-- Complex queries






DROP VIEW IF EXISTS StudentSubjects;
CREATE VIEW StudentSubjects AS
SELECT ss.User_ID AS S_ID, ss.S_Subject
FROM STUDENT_SUBJECT ss
WHERE ss.S_Subject IN ('Mathematics', 'Physics', 'Chemistry');


CREATE VIEW StudentInfo AS
SELECT s.S_ID, s.S_Name, s.S_Adress
FROM STUDENT s
WHERE s.S_Name LIKE 'A%' OR s.S_Name LIKE 'M%';


SELECT sd.S_ID, sd.S_Name, sd.S_Adress, ss.S_Subject
FROM StudentInfo sd
LEFT JOIN StudentSubjects ss ON sd.S_ID = ss.S_ID
WHERE sd.S_Name LIKE 'J%'
UNION
SELECT sd.S_ID, sd.S_Name, sd.S_Adress, ss.S_Subject
FROM StudentInfo sd
RIGHT JOIN StudentSubjects ss ON sd.S_ID = ss.S_ID
WHERE ss.S_Subject LIKE 'B%';






DROP VIEW IF EXISTS StudentDetails;
CREATE VIEW StudentDetails AS
SELECT s.S_ID, s.S_Name, s.S_Adress
FROM STUDENT s
WHERE s.S_Adress LIKE '%bo%';


SELECT s.S_Name, ss.S_Subject
FROM STUDENT s
LEFT JOIN STUDENT_SUBJECT ss ON s.S_ID = ss.User_ID
WHERE s.S_Name LIKE 'c%'
UNION
SELECT s.S_Name, ss.S_Subject
FROM STUDENT s
RIGHT JOIN STUDENT_SUBJECT ss ON s.S_ID = ss.User_ID
WHERE ss.S_Subject LIKE 'M%';





SELECT u.User_ID, u.User_Name, u.User_Password
FROM SIGNIN u
WHERE u.User_Password LIKE '%123%'
EXCEPT
SELECT u.User_ID, u.User_Name, u.User_Password
FROM USER u
WHERE u.User_Password LIKE '%abc%';





SELECT u.User_ID, u.User_Name, u.User_Password, u.User_Type
FROM SIGNIN u
WHERE u.User_Type = 'S'
INTERSECT
SELECT u.User_ID, u.User_Name, u.User_Password, u.User_Type
FROM USER u
WHERE u.User_Type = 'S';





SELECT s.S_Name, s.S_Adress
FROM STUDENT s
WHERE s.S_ID IN (
  SELECT ss.User_ID
  FROM STUDENT_SUBJECT ss
  WHERE ss.S_Subject = 'Economics'
)
AND s.S_Adress LIKE '%bo%';




SELECT s.S_Name, (
  SELECT COUNT(*)
  FROM STUDENT_SUBJECT ss
  WHERE ss.User_ID = s.S_ID
) AS NumberOfSubjects
FROM STUDENT s
WHERE s.S_ID IN (
  SELECT ss.User_ID
  FROM STUDENT_SUBJECT ss
  WHERE ss.S_Subject = 'Economics'
);






SELECT s.S_Name, ss.S_Subject, t.T_FirstName, t.T_LastName
FROM STUDENT s
INNER JOIN STUDENT_SUBJECT ss ON s.S_ID = ss.User_ID
INNER JOIN (
  SELECT t.T_ID, t.T_FirstName, t.T_LastName, ts.T_Subject
  FROM TUTOR t
  INNER JOIN TUTOR_SUBJECT ts ON t.T_ID = ts.User_ID
  WHERE ts.T_Subject = 'Dancing'
) t ON ss.S_Subject = t.T_Subject
WHERE s.S_Name LIKE 'F%' OR s.S_Name LIKE 'M%';



SELECT s.S_Name, ss.S_Subject
FROM STUDENT_SUBJECT ss
RIGHT OUTER JOIN STUDENT s ON s.S_ID = ss.User_ID
WHERE ss.S_Subject IN ('Physics', 'Chemistry', 'Biology');



SELECT s.S_Name, ss.S_Subject
FROM STUDENT s
LEFT OUTER JOIN STUDENT_SUBJECT ss ON s.S_ID = ss.S_ID
WHERE s.S_Name LIKE 'J%' OR s.S_Name LIKE 'M%';




SELECT u.User_ID, u.User_Name, u.User_Password, u.User_Type
FROM SIGNIN u
WHERE u.User_Name LIKE 'J%'
UNION
SELECT u.User_ID, u.User_Name, u.User_Password, u.User_Type
FROM USER u
WHERE u.User_Name LIKE 'S%';


SELECT s.S_Name
FROM STUDENT s
WHERE  (
  SELECT 1
  FROM STUDENT_SUBJECT ss
  WHERE ss.User_ID = s.S_ID AND ss.S_Subject = 'BT'
);

