create database employeeproject
use employeeproject

create table userinfo
(
empId int constraint pk_emp primary key,
name varchar(50),
dob varchar(50),
gender varchar(10) constraint ck_type CHECK (gender IN('Male','Female')),
Address varchar(50),
qualification varchar(50) ,
emailid varchar(50),
contactnumber varchar(50),
 Department varchar(50),
Supervicer varchar(50),
Authentication varchar(15) constraint ck_type1 CHECK (authentication IN('Approved','Not Approved')));


  insert into userinfo values(111,'john','21-02-2012','Male','bangalore','BE','john@gmail.com','4742547','dept1','mary','Approved')
  insert into userinfo values(112,'john','11-02-2015','Male','mysore','BCA','robort@hotmail.com','3232321','dept2','danish','Approved')
  insert into userinfo values(113,'baharat','31-12-2012','Male','belgum','Mtech','bharath@gmail.com','3424242','dept3','kevin','Approved')
  insert into userinfo values(114,'joseph','23-03-2108','Male','hubli','BE','joseph@yahoo.com','534535','dept4','roy','Not Approved')
  insert into userinfo values(115,'aari','11-11-2011','Female','bangalore','MCA','aari@gmail.com','3453525','dept5','ana','Approved')
  
  

create table skill
(
empid int constraint fk_skill Foreign KEY references userinfo(empId),
id int constraint pk_dept primary key,
skillname varchar(50) ,
certification varchar(50),
experince int,
);


  INSERT INTO skill VALUES(111,1,'Java,c++,','c1','2');
  INSERT INTO skill VALUES(112,2,'c++,python.Java','c2','5');
  INSERT INTO skill VALUEs(113,3,'Java','c3','9');
  INSERT INTO skill VALUES(114,4,'python,java','c4','10');
  INSERT INTO skill VALUES(115,5,'c++,java,python','c5','10');
  
  
 create table address
 (
 empid int constraint fk_address Foreign KEY references userinfo(empId),
 houseno int,
 street varchar(20),
 city varchar(20));
 
 insert into address values(111,22,'rajajinagar','bangalore')
 insert into address values(112,545,'malleshwaram','mysore')
 insert into address values(113,34,'mgroad','belgum')
 insert into address values(114,44,'brigade','hubli')
 insert into address values(115,23,'majestic','bangalore')
 
 select *from userinfo
  select *from skill
  select *from address

