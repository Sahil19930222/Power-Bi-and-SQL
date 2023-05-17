-- Create a database called “LMT_University”.
create database LMT_University;
use LMT_University;

-- Create an “enrol” schema under “LMT_University”.
create schema enrol;

-- Create an “Address” table under “enrol” schema with the following specifications and constraints
create table enrol.Address(
AddressID INT NOT NULL PRIMARY KEY CLUSTERED IDENTITY(1,1), StreetAddress Varchar(100) Null, City Varchar(50) Not Null,
States Varchar(30) Null, 
PostalCode Varchar(20) Null, 
Country Varchar(40) Not Null, InsertedOn Datetime Not Null default getdate()) ; 


-- Insert the following records based on the given specifications.

INSERT INTO enrol.Address (StreetAddress, City, States, PostalCode, Country)

Values

('5 Schurz Lane','Grybów',NULL,'33-330','Poland'),
('628 Waubesa Drive','Jinsheng',NULL,NULL,'China'),
('44135 Northfield Way','Nowy Dwór Mazowiecki',NULL,'05-160','Poland'),
('335 Bellgrove Road','Gaoqiao',NULL,NULL,'China'),
('28 Victoria Junction','Bukovec',NULL,'739 84','Czech Republic'),
('6 Stuart Road','Wushan',NULL,NULL,'China'),
('730 Barby Street','Zhengchang',NULL,NULL,'China'),
('22742 Schiller Street','Sumurwaru',NULL,NULL,'Indonesia'),
('31 Elka Junction','Cigembong',NULL,NULL,'Indonesia'),
('5 Kenwood Circle','Davao',NULL,'8000','Philippines'),
('99 Bunker Hill Crossing','Zarasai',NULL,'32001','Lithuania'),
('5 Farragut Center','Jaromerice',NULL,'569 44','Czech Republic'),
('25 Lerdahl Street','Nanshi',NULL,NULL,'China'),
('918 Bonner Way','Phayakkhaphum Phisai',NULL,'44110','Thailand'),
('9 West Alley','Sempu',NULL,NULL,'Indonesia'),
('234 Hagan Lane','Rennes', 'Bretagne','35033','France'),
('33942 Eagle Crest Trail','Oliveiras','Porto','4745-235','Portugal'),
('20791 Hermina Way','B?o L?c',NULL,NULL,'Vietnam'),
('86 Lake View Way','Marsa Alam',NULL,NULL,'Egypt'),
('19732 Burning Wood Parkway','Piteå','Norrbotten','944 73','Sweden'),
('9320 Oak Valley Road','Rathangani',NULL,'A45','Ireland'),
('2638 Waubesa Circle','Honda',NULL,'732048','Colombia'),
('6999 Monument Center','Cortes',NULL,'6341','Philippines'),
('1 Warbler Hill','Proletar',NULL,NULL,'Tajikistan'),
('1311 Crowley Street','Baghlan',NULL,NULL,'Afghanistan'),
('19 Walton Way','Öldziyt', NULL, NULL,'Mongolia'),
('1 Glacier Hill','Cergy-Pontoise','Île-de-France','95304','France'),
('5094 Gateway Way','Živinice',NULL,NULL,'Bosnia and Herzegovina'),
('2 Roth Pass','Tuatuka',NULL,NULL,'Indonesia'),
('89531 Northview Road','Ganyi',NULL,NULL,'China');


--Create a “Department” table under “enrol” schema with the following specifications and constraints

Create table enrol.Department ( 

Department_ID int Not NULL Primary Key Clustered Identity(1,1),
Department_Name varchar(50) NOT NULL,
Department_description varchar(101) NULL ,
Department_Capacity int NOT NULL,
InsertedOn DateTime NOT NULL default getdate());

-- Insert the following records based on the given specifications

insert into enrol.Department (Department_Name, Department_description, Department_Capacity)
Values
('IT', 'Information Technology', 60),
('EE', 'Electrical Engineering', 120),
('CSE', 'Computer Science Engineering', 140),
('ME', 'Mechanical Engineering', 110),
('ECE', 'Electronic and Communication Engineering', 80),
('AEIE', 'Applied Electronics and Instrumentation Engineering', 50);

-- Create a “Lecturer” table under “enrol” schema with the following specifications and constraints

Create table enrol. lecturer (

Lecturer_ID int NOT NULL PRIMARY KEY CLUSTERED Identity(1,1),
Lecturer_Name varchar(50) NOT NULL,
Lecturer_HighestQualification varchar(50) NULL,
Lecturer_Age date Not NULL,
Department_ID int NOT NULL,
InsertedOn Datetime NULL default getdate());

-- Insert the following records based on the given specifications

Insert into enrol.lecturer (Lecturer_Name, Lecturer_HighestQualification, Lecturer_Age, Department_ID)

values

('Peder Bernaldez','M.Tech','2010-10-10',6),
('Emile Adolthine','PhD','2010-04-04',5),
('Titos Iorizzi','M.Tech','2012-04-09',4),
('Ferris Falck','MSC','2011-05-05',3),
('Georgie McIlwraith','M.Tech','2017-05-08',2),
('Karlen Kearn','MSC','2019-03-03',1),
('Axe Whistlecroft','MCA','2019-03-03',6),
('Drucie Bazek','PhD','2019-04-01',5),
('Antony Gamlin','M.Tech','2019-04-01',4),
('Alexina Moncaster','MBA','2019-04-01',3),
('Milzie Kabos','MCA','2019-03-03',2),
('Arlene Glendza','MS','2019-03-03',1),
('Kirby Kabisch','M.Tech','2019-04-01',1),
('Selma Eliyahu','PhD','2019-04-01',2),
('Ilysa Chooter','M.Tech','2019-04-01',3),
('Rozalie Pennycord','MSC','2010-10-10',4),
('Dacey Glidder','M.Tech','2010-04-04',5),
('Claretta Diaper','MSC','2012-04-09',6),
('Kalil Pendleton','MCA','2011-05-05',6),
('Trudey Brech','PhD','2011-10-05',5),
('Gypsy Ambrosini','M.Tech','2011-03-30',4),
('Lauree Ribbon','MBA','2013-04-04',3),
('Hugo Valois','MCA','2012-04-29',2),
('Perren Chetter','MS','2018-05-03',1),
('Fawn Coffelt','M.Tech','2020-02-26',1),
('Terrie Golby','PhD','2020-02-26',2),
('Jeanette Ciraldo','M.Tech','2020-03-26',3),
('Elfrieda Elijahu','MSC','2020-03-26',4),
('Guthry Blaes','M.Tech','2020-03-26',5),
('Richy Saice','MSC','2020-02-26',6)

-- Altering the lecturer table to add a foreign key constraint to reference the Department table

ALTER TABLE enrol.lecturer ADD CONSTRAINT FK_LKEY FOREIGN KEY (Department_ID) REFERENCES enrol.Department(Department_ID)

-- Create a “Student” table under “enrol” schema with the following specifications and constraints

CREATE TABLE enrol.Student(
Student_ID int NOT NULL PRIMARY KEY CLUSTERED IDENTITY(1,1),
Student_Firstname varchar(50) NOT NULL,
Student_Lastname varchar(50) NULL,
Student_DOB date NOT NULL,
Student_Mobile varchar(50) NULL,
Student_Rollno int NOT NULL,
 Department_ID int NOT NULL FOREIGN KEY REFERENCES [enrol].[Department] (Department_ID),
AddressID int NOT NULL FOREIGN KEY REFERENCES enrol.Address(AddressID),
InsertedOn datetime NOT NULL Default getdate());

-- Insert the following records based on the given specifications.

INSERT INTO enrol.Student (Student_Firstname, Student_Lastname, Student_DOB, Student_Mobile, Student_Rollno,Department_ID,AddressID)

Values

