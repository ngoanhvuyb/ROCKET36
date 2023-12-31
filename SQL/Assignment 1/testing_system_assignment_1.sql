CREATE DATABASE testing_system_assignment_1;
USE testing_system_assignment_1;

CREATE TABLE Department(
	DepartmentID TINYINT PRIMARY KEY,
    DepartmantName VARCHAR(30)
    );
    
CREATE TABLE `Position` (
	PositionID TINYINT PRIMARY KEY,
    PositionName VARCHAR(30)
);

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

CREATE TABLE `Group` (
	GroupID TINYINT PRIMARY KEY,
    GroupName VARCHAR(30),
    CreatorID TINYINT Unique Key,
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
	FOREIGN KEY (TypeID) REFERENCES TypeQuestion (TypeID),
	FOREIGN KEY (CreatorID) REFERENCES `Group` (CreatorID)
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
    FOREIGN KEY (CreatorID) REFERENCES `Group` (CreatorID),
	FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion (CategoryID)
);

CREATE TABLE ExamQuestion (
	ExamID TINYINT,
    QuestionID SMALLINT,
	FOREIGN KEY (QuestionID) REFERENCES Question (QuestionID),
    FOREIGN KEY (ExamID) REFERENCES Exam (ExamID)
);

