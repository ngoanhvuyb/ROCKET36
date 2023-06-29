CREATE DATABASE testing_system_assignment_1;
USE testing_system_assignment_1;

CREATE TABLE Department(
	DepartmentID INT PRIMARY KEY,
    DepartmantName VARCHAR(30)
    );
    
CREATE TABLE Position (
	PositionID INT PRIMARY KEY,
    PositionName VARCHAR(30)
);

CREATE TABLE Accounts (
AccountsID INT PRIMARY KEY,
Email VARCHAR(30),
Username VARCHAR(30),
Fullname VARCHAR(30),
DepartmentID INT,
PositionID INT,
CreateDate DATE,
FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID),
FOREIGN KEY (PositionID) REFERENCES Position (PositionID)
);

CREATE TABLE GroupSS (
	GroupID INT PRIMARY KEY,
    GroupName VARCHAR(30),
    CreatorID INT Unique Key,
    CreateDate DATE
);

CREATE TABLE GroupAccount (
	GroupID INT ,
    AccountID INT ,
    JoinDate DATE,
    FOREIGN KEY (GroupID) REFERENCES GroupSS (GroupID),
    FOREIGN KEY (AccountID) REFERENCES Accounts (AccountID)
);

CREATE TABLE TypeQuestion (
	TypeID INT PRIMARY KEY,
    TypeName VARCHAR(30)
);

CREATE TABLE CategoryQuestion (
	CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(30)
    
);
CREATE TABLE Question (
	QuestionID INT PRIMARY KEY,
    Content VARCHAR(30),
    CategoryID INT,
    TypeID INT,
    CreatorID INT,
    CreateDate DATE,
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion (CategoryID),
	FOREIGN KEY (TypeID) REFERENCES TypeQuestion (TypeID),
	FOREIGN KEY (CreatorID) REFERENCES GroupSS (CreatorID)
);
CREATE TABLE Answer (
	AnswerID INT PRIMARY KEY,
    Content VARCHAR(30),
    QuestionID INT,
    isCorrect VARCHAR(30),
	FOREIGN KEY (QuestionID) REFERENCES Question (QuestionID)

);

CREATE TABLE Exam (
	ExamID INT PRIMARY KEY,
    Code VARCHAR(30),
    Title VARCHAR(30),
    CategoryID INT,
    Duration TIME,
    CreatorID INT,
    CreateDate DATE,
    FOREIGN KEY (CreatorID) REFERENCES GroupSS (CreatorID),
	FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion (CategoryID)
);

CREATE TABLE ExamQuestion (
	ExamID INT PRIMARY KEY,
    QuestionID INT,
	FOREIGN KEY (QuestionID) REFERENCES Question (QuestionID)
);

