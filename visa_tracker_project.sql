--TABLE CREATION--

CREATE TABLE client_bio (
    client_id INT PRIMARY KEY,
    full_name NVARCHAR(100),
    email NVARCHAR(100),
    country_of_residence NVARCHAR(50),
    inquiry_date DATE
);

CREATE TABLE visa_applications (
    application_id INT PRIMARY KEY,
    client_id INT FOREIGN KEY REFERENCES client_bio(client_id),
    visa_type NVARCHAR(50),
    destination_country NVARCHAR(50),
    application_status NVARCHAR(20),
    submitted_date DATE,
    decision_date DATE
);

CREATE TABLE case_steps (
    step_id INT PRIMARY KEY,
    application_id INT FOREIGN KEY REFERENCES visa_applications(application_id),
    step_name NVARCHAR(100),
    step_status NVARCHAR(20),
    step_date DATE
);


--INSERT DATA--

INSERT INTO client_bio (client_id, full_name, email, country_of_residence, inquiry_date) VALUES
(1,'Pamela Moore','hamiltongary@moreno-wang.net','Australia','2023-12-16'),
(2, 'David Hoffman', 'tsheppard@neal-white.com', 'Germany', '2023-07-17'),
(3, 'Rebecca Goodman', 'dustinhughes@vasquez.com', 'Germany', '2025-03-29'),
(4, 'Jacqueline Smith', 'katherine33@coleman.biz', 'Germany', '2024-10-23'),
(5, 'Erin Dunn', 'lindamiller@hotmail.com', 'Australia', '2023-11-05'),
(6, 'Valerie Booker', 'xwilkinson@wolfe.org', 'Canada', '2024-07-29'),
(7, 'Kelly Patton', 'fernandezadam@wheeler.com', 'USA', '2025-01-13'),
(8, 'Isaiah Quinn', 'wwarner@gmail.com', 'Canada', '2025-03-30'),
(9, 'Laura Williams', 'derek68@yahoo.com', 'USA', '2023-12-29'),
(10, 'Cheryl Rodriguez', 'andrewkidd@clark-rodriguez.biz', 'USA', '2023-12-03'),
(11, 'Joseph Cruz', 'sgarcia@hotmail.com', 'Germany', '2024-10-05'),
(12, 'Kimberly Robinson', 'smithdarrell@hotmail.com', 'UK', '2023-08-26'),
(13, 'Matthew Dunlap', 'kelliray@yahoo.com', 'UK', '2023-09-24'),
(14, 'Matthew Jones', 'bdavis@gmail.com', 'USA', '2024-05-07'),
(15, 'Jennifer Wagner', 'april57@patel.com', 'Canada', '2023-12-31'),
(16, 'Kristopher Simmons Jr.', 'williamsleonard@hotmail.com', 'UK', '2025-01-10'),
(17, 'Robin Burgess', 'rodriguezkathryn@hotmail.com', 'Canada', '2025-01-10'),
(18, 'Scott Gutierrez', 'fchen@miller-camacho.net', 'Australia', '2025-04-24'),
(19, 'Mr. Scott Williams', 'brownbobby@murphy-peters.net', 'Canada', '2024-03-24'),
(20, 'Shawn Ray', 'ronnie04@gmail.com', 'Australia', '2024-11-19'),
(21, 'Amanda Palmer', 'isanchez@hotmail.com', 'USA', '2024-08-14'),
(22, 'Alex Mullins', 'flevine@pierce.com', 'USA', '2023-08-28'),
(23, 'Adam Robinson', 'pharris@young.com', 'Canada', '2024-10-20'),
(24, 'Mary Smith', 'calebstewart@lopez.com', 'UK', '2024-11-12'),
(25, 'Steven Young', 'thompsondillon@gmail.com', 'Germany', '2024-05-09'),
(26, 'Omar Duran', 'robertross@gmail.com', 'Canada', '2025-01-05'),
(27, 'Amanda Perez', 'kevinmitchell@meyer-johnson.com', 'Australia', '2025-03-31'),
(28, 'Emily Moody DDS', 'ggross@yahoo.com', 'Germany', '2023-09-07'),
(29, 'David Simpson', 'samuelaustin@hotmail.com', 'USA', '2023-08-06'),
(30, 'Jaime Greene', 'justinschmidt@hotmail.com', 'Germany', '2025-05-11'),
(31, 'Anthony Mcintosh', 'santhony@yahoo.com', 'UK', '2025-02-22'),
(32, 'Derek Jackson', 'kevin59@nicholson.org', 'Canada', '2025-05-08'),
(33, 'Katie Moore', 'jeremiah99@johnson.com', 'Australia', '2024-04-11'),
(34, 'Kayla Cunningham', 'olsonlindsay@perry.org', 'Australia', '2025-04-18'),
(35, 'Kathy Reyes', 'fclark@gmail.com', 'USA', '2025-02-04'),
(36, 'Erin Wright', 'williamatkins@young.info', 'Germany', '2023-12-26'),
(37, 'Theresa Jackson', 'davischristopher@yahoo.com', 'Australia', '2025-01-25'),
(38, 'Trevor Hernandez', 'vthomas@lee.com', 'Australia', '2025-06-22'),
(39, 'Carlos Salazar', 'leekelly@yahoo.com', 'USA', '2024-07-09'),
(40, 'Brian Murphy', 'nortonaaron@scott.net', 'Canada', '2024-09-28'),
(41, 'Brittany Hobbs', 'bonillacrystal@gmail.com', 'Canada', '2023-12-19'),
(42, 'Diana Becker', 'gdiaz@campbell-daniels.com', 'Germany', '2024-08-08'),
(43, 'Dr. Bryan Norris', 'jordananita@savage.com', 'Canada', '2025-02-21'),
(44, 'William Marquez', 'castillojulie@yahoo.com', 'USA', '2025-03-31'),
(45, 'Jenna Ryan', 'rthompson@yahoo.com', 'UK', '2023-10-27'),
(46, 'Joseph Nelson', 'wfernandez@rose.net', 'UK', '2024-07-12'),
(47, 'Alicia Bennett', 'edward56@gmail.com', 'USA', '2024-09-17'),
(48, 'Mark Dickson', 'kendra01@lamb.com', 'Germany', '2023-11-10'),
(49, 'Mark Werner', 'dana98@martinez.com', 'Germany', '2025-05-05'),
(50, 'Nicole Everett', 'cruzmichelle@yahoo.com', 'USA', '2024-12-16'),
(51, 'Catherine Meyer', 'kwright@yahoo.com', 'USA', '2024-01-04'),
(52, 'Morgan Long', 'sabrina85@rodriguez.com', 'Australia', '2025-01-30'),
(53, 'Scott Evans', 'leslie28@ortiz-hatfield.info', 'Germany', '2024-12-29'),
(54, 'Cassie Reyes', 'michelle89@hotmail.com', 'UK', '2025-05-09'),
(55, 'Paige Johnson', 'zwhite@yahoo.com', 'Australia', '2025-03-13'),
(56, 'Jonathan Reed', 'obrienchristopher@campbell.com', 'Australia', '2024-01-10'),
(57, 'Caleb Herring', 'richardsonmichelle@hotmail.com', 'USA', '2024-10-11'),
(58, 'Carla Jackson', 'johnsonsteven@smith-weber.net', 'USA', '2024-07-21'),
(59, 'Dr. Franklin Rogers', 'glawrence@whitaker.com', 'Canada', '2025-02-07'),
(60, 'Brandon Jones', 'grubio@yahoo.com', 'UK', '2024-11-30'),
(61, 'Christopher Carpenter', 'john03@yahoo.com', 'USA', '2023-09-30'),
(62, 'Derek Jackson', 'nicholas16@jordan.com', 'Canada', '2025-06-06'),
(63, 'Jacob Nguyen', 'michaelklein@yahoo.com', 'USA', '2025-04-06'),
(64, 'Isabella Strickland', 'ltorres@gmail.com', 'Canada', '2023-09-19'),
(65, 'Jonathan Young', 'devincastillo@hotmail.com', 'Germany', '2024-12-05'),
(66, 'Laurie Walker', 'maureen61@gmail.com', 'Australia', '2025-01-13'),
(67, 'Aaron King', 'kylie29@daniels-lee.biz', 'USA', '2023-07-17'),
(68, 'Troy Richard', 'uortega@gonzalez.org', 'UK', '2025-04-10'),
(69, 'Ryan Reynolds', 'catherinebrown@gmail.com', 'Canada', '2025-02-01'),
(70, 'Annette Dickerson', 'wallerkaitlin@yahoo.com', 'Canada', '2023-10-01'),
(71, 'David Martinez', 'guycherry@oconnell.info', 'Canada', '2023-11-25'),
(72, 'Douglas Hill', 'williamfrench@gmail.com', 'Australia', '2024-03-10'),
(73, 'Lori Boone', 'nataliesutton@hotmail.com', 'UK', '2023-12-01'),
(74, 'Nicole Allen', 'leonardsmith@gmail.com', 'UK', '2023-10-08'),
(75, 'Kristina Coleman', 'usanders@hunt-ramos.info', 'Canada', '2024-04-04'),
(76, 'Michael Richardson', 'annasantos@elliott-bell.com', 'UK', '2023-09-29'),
(77, 'Laurie Ferguson', 'marissa84@day-baldwin.com', 'Australia', '2024-11-23'),
(78, 'Derek Wagner', 'michelleparsons@hotmail.com', 'Germany', '2023-10-28'),
(79, 'Melanie Richardson', 'lowealbert@yahoo.com', 'USA', '2025-01-11'),
(80, 'Edward Lewis', 'amykelley@glenn-white.biz', 'Germany', '2023-08-21'),
(81, 'Frank Martinez', 'daniel65@hotmail.com', 'Canada', '2025-03-22'),
(82, 'David Woodard', 'danielle33@yahoo.com', 'Germany', '2025-01-07'),
(83, 'Alexandra Fisher', 'irwincourtney@yahoo.com', 'UK', '2023-12-15'),
(84, 'Nathan Garcia', 'gordonpaul@yahoo.com', 'Canada', '2023-10-29'),
(85, 'Michael White', 'johnsonbrandon@yahoo.com', 'UK', '2023-08-09'),
(86, 'Justin Gordon', 'hugheselizabeth@campbell-allen.com', 'Canada', '2025-02-08'),
(87, 'Roger Jensen', 'victoria83@yahoo.com', 'Australia', '2024-07-20'),
(88, 'Ashley Lane', 'ajohnson@price.com', 'USA', '2024-08-29'),
(89, 'Carlos Acosta', 'kelseyparsons@gmail.com', 'USA', '2023-11-19'),
(90, 'Brad Buckley', 'hollandmichael@hotmail.com', 'Australia', '2023-11-03'),
(91, 'John Allen', 'kimvincent@fisher.com', 'USA', '2023-11-21'),
(92, 'Kenneth Benson', 'michealharris@hotmail.com', 'Canada', '2023-12-04'),
(93, 'Adam Dixon', 'danalopez@yahoo.com', 'Australia', '2023-10-16'),
(94, 'Tammy Abbott', 'fmckinney@abbott-flores.com', 'Germany', '2024-06-07'),
(95, 'Jason Martin', 'yhunter@hotmail.com', 'Germany', '2024-04-09'),
(96, 'Shannon Costa', 'bmartinez@gmail.com', 'USA', '2024-02-08'),
(97, 'Paul Harris', 'lewisrandy@gmail.com', 'UK', '2024-01-24'),
(98, 'Mrs. Angela Adams', 'lynnwalsh@burns-campbell.com', 'UK', '2025-04-26'),
(99, 'Nicole Benson', 'alison53@mercado-king.com', 'Germany', '2024-06-06'),
(100, 'Jocelyn Lopez', 'iking@sanders-smith.com', 'UK', '2023-10-02');