('Joey','Ironside','1995-11-22',1276234258,1,3,1),
('Karlotta','Garraway','1997-07-06',2192431615,2,3,24),
('Jerry','Stutte','1996-12-18',4125425783,3,1,17),
('Yehudit','Rahill','1995-01-15',9939485406,4,2,29),
('Cele','Crosetto','1998-11-24',3622733725,5,3,16),
('Hazlett','Mowsdale','1995-04-09',1482883476,6,4,23),
('Carlyn','Marks','1996-12-27',6129154080,7,5,20),
('Ellis','Boatman','1997-04-29',8269707118,8,6,7),
('Florina','Boyack','1997-08-03',9623352863,9,3,14),
('Borg','Innett','1997-09-03',5256034960,10,1,19),
('Sayres','Jennings','1996-05-12',8675076454,11,4,27),
('Jarid','Sprull','1998-11-02',1391270091,12,2,6),
('Elvera','Bannard','1996-09-07',7897232539,13,4,24),
('Ody','Inggall','1995-03-05',6094734260,14,5,25),
('Curcio','McWhan','1996-07-29',2394865847,15,6,11),
('Connie','Sinnie','1995-07-19',1473936221,16,6,23),
('Auroora','Nel','1996-09-05',2216400391,17,3,14),
('Wendall','Rosendale','1999-12-30',1818120249,18,3,28),
('Hadley','Bradbury','1996-08-16',6518067697,19,1,10),
('Celine','Smales','1999-07-11',7106508130,20,2,10),
('Jesselyn','Stevenson','1998-05-16',9231672206,21,2,22),
('Corinna','Pinkney','1998-01-16',8323630067,22,5,29),
('Orelle','Adamthwaite','1997-07-26',2539126766,23,3,17),
('Howie','Seaman','1997-12-01',9888259627,24,2,4),
('Sibyl','Corey','1996-07-18',4493239590,25,5,11),
('Ruperta','Peaker','1999-05-22',5124781263,26,5,4),
('Delmer','Roughey','1995-04-21',4175314364,27,3,22),
('Gifford','O Scannill','1996-10-31',3134783726,28,4,22),
('Hedy','O Hone','1998-03-29',7316228047,29,2,17),
('Shalna','Hyde-Chambers','1999-11-23',7455116160,30,5,6),
('Ferdie','Di Napoli','1995-01-17',1905908693,31,4,30),
('Piper','Giacomuzzo','1998-09-14',5499340503,32,6,4),
('Gerhardt','Schruurs','1999-11-18',8197494894,33,3,1),
('Mellicent','Buncher','1996-10-03',4584525312,34,5,28),
('Corette','Demead','1997-09-17',4909862137,35,5,17),
('Jorgan','Barson','1997-05-01',6022309183,36,1,21),
('Koral','Bowen','1998-05-12',4198817454,37,4,3),
('Allissa','Kitter','1998-08-17',7328676920,38,5,7),
('Townsend','Doughtery','1998-04-13',2639777958,39,4,7),
('Yolane','Geratt','1998-06-10',2069585951,40,6,17),
('Chrystel','Allwood','1996-09-07',6958461692,41,3,25),
('Dyana','Clutterbuck','1997-09-22',5842483886,42,1,1),
('Nikki','Edy','1999-01-10',5096155315,43,6,25),
('Hendrik','Surr','1997-04-05',2021255732,44,5,11),
('Marta','Bosch','1998-09-28',4075136713,45,6,5),
('Garrik','Pell','1999-04-14',3071057649,46,6,7),
('Stormi','Colbron','1998-10-21',9968113654,47,3,28),
('Angelique','Iacivelli','1995-06-07',9518365081,48,5,7),
('Zack','Hefforde','1999-07-25',5455693035,49,1,29),
('Gusella','Pettiford','1999-08-23',2425172721,50,4,3)

--9.Write the following Query based on the above datasets.

--a. List all the Student information from the Student table.
select * from enrol.Student;

--b. List all the Department information from the Department table.
select * from enrol.Department;

--c. List all the Lecturer information from the Lecturer table.
select * from enrol.lecturer;

-- d. List all the Address information from the Address table.
select * from enrol.Address;

--e. List the StudentFullName, StudentDOB, StudentMobile from Student
--[StudentFullName=StudentFirstName + ‘  ‘ + StudentLastName]
Select Student_Firstname + ' ' + Student_Lastname AS StudentFullName, Student_DOB, Student_Mobile
from enrol.Student;

-- f.	List the StudentID, StudentFirstName, StudentLastName, StudentDOB, StudentMobile
--from Student in AddressID 7.

SELECT Student_ID, Student_Firstname, Student_Lastname, Student_DOB, Student_Mobile
from enrol.Student WHERE AddressID = 7;

-- g. List all the student information whose first name is start with 'B'

select * from enrol.Student WHERE Student_Firstname LIKE 'B%';

-- h. List all the student information whose first name is start and end with 'A'

select * from enrol.Student WHERE Student_Firstname LIKE 'A%A'

--i. Count the number of Student from Student table whose DepartmentID 6.

SELECT COUNT (*) AS Number_Of_Students from enrol.Student WHERE Department_ID = 6

-- j. List all the StudentFullName, StudentAge, StudentMobile from Student
--[StudentFullName= StudentFirstName + ‘  ‘ + StudentLastName]
--[StudentAge= Current date – DOB (in Years)]

select Student_Firstname + ' ' + Student_Lastname AS StudentFullName, DATEDIFF(Year, Student_DOB, getdate()) 
AS StudentAge
from enrol.Student

