CREATE DATABASE Testing_System_Assignment_2;
USE Testing_System_Assignment_2;

CREATE TABLE Department(
	DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
-- add data deparment
INSERT INTO Department(DepartmentID, DepartmentName)
VALUES 	(1, 'MAKETING'),
		(2, 'SALE'),
        (3, 'BAO VE'),
        (4, 'NHAN SU'),
        (5, 'KY THUAT'),
        (6, 'TAI CHINH'),
        (7, 'PHO GIAM DO'),
        (8, 'GIAM DOC'),
        (9, 'THU KI'),
        (10, 'BAN HANG');


CREATE TABLE `Position`(
	PositionID INT PRIMARY KEY,
    PositionName VARCHAR(50)
);

-- add data Position
INSERT INTO `Position`(PositionID, PositionName)
VALUES 	(1, 'Dev'),
		(2, 'Test'),
        (3, 'Scrum Master'),
        (4, 'PM'),
        (5, 'Data Engineer'),
        (6, 'Business Analyst');

CREATE TABLE `Account`(
	AccountID INT PRIMARY KEY,
    Email VARCHAR(50),
    Username VARCHAR(50),
    FullName VARCHAR(50),
    DepartmentID INT,
    PositionID INT,
    CreateDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID),
    FOREIGN KEY (PositionID) REFERENCES Position (PositionID)
);
-- add data Account
INSERT INTO `Account`(AccountID, Email, Username, FullName, DepartmentID, PositionID, CreateDate)
VALUES 	(1, 'ngoanhvu0406@gmail.com', 'ngoanhvu0406', 'ngoanhvu', 1, 1, 2023/07/01),
		(2, 'dangminhtuan@gmail.com', 'dangminhtuan1', 'dangminhtuan', 2, 2, 2023/07/01),
        (3, 'hoanghainam1@gmail.com', 'hoanghainam2', 'hoanghainam', 3, 3, 2023/07/01),
        (4, 'hoangducquang@gmail.com', 'hoangducquang3', 'hoangducquang', 4, 4, 2023/07/01),
        (5, 'nguyentunglam6@gmail.com', 'nguyentunglam4', 'nguyentunglam',5 ,5, 2023/07/01),
        (6, 'tranngoccanh@gmail.com', 'tranngocacanh5', 'tranngoccanh', 6, 6, 2023/07/01);

CREATE TABLE `Group`(
	GroupID INT PRIMARY KEY,
    GroupName VARCHAR(50),
    CreatorID INT,
    CreateDate DATE
);
-- add data Group
INSERT INTO `Group`(GroupID, GroupName, CreatorID, CreateDate)
VALUES 	(1,'TOKYO', 1, 2023/07/01),
		(2,'SEOUL', 2, 2023/07/01),
        (3,'MEXICO', 3, 2023/07/01),
        (4,'LONDON', 4, 2023/07/01),
        (5,'HONG KONG', 5, 2023/07/01),
        (6,'PARIS', 6, 2023/07/01);
		
CREATE TABLE GroupAccount(
	GroupID INT,
    AccountID INT,
    JoinDate DATE,
    FOREIGN KEY (GroupID) REFERENCES `Group`(GroupID),
    FOREIGN KEY (AccountID) REFERENCES `Account`(AccountID)
);

-- add data GroupAccount
INSERT INTO GroupAccount(GroupID, AccountID, JoinDate)
VALUES 	(1, 1, 2023/07/01),
		(2, 2, 2023/07/01),
        (3, 3, 2023/07/01),
        (4, 4, 2023/07/01),
        (5, 5, 2023/07/01),
        (6, 6, 2023/07/01);


CREATE TABLE TypeQuestion(
	TypeID INT PRIMARY KEY,
    TypeName VARCHAR(50)
);

-- add data TypeQuestion
INSERT INTO TypeQuestion(TypeID, TypeName)
VALUES 	(1, 'Essay'),
		(2, 'Yes/No question'),
        (3, 'Tag question'),
        (4, 'Multiple-Choice'),
        (5, 'Wh-question'),
        (6, 'Negative question');


CREATE TABLE CategoryQuestion(
	CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

-- add data CategoryQuestion
INSERT INTO CategoryQuestion(CategoryID, CategoryName)
VALUES 	(1, 'Java'),
		(2, '.NET'),
        (3, 'SQL'),
        (4, 'Postman'),
        (5, 'Ruby'),
        (6, 'C++');


CREATE TABLE Question(
	QuestionID INT PRIMARY KEY,
    Content VARCHAR(50),
    CategoryID INT,
    TypeID INT,
    CreatorID INT,
    CreateDate DATE,
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion (CategoryID),
    FOREIGN KEY (TypeID) REFERENCES TypeQuestion (TypeID)
);

-- add data Question
INSERT INTO Question(QuestionID, Content, CategoryID, TypeID, CreatorID, CreateDate)
VALUES 	(1, 'Tim hieu ve java', 1, 1, 1, 2023/07/01),
		(2, 'tim hieu ve .NET', 2, 2, 2, 2023/07/01),
        (3, 'tim hieu ve SQL', 3, 3, 3, 2023/07/01),
        (4, 'tim hieu ve postman', 4, 4, 4, 2023/07/01),
        (5, 'tim hieu ve RUBY', 5,5 ,5, 2023/07/01),
        (6, 'tim hieu ve C++', 6, 6, 6, 2023/07/01);


CREATE TABLE Answer(
	AnswerID INT PRIMARY KEY,
    Content VARCHAR(50),
    QuestionID INT,
    isCorrect BIT(1),
    FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
);



CREATE TABLE Exam(
	ExamID INT PRIMARY KEY,
    Code INT,
    Title VARCHAR(50),
    CategoryID INT,
    Duration TIME,
    CreatorID INT,
    CreateDate DATE,
	FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion (CategoryID)
);

-- add data Exam
INSERT INTO Exam(ExamID, Code, Title, TypeID, CategoryID, Duration, CreatorID, CreateDate)
VALUES 	(1, 1, 'java', '1:30:00', 1, 2023/07/01),
		(2, 2, '.NET', '1:30:00', 2, 2023/07/01),
        (3, 3, 'SQL', '1:30:00', 3, 2023/07/01),
        (4, 4, 'postman', '1:30:00', 4, 2023/07/01),
        (5, 5, 'RUBY',5 , '1:30:00', 2023/07/01),
        (6, 6, 'C++', 6, '1:30:00', 2023/07/01);


CREATE TABLE ExamQuestion(
	ExamID INT PRIMARY KEY,
    QuestionID INT,
    FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
);

-- add data ExamQuestion
INSERT INTO ExamQuestion(ExamID, QuestionID)
VALUES 	(1, 1),
		(2, 2),
        (3, 3),
        (4, 4),
        (5, 5),
        (6, 6);