INSERT INTO visa_applications (application_id, client_id, visa_type, destination_country, application_status, submitted_date, decision_date) VALUES
(1, 1, 'PR', 'Germany', 'Rejected', '2024-09-23', '2024-11-11'),
(2, 2, 'Student', 'UK', 'Submitted', '2024-12-19', NULL),
(3, 2, 'Dependent', 'Australia', 'Rejected', '2025-01-11', '2025-03-03'),
(4, 3, 'Dependent', 'Canada', 'Approved', '2025-04-24', '2025-05-29'),
(5, 3, 'Tourist', 'Australia', 'Withdrawn', '2024-09-15', NULL),
(6, 4, 'Student', 'Germany', 'Withdrawn', '2024-08-06', NULL),
(7, 4, 'PR', 'USA', 'Withdrawn', '2025-05-26', NULL),
(8, 5, 'Dependent', 'Germany', 'Withdrawn', '2024-11-04', NULL),
(9, 6, 'PR', 'Germany', 'Withdrawn', '2025-03-01', NULL),
(10, 7, 'PR', 'Canada', 'Approved', '2024-11-11', '2025-01-21'),
(11, 8, 'Dependent', 'USA', 'Withdrawn', '2025-03-28', NULL),
(12, 9, 'Dependent', 'Germany', 'Rejected', '2024-08-04', '2024-09-05'),
(13, 10, 'Student', 'Canada', 'Submitted', '2024-09-08', NULL),
(14, 11, 'Tourist', 'Canada', 'Submitted', '2025-04-28', NULL),
(15, 11, 'Student', 'Australia', 'Submitted', '2024-08-30', NULL),
(16, 12, 'Tourist', 'USA', 'Approved', '2025-03-21', '2025-05-04'),
(17, 13, 'Tourist', 'Germany', 'Withdrawn', '2025-06-30', NULL),
(18, 14, 'Student', 'UK', 'Submitted', '2025-06-30', NULL),
(19, 14, 'Tourist', 'Germany', 'Withdrawn', '2024-10-17', NULL),
(20, 15, 'Student', 'Germany', 'Approved', '2025-06-07', '2025-08-22'),
(21, 16, 'PR', 'Canada', 'Rejected', '2024-11-10', '2024-12-20'),
(22, 17, 'Student', 'Canada', 'Rejected', '2024-12-06', '2025-02-24'),
(23, 17, 'PR', 'Canada', 'Submitted', '2024-09-26', NULL),
(24, 18, 'Dependent', 'Canada', 'Rejected', '2025-04-05', '2025-06-18'),
(25, 19, 'Tourist', 'USA', 'Withdrawn', '2025-05-26', NULL),
(26, 19, 'PR', 'Germany', 'Approved', '2024-11-09', '2024-12-19'),
(27, 20, 'Student', 'USA', 'Rejected', '2025-06-02', '2025-07-05'),
(28, 20, 'Student', 'Australia', 'Approved', '2025-05-27', '2025-08-17'),
(29, 21, 'PR', 'Australia', 'Withdrawn', '2024-11-19', NULL),
(30, 22, 'Student', 'Canada', 'Rejected', '2025-04-28', '2025-06-14'),
(31, 23, 'Dependent', 'UK', 'Submitted', '2024-09-19', NULL),
(32, 24, 'Student', 'Germany', 'Withdrawn', '2024-08-16', NULL),
(33, 24, 'PR', 'Australia', 'Withdrawn', '2025-03-15', NULL),
(34, 25, 'Tourist', 'Germany', 'Submitted', '2025-06-07', NULL),
(35, 26, 'Tourist', 'Germany', 'Withdrawn', '2024-09-12', NULL),
(36, 27, 'Student', 'Australia', 'Approved', '2024-09-15', '2024-12-01'),
(37, 27, 'Tourist', 'USA', 'Submitted', '2024-11-16', NULL),
(38, 28, 'PR', 'Germany', 'Rejected', '2024-12-15', '2025-02-07'),
(39, 28, 'PR', 'Germany', 'Approved', '2025-05-13', '2025-07-01'),
(40, 29, 'Student', 'Canada', 'Withdrawn', '2025-04-13', NULL),
(41, 30, 'Student', 'UK', 'Approved', '2025-01-17', '2025-03-25'),
(42, 31, 'Student', 'UK', 'Submitted', '2025-05-20', NULL),
(43, 32, 'PR', 'USA', 'Rejected', '2024-08-04', '2024-10-01'),
(44, 33, 'Tourist', 'Germany', 'Submitted', '2025-03-14', NULL),
(45, 34, 'PR', 'Canada', 'Approved', '2024-12-07', '2025-03-12'),
(46, 35, 'Student', 'UK', 'Rejected', '2025-06-12', '2025-07-13'),
(47, 36, 'Tourist', 'UK', 'Withdrawn', '2025-04-20', NULL),
(48, 37, 'PR', 'USA', 'Withdrawn', '2025-01-04', NULL),
(49, 38, 'Student', 'UK', 'Submitted', '2024-10-23', NULL),
(50, 39, 'Student', 'Germany', 'Withdrawn', '2024-08-29', NULL),
(51, 40, 'Tourist', 'USA', 'Approved', '2025-01-06', '2025-03-18'),
(52, 40, 'Student', 'Germany', 'Rejected', '2024-10-17', '2024-12-02'),
(53, 41, 'Dependent', 'Germany', 'Submitted', '2024-09-30', NULL),
(54, 42, 'Student', 'Germany', 'Rejected', '2024-12-04', '2025-02-08'),
(55, 43, 'Dependent', 'Germany', 'Withdrawn', '2025-02-20', NULL),
(56, 44, 'Student', 'UK', 'Withdrawn', '2025-06-11', NULL),
(57, 44, 'Tourist', 'USA', 'Rejected', '2025-01-30', '2025-03-01'),
(58, 45, 'Dependent', 'Australia', 'Submitted', '2025-04-02', NULL),
(59, 46, 'Tourist', 'Canada', 'Approved', '2025-04-09', '2025-05-11'),
(60, 46, 'Tourist', 'UK', 'Rejected', '2025-06-19', '2025-07-06'),
(61, 47, 'Dependent', 'Germany', 'Rejected', '2025-01-25', '2025-03-10'),
(62, 47, 'Tourist', 'Germany', 'Submitted', '2024-10-12', NULL),
(63, 48, 'PR', 'Canada', 'Submitted', '2024-10-28', NULL),
(64, 49, 'Student', 'Germany', 'Submitted', '2025-01-08', NULL),
(65, 49, 'PR', 'UK', 'Submitted', '2024-09-14', NULL),
(66, 50, 'PR', 'Australia', 'Withdrawn', '2025-03-31', NULL),
(67, 51, 'PR', 'Germany', 'Approved', '2025-02-25', '2025-04-17'),
(68, 52, 'PR', 'Australia', 'Approved', '2025-04-15', '2025-06-25'),
(69, 53, 'PR', 'Canada', 'Submitted', '2025-01-30', NULL),
(70, 54, 'Tourist', 'Germany', 'Withdrawn', '2025-06-28', NULL),
(71, 55, 'Student', 'Canada', 'Approved', '2025-05-20', '2025-07-08'),
(72, 56, 'PR', 'Germany', 'Approved', '2025-05-09', '2025-06-22'),
(73, 57, 'Student', 'Germany', 'Approved', '2025-01-12', '2025-03-23'),
(74, 58, 'Student', 'Australia', 'Approved', '2024-08-08', '2024-10-21'),
(75, 59, 'Tourist', 'UK', 'Rejected', '2024-11-11', '2025-01-10'),
(76, 60, 'Dependent', 'Canada', 'Rejected', '2024-09-05', '2024-11-24'),
(77, 60, 'Dependent', 'Germany', 'Submitted', '2025-06-01', NULL),
(78, 61, 'Student', 'Germany', 'Withdrawn', '2025-02-22', NULL),
(79, 62, 'Student', 'Australia', 'Rejected', '2025-06-19', '2025-07-10'),
(80, 63, 'Dependent', 'Germany', 'Rejected', '2025-03-09', '2025-05-01'),
(81, 63, 'Tourist', 'Germany', 'Withdrawn', '2025-06-08', NULL),
(82, 64, 'Student', 'Canada', 'Submitted', '2024-12-11', NULL),
(83, 65, 'Tourist', 'USA', 'Withdrawn', '2024-08-24', NULL),
(84, 66, 'PR', 'Germany', 'Rejected', '2025-04-01', '2025-06-05'),
(85, 66, 'Tourist', 'UK', 'Rejected', '2025-03-15', '2025-04-18'),
(86, 67, 'Tourist', 'Germany', 'Rejected', '2025-01-16', '2025-02-19'),
(87, 68, 'Tourist', 'Germany', 'Submitted', '2025-06-21', NULL),
(88, 69, 'Tourist', 'Germany', 'Rejected', '2025-02-12', '2025-03-29'),
(89, 69, 'Student', 'Canada', 'Rejected', '2025-04-13', '2025-05-26'),
(90, 70, 'Dependent', 'Australia', 'Rejected', '2025-02-15', '2025-03-23'),
(91, 71, 'Tourist', 'Germany', 'Approved', '2025-02-24', '2025-04-20'),
(92, 72, 'Tourist', 'Germany', 'Withdrawn', '2024-10-06', NULL),
(93, 73, 'PR', 'UK', 'Withdrawn', '2025-02-06', NULL),
(94, 74, 'Dependent', 'Germany', 'Rejected', '2025-04-17', '2025-05-28'),
(95, 75, 'Student', 'UK', 'Approved', '2025-06-04', '2025-07-15'),
(96, 76, 'Tourist', 'Germany', 'Rejected', '2025-04-24', '2025-05-31'),
(97, 77, 'Tourist', 'Canada', 'Rejected', '2024-08-06', '2024-09-07'),
(98, 78, 'Student', 'Germany', 'Rejected', '2025-03-29', '2025-05-06'),
(99, 78, 'PR', 'Germany', 'Submitted', '2024-11-08', NULL),
(100, 79, 'Student', 'Australia', 'Approved', '2024-08-14', '2024-10-18'),
(101, 80, 'Tourist', 'UK', 'Submitted', '2025-05-16', NULL),
(102, 81, 'Dependent', 'Germany', 'Withdrawn', '2025-06-10', NULL),
(103, 82, 'PR', 'Germany', 'Submitted', '2025-01-19', NULL),
(104, 83, 'Tourist', 'Germany', 'Approved', '2024-08-10', '2024-09-25'),
(105, 84, 'Student', 'Canada', 'Rejected', '2025-02-05', '2025-04-11'),
(106, 85, 'Dependent', 'UK', 'Submitted', '2025-03-07', NULL),
(107, 86, 'PR', 'Australia', 'Approved', '2024-09-28', '2024-11-30'),
(108, 87, 'Student', 'Germany', 'Rejected', '2025-04-08', '2025-06-09'),
(109, 88, 'Tourist', 'Germany', 'Submitted', '2025-06-15', NULL),
(110, 89, 'Dependent', 'Canada', 'Rejected', '2025-01-03', '2025-02-20'),
(111, 89, 'Student', 'Germany', 'Withdrawn', '2024-08-19', NULL),
(112, 90, 'PR', 'Germany', 'Approved', '2025-01-14', '2025-03-30'),
(113, 91, 'Tourist', 'UK', 'Withdrawn', '2024-12-10', NULL),
(114, 92, 'Tourist', 'Germany', 'Submitted', '2025-04-05', NULL),
(115, 93, 'Tourist', 'Germany', 'Submitted', '2025-06-03', NULL),
(116, 94, 'Tourist', 'Canada', 'Approved', '2025-01-10', '2025-03-20'),
(117, 95, 'Student', 'Germany', 'Withdrawn', '2024-11-04', NULL),
(118, 96, 'Dependent', 'Germany', 'Submitted', '2025-06-30', NULL),
(119, 97, 'Student', 'Germany', 'Rejected', '2025-02-28', '2025-04-10'),
(120, 98, 'Tourist', 'Germany', 'Withdrawn', '2025-05-11', NULL),
(121, 99, 'Student', 'Canada', 'Submitted', '2024-08-30', NULL),
(122, 100, 'Tourist', 'Germany', 'Approved', '2025-03-22', '2025-05-04');





