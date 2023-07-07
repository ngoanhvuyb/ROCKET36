-- Cau 1
SELECT * FROM `account` acc
INNER JOIN  department dep
ON acc.DepartmentID = dep.DepartmentID;

-- Cau 2
SELECT * FROM `account`
WHERE CreateDate > '2012/12/20';

-- Cau 3
SELECT * FROM `account` acc
INNER JOIN `Position` pos
ON acc.PositionID = pos.PositionID
WHERE pos.PositionName = 'Dev';

-- Cau 4
SELECT DepartmentName, COUNT(DepartmentID) FROM `account` acc
INNER JOIN `Department` dep
ON acc.DepartmentID = dep.DepartmentID 
GROUP BY acc.DepartmentID
HAVING COUNT(DepartmentID) > 3 ;

-- Cau 5 
SELECT QuestionID, COUNT(*) AS ExamCounter
FROM ExamQuestion
GROUP BY QuestionID
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Cau 6
SELECT CategoryID, COUNT(*) AS QuestionCount
FROM Question
GROUP BY CategoryID;

-- Cau 7
SELECT QuestionID, COUNT(*) AS ExamCount
FROM ExamQuestion
GROUP BY QuestionID;

-- Cau 8
SELECT QuestionID, COUNT(*) AS AnswerCount
FROM Answer
GROUP BY QuestionID
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Cau 9(error)
SELECT GroupID, COUNT(*) AS AccountCount FROM `Account` acc
JOIN `group` gr 
ON acc.GroupID = gr.GroupID
GROUP BY GroupID;

-- Cau 10
SELECT PositionName, COUNT(*) AS EmployeeCount
FROM Position
GROUP BY PositionName
ORDER BY COUNT(*) ASC
LIMIT 5;

-- Cau  17 
select * from `account`
UNION
select * from `account`;