-- k.	List all the StudentFullName, StudentAge, StudentMobile whose Age>23 from Student
--[StudentFullName= StudentFirstName + ‘  ‘ + StudentLastName] [StudentAge= Current date – DOB (in Years)]

select Student_Firstname + ' ' + Student_Lastname AS StudentFullName, DATEDIFF(Year, Student_DOB, getdate()) 
AS StudentAge
from enrol.Student WHERE DATEDIFF(Year, Student_DOB, getdate()) > 23;

--l. List all the StudentFullName, StudentAge, StudentMobile whose Age is either 21 or 23 from Student 
--[StudentFullName= StudentFirstName + ‘  ‘ + StudentLastName] [StudentAge= Current date – DOB (in Years)]

select Student_Firstname + ' ' + Student_Lastname AS StudentFullName, DATEDIFF(Year, Student_DOB, getdate()) 
AS StudentAge
from enrol.Student WHERE DATEDIFF(Year, Student_DOB, getdate()) in(21, 23);

-- m. List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerAge from Lecturer.

select Lecturer_ID, Lecturer_Name, Lecturer_HighestQualification, Lecturer_Age
from enrol.lecturer;

--n. List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerAge
--from Lecturer whose HighestQualification is either “MS” or “PhD”.

select [Lecturer_ID], 
              [Lecturer_Name],
			  [Lecturer_HighestQualification],
			      [Lecturer_Age]
				  from enrol.lecturer WHERE Lecturer_HighestQualification IN('MS', 'PhD');

-- o. List all the lecturer information who belongs to DepartmentID 2.

select * from enrol.lecturer WHERE Department_ID = 2;

-- p. List all the lecturer information whose name end with “R”.
SELECT * from enrol.lecturer WHERE Lecturer_Name LIKE '%R';

--q. List all the lecturer information whose name either start or end with “E”.

SELECT * FROM enrol.lecturer WHERE Lecturer_Name LIKE 'E%' OR Lecturer_Name LIKE '%E'

--r.List all the lecturer name is in capital letter.

SELECT UPPER(Lecturer_Name) from enrol.lecturer

--s.Display 5 character from the lecturer name along with LecturerID and LecturerHighestQualification.

select LEFT(Lecturer_Name,5) AS FiveCharacters, Lecturer_ID, Lecturer_HighestQualification
from enrol.lecturer;

--t.List LecturerID, LecturerName, LecturerHighestQualification, LecturerAge(in year)
--[LecturerAge= Current Date – LecturerAge)] (in year).

select Lecturer_ID, Lecturer_Name, Lecturer_HighestQualification, Datediff (year,Lecturer_Age, getdate()) as  LecturerAge
from [enrol].[lecturer];

--u. List DepartmentID, DepartmentName, DepartmentDescription, DepartmentCapacity from Department.

select Department_ID, Department_Name, Department_description, Department_Capacity from enrol.Department;

--v. List all the Department information who’s DepartmentName is “ECE”.
select * from enrol.Department where Department_Name = 'ECE';

--w. List all DepartmentName, DepartmentDescription, DepartmentCapacity 
--from enrol.Department whose capacity is greater than 60.

select Department_Name, Department_description, Department_Capacity
from enrol.Department
where Department_Capacity > 60;

--x. List all AddressID, StreetAddress, City, States, PostalCode, Country from enrol.Address.
select AddressID, StreetAddress, City, States, PostalCode, Country
from enrol.Address;

--y. List all AddressID, StreetAddress, City, State, PostalCode, Country 
--from enrol.Address who belongs to “Poland” country.

select AddressID, StreetAddress, City, States, PostalCode, Country 
from enrol.Address where country = 'Poland';

--z. List all the Address information whose state is null.
select * from enrol.Address where states IS Null;

--aa.	List all the Address information whose PostalCode is not null.
select * from enrol.Address where PostalCode IS NOT NULL;

--bb. List all the Address information whose City name is "Honda" and Country name is "Colombia"

select * from enrol.Address where City = 'Honda' and Country = 'Colombia';

-- 10. Write the following Query based on the above datasets.
--a. List unique DOB from Student.

select distinct Student_DOB from enrol.Student; 

--b.	List unique DepartmentName from Department.

select distinct Department_Name from enrol.Department; 

--c.	List unique Country name from Address.

select distinct Country from enrol.Address;

--d. List unique State name from Address.

select distinct States from enrol.Address;