select * from client_bio;

select * from visa_applications;




-- ANALYSIS QUERIES--

--1. All applications currently in 'Submitted' state--


SELECT va.application_id,cb.full_name,va.visa_type, va.destination_country, va.application_status
FROM visa_applications va
JOIN client_bio cb ON va.client_id = cb.client_id
WHERE va.application_status = 'Submitted';

--2.Count of applications per visa type

SELECT visa_type, COUNT(*) AS total_applications
FROM visa_applications
GROUP BY visa_type;

--Average processing time (in days) for approved applications

SELECT visa_type,
       AVG(DATEDIFF(DAY, submitted_date, decision_date)) AS avg_processing_days
FROM visa_applications
WHERE application_status = 'Approved'
  AND submitted_date IS NOT NULL
  AND decision_date IS NOT NULL
GROUP BY visa_type;

--Clients who submitted more than one application


Select c.full_name,count(*) as application_count
from client_bio c
join visa_applications va on 
c.client_id=va.client_id
group by c.full_name
having count(*)>1;

--Top 3 destination country by no of applications

Select top 3 destination_country, count(*)as Total_applications
from visa_applications
group by destination_country
order by Total_applications desc;

--List of clients and their and visa status

select cb.client_id,cb.full_name,va.visa_type,va.application_status
from client_bio cb
join visa_applications va on
cb.client_id=va.client_id
order by client_id;

