-- Cau2
SELECT *
FROM department;

-- Cau 3
SELECT *
FROM department
WHERE DepartmentName = 'Sale';

-- Cau 4
SELECT MAX(LENGTH(FullName)) FROM `account`;

SELECT * FROM `account`
WHERE length(fullname) = (SELECT MAX(LENGTH(fullname)) FROM `account`);

-- Cau 5
SELECT * FROM `account`
WHERE length(fullname) = (SELECT MAX(LENGTH(fullname)) FROM `account`) AND DepartmentID = 5;
-- Cau 6
SELECT * FROM `group`
WHERE CreateDate;

SELECT * FROM Question;
SELECT QuestionID, COUNT(1) AS total FROM answer
GROUP BY QuestionID HAVING total >= 4;

-- Cau 8
SELECT * FROM exam
WHERE Duration > 60 AND DATE(CreateDate) > '2019-04-07';

-- Cau 9
SELECT * FROM `group`
ORDER BY CreateDate DESC
LIMIT 5;
-- Cau 10
SELECT COUNT(AccountID) FROM `account`
WHERE DepartmentID = 2;
-- Cau 11
SELECT * FROM `account`
WHERE FullName LIKE 'F%4';

-- Cau 12
DELETE FROM exam
WHERE CreateDate < '2019/12/20';
-- Cau 13
SELECT * FROM question;
DELETE FROM question
WHERE Content LIKE 'Câu hỏi%' AND QuestionID = 1;
-- Cau 14
UPDATE `account`
SET 
	FullName = 'Nguyễn Bá Lộc',
    Email = 'loc.nguyenba@vti.com.vn'
WHERE AccountID = '5';
-- Cau 15 
UPDATE groupaccount 
SET GroupID = 4
Where AccountID = 5;