--e. List unique City name from Address.

select distinct City from enrol.Address;

--f. List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerYearService 
--from Lecturer [LecturerYearService= Current Date – LecturerAge] (in year).

select Lecturer_ID, Lecturer_Name, Lecturer_HighestQualification, 
Datediff (year,Lecturer_Age, getdate()) as LecturerYearService from enrol.Lecturer;

--g. List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerType
--from Lecturer [LecturerType= if LecturerYearService< 5 then "Begining Level Experience" 
--else if LecturerYearService>= 5 and LecturerYearService<10 then "Mid Level experience" else "Experienced".

SELECT lecturer_ID, Lecturer_Name, Lecturer_HighestQualification,
case
WHEN DATEDIFF(year, Lecturer_Age, getdate()) < 5 THEN 'Begining Level Experience'
WHEN DATEDIFF(year, Lecturer_Age, getdate()) >=5 AND DATEDIFF(year, Lecturer_Age, getdate()) <10 THEN 'Mid Level Experience'
ELSE 'Experienced'
END AS LecturerType
from enrol.lecturer;

--11. Write the following Query based on the above datasets.
--a. Display all Student and their Department Information based on the relationship.


select S.Student_Firstname + ' ' + S.Student_Lastname AS StudentFullName, D.*
from enrol.Student S, enrol.Department D
WHERE S.Department_ID = D.Department_ID

--b. Display all Student and their Address Information based on the relationship.

select S.Student_Firstname + ' ' + S.Student_Lastname AS StudentFullName, A.*
from enrol.Student S, enrol.Address A
WHERE S.AddressID = A.AddressID

--c. Display all Department and their Lecturer Information based on the relationship.

select D.Department_Name, L.*
from enrol.Department D, enrol.lecturer L
WHERE D.Department_ID = L.Department_ID

--d. Display all Student with their Department with Lecturer Information based on the relationship

select S.Student_Firstname + ' ' + S.Student_Lastname AS StudentFullName, D.*, L.Lecturer_ID, L.Lecturer_Name,
L.Lecturer_HighestQualification, L.Lecturer_Age
from enrol.Student S
	INNER JOIN enrol.Department D
		ON S.Department_ID = D.Department_ID
		INNER JOIN enrol.lecturer L
			ON L.Department_ID = D.Department_ID; 

--e. Display all Student with their Address and Department Information based on the relationship.

select S.Student_Firstname + ' ' + S.Student_Lastname AS StudentFullName, A.*, D.*
from enrol.Student S
join enrol.Address A on S.AddressID = A.AddressID
join enrol.Department D on  S.Department_ID = D.Department_ID

--f. Display all Student with Address, Department and Lecturer Information based on the relationship.



SELECT S.Student_FirstName + ' ' + S.Student_LastName, A.*, D.*, L.Lecturer_ID, L.Lecturer_Name, L.Lecturer_HighestQualification,
 L.Lecturer_Age
FROM enrol.Student S
JOIN enrol.Address A ON S.AddressID = A.AddressID
JOIN enrol.Department D ON S.Department_ID = D.Department_ID
JOIN enrol.lecturer L ON L.Department_ID = D.Department_ID;

--g.Display all Student with Address, Department and Lecturer Information who belongs to
--either “ME” or “ECE” department.

SELECT S.Student_FirstName + ' ' + S.Student_LastName, A.*, D.*, L.Lecturer_ID, L.Lecturer_Name, L.Lecturer_HighestQualification,
 L.Lecturer_Age
FROM enrol.Student S
JOIN enrol.Address A ON S.AddressID = A.AddressID
JOIN enrol.Department D ON S.Department_ID = D.Department_ID
JOIN enrol.lecturer L ON L.Department_ID = D.Department_ID 
where D.Department_Name in ('ME', 'ECE');

--h. Display Student with Department and their Lecturer information based on 
--the LecturerHighestQualification either “MS” or “PhD”.

select S.Student_Firstname + ' ' + S.Student_Lastname AS StudentFullName, D.*, L.Lecturer_ID, L.Lecturer_Name,
L.Lecturer_HighestQualification, L.Lecturer_Age
from enrol.Student S
	INNER JOIN enrol.Department D
		ON S.Department_ID = D.Department_ID
		INNER JOIN enrol.lecturer L
			ON L.Department_ID = D.Department_ID
where l.Lecturer_HighestQualification in ('MS', 'PHD');

--i. Display Student with Department and Address Information, where student belongs to “Thailand” country.

select S.Student_Firstname + ' ' + S.Student_Lastname AS StudentFullName, A.*, D.*
from enrol.Student S
join enrol.Address A on S.AddressID = A.AddressID
join enrol.Department D on  S.Department_ID = D.Department_ID
where A.Country = 'Thailand';

--j. Display Count of Student, Department wise.

select count(S.Student_ID) as Count_Student, D.Department_Name
from enrol.Student S, enrol.Department D
where S.Department_ID = D.Department_ID
group by D.Department_Name;

-- k. Display Count of Lecturer, Department wise.

select count(L.Lecturer_ID) as Count_Lecturer, D.Department_Name
from enrol.lecturer L, enrol.Department D
where L.Department_ID = D.Department_ID
group by D.Department_Name;

-- l. Display Count of Student, Country wise.

select count(S.Student_ID) as Count_Student, A.Country 
from enrol.Student S, enrol.Address A
where S.AddressID = A.AddressID
group by A.Country;

--12. Write the following Query based on the above datasets.
--a. Create new table StudCopy and copy all records from Student table.

select * into enrol.StudCopy from enrol.Student;

select * from enrol.StudCopy;

--b. Create a new table DeptCopy and copy only the schema from Department table.

Select * into enrol.DeptCopy from enrol.Department where 1 = 2;

select * from enrol.DeptCopy;

-- c. Create a new table DepartmentCopy and copy all records from Department table.

select * into enrol.DepartmentCopy from enrol.Department;

select * from enrol.DepartmentCopy;

--d. Create a new table AddrCopy and copy only the schema from Address table.

Select * into enrol.AddrCopy from enrol.Address where 1 = 2;

select * from enrol.AddrCopy;


--e. Create a new table AddrCopy and copy all the records from Address table.

SELECT * INTO AddrCopy from enrol.Address

select * from AddrCopy;

--f. Create a new table LecturerCopy and copy all the records from Lecturer table.

select * into enrol.LecturerCopy from enrol.lecturer;

select * from enrol.LecturerCopy;

-- 13. Write the following Query based on the above datasets.
-- a. Delete all the records from LecturerCopy table.

delete from enrol.LecturerCopy; 
select * from enrol.LecturerCopy;

-- b.	Delete all the student information for the students who belong to “IT” department.

DELETE FROM enrol.StudCopy 
WHERE Department_id IN ( SELECT department_id FROM enrol.DeptCopy where department_name = 'IT' );

select * from enrol.StudCopy;

-- c.	Delete all the student information for the students who belong to “Indonesia” country.

DELETE FROM enrol.StudCopy 
WHERE AddressID IN ( SELECT AddressID FROM AddrCopy where Country = 'Indonesia' );

select * from enrol.StudCopy;

-- d.	Delete all the student information for the student who belongs to “Nanshi” city.

DELETE FROM enrol.StudCopy 
WHERE AddressID IN ( SELECT AddressID FROM AddrCopy where City = 'Nanshi' );

select * from enrol.StudCopy;

-- e.	Delete all the student information for the student who belongs to “Bretagne” state.

DELETE FROM enrol.StudCopy 
WHERE AddressID IN ( SELECT AddressID FROM AddrCopy where States = 'Bretagne' );

select * from enrol.StudCopy;

--14. Write the following Query based on the above datasets.
--a. Update StudentMobile for those students who belongs to Department “ME”.

Update enrol.Student
SET Student_Mobile = '123456789' 
where Department_ID IN ( SELECT Department_ID FROM enrol.Department where Department_Name = 'ME' );

select * from enrol.Student;

--b.	Update Student DepartmentID as 3, for the StudentID=42.

Update enrol.Student 
SET Department_ID = 3 
where Student_ID = 42;  

select * from enrol.Student;


--c. Update LecturerHighestQualification as “PHd” for the Lecturer 
--whose LecturerHighestQualification= “PhD”.

Update enrol.lecturer
SET Lecturer_HighestQualification = 'PHd'
where Lecturer_HighestQualification = 'PhD'

select * from enrol.lecturer;


--d. Update PostalCode as “00000” for the Address which contain NULL as a PostalCode.

Update enrol.Address
SET PostalCode = '00000'
where PostalCode is Null;

select * from enrol.Address;


--e. Update StudentLastName as “Paul” for the Student whose Name is “Jerry”.

Update enrol.Student 
SET  Student_LastName = 'Paul'
where Student_Firstname = 'Jerry'; 

select * from enrol.Student;




















