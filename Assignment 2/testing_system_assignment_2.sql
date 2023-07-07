CREATE DATABASE testing_system_assignment_2;
USE testing_system_assignment_2;

CREATE TABLE Department(
	DepartmentID TINYINT PRIMARY KEY ,
    DepartmantName VARCHAR(30)
    );
    
    	-- addd data Department
	INSERT INTO Department (DepartmentID,DepartmantName)
    VALUES		(1, 'MAKETING'),
				(2, 'SALE'),
				(3, 'BAO VE'),
                (4, 'NHAN SU'),
                (5, 'KY THUAT'),
                (6, 'TAI CHINH'),
                (7, 'PHO GIAM DOC'),
                (8, 'GIAM DOC'),
                (9, 'THU KI'),
				(10, 'BAN HANG');
                
                
CREATE TABLE `Position` (
	PositionID TINYINT PRIMARY KEY,
    PositionName VARCHAR(30)
);

    	-- addd data Position
	INSERT INTO `Position` (PositionID,PositionName)
    VALUES		(1, 'Dev'),
				(2, 'Tester'),
				(3, 'Scrum Master'),
                (4, 'PM'),
                (5, 'Data Engineer');
               

CREATE TABLE `Account` (
AccountID TINYINT PRIMARY KEY,
Email VARCHAR(30),
Username VARCHAR(30),
Fullname VARCHAR(30),
DepartmentID TINYINT,
PositionID TINYINT,
CreateDate DATE,
FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID),
FOREIGN KEY (PositionID) REFERENCES `Position` (PositionID)
);
  	-- addd data `Account`
	INSERT INTO `Account` (AccountID,Email,Username,Fullname,DepartmentID,PositionID,CreateDate)
    VALUES		(1, 'ngoanhvu0406@gmail.com', 'ngoanhvuyb', 'ngoanhvu', '1', '1', '04/06/2022'),
				(2, 'Tester'),
				(3, 'Scrum Master'),
                (4, 'PM)'),
                (5, 'Data Engineer');

CREATE TABLE `Group` (
	GroupID TINYINT PRIMARY KEY,
    GroupName VARCHAR(30),
    CreatorID TINYINT ,
    CreateDate DATE
);

CREATE TABLE GroupAccount (
	GroupID TINYINT ,
    AccountID TINYINT ,
    JoinDate DATE,
    FOREIGN KEY (GroupID) REFERENCES `Group` (GroupID),
    FOREIGN KEY (AccountID) REFERENCES `Account` (AccountID)
);

CREATE TABLE TypeQuestion (
	TypeID SMALLINT PRIMARY KEY,
    TypeName VARCHAR(30)
);

CREATE TABLE CategoryQuestion (
	CategoryID TINYINT PRIMARY KEY,
    CategoryName VARCHAR(30)
);

CREATE TABLE Question (
	QuestionID SMALLINT PRIMARY KEY,
    Content VARCHAR(30),
    CategoryID TINYINT,
    TypeID SMALLINT,
    CreatorID TINYINT,
    CreateDate DATE,
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion (CategoryID),
	FOREIGN KEY (TypeID) REFERENCES TypeQuestion (TypeID)
);

CREATE TABLE Answer (
	AnswerID INT PRIMARY KEY,
    Content VARCHAR(30),
    QuestionID SMALLINT,
    isCorrect BIT(1),
	FOREIGN KEY (QuestionID) REFERENCES Question (QuestionID)
);

CREATE TABLE Exam (
	ExamID TINYINT PRIMARY KEY,
    `Code` VARCHAR(30),
    Title VARCHAR(30),
    CategoryID TINYINT,
    Duration TIME,
    CreatorID TINYINT,
    CreateDate DATE,
	FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion (CategoryID)
);

CREATE TABLE ExamQuestion (
	ExamID TINYINT,
    QuestionID SMALLINT,
	FOREIGN KEY (QuestionID) REFERENCES Question (QuestionID),
    FOREIGN KEY (ExamID) REFERENCES Exam (ExamID)
);


             