--Total applications by visatype

select visa_type,count(*) as total_applications
from visa_applications
group by visa_type
order by total_applications desc;

--application submitted in last 30 days

select * from visa_applications
where submitted_date>=DATEADD(day,-30,
getdate());

--find applications older than 90 days

select * from visa_applications
where DATEDIFF(day,submitted_date,getdate())>90;

--Applications by year

select year(submitted_date)as year,count(*) as total
from visa_applications
group by year(submitted_date)
order by year;


--Group client by first letter of name

select left (full_name,1) as Name_intial,
count(*) as total_clients
from client_bio
group by LEFT(full_name,1)
order by Name_intial;


--Format the submitted_date


select application_id,visa_type,
format(submitted_date,'dd-MMM-yyyy') as
formatted_date
from visa_applications;


--Substring(get 3 letters of visa_type)

select application_id,visa_type,
SUBSTRING(visa_type,1,3) as visa_prefix
from visa_applications;

--Replace null vale

select application_id,visa_type,destination_country,
ISNULL(decision_date,'2025-11-12') as Current_status
from visa_applications;

--Using Row_number

select va.application_id,va.destination_country,va.submitted_date,
row_number() over (partition by
destination_country order by submitted_date) as row_num
from visa_applications va;


--Using Rank

Select destination_country,count(*) as total_applications,
rank() over(order by count(*) desc)as rank_by_count
from visa_applications
group by destination_country;

--Charindex and substring

select visa_type,
SUBSTRING(visa_type,1,4) as visa_code,
CHARINDEX('PR',visa_type) as tour_position
from visa_applications;

--Views for reusable code

CREATE VIEW vw_active_applications AS
select
 va.application_id,
 cb.full_name,
 va.destination_country,
 va.application_status
from visa_applications va
join client_bio cb on va.client_id=cb.client_id
where va.application_status IN('Submitted','approved');


select * from vw_active_applications;


--Procedure to get applications by country


create procedure GetApplicationStatsByCountry
@country nvarchar(100)
as
begin
 select
  visa_type,count(*) as total_applications
  from visa_applications
  where destination_country=@country
  group by visa_type;

end;

exec GetApplicationStatsByCountry @country='canada';


--Get countries with more than 20 visa application using CTE

WITH Countrycounts as(
select destination_country, count(*) as total_applications
from visa_applications
group by destination_country
)
select* from Countrycounts
where total_applications>20;