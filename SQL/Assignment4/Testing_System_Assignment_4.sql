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

-- cau5 
SELECT q.questionID, q.content, COUNT(1) AS SOLANXUATHIEN FROM question q
INNER JOIN examquestion eq
ON q.QuestionID = eq.QuestionID
GROUP BY q.QuestionID HAVING SOLANXUATHIEN =(
SELECT MAX(LISTXUATHIEN) FROM
(SELECT COUNT(1) AS LISTXUATHIEN FROM examquestion GROUP BY QuestionID) AS temp_table
);


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

-- CAU8
SELECT q.QuestionID, q.Content, COUNT(1) AS soluongcauhoi FROM Question q
INNER JOIN answer ans
ON q.QuestionID = ans.QuestionID
GROUP BY ans.QuestionID HAVING soluongcauhoi =(
SELECT MAX(LISTMAX)FROM
(SELECT COUNT(1) LISTMAX FROM answer GROUP BY QuestionID) AS FINDMAX);

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

-- CAU10
SELECT po.PositionID, po.PositionName, COUNT(1) AS TONGSONGUOI FROM `account` acc
INNER JOIN position po
on acc.PosItionID = po.PositionID
GROUP BY po.PositionID HAVING TONGSONGUOI = (
SELECT MIN(LISTMIN) FROM
(SELECT COUNT(1) AS LISTMIN FROM `account` GROUP BY positionID) AS FINDMIN);


-- cau11
SELECT d.DepartmentName, p.PositionName, COUNT(1) AS TOTAL FROM `account` acc
INNER JOIN Department d ON acc.DepartmentID = d.DepartmentID
INNER JOIN Position p ON acc.PositionID = p.PositionID
GROUP BY d.DepartmentID, p.PositionID;


SELECT d.DepartmentID, d.DepartmentName, COUNT(1) FROM `account` acc
INNER JOIN department d on acc.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentID;

-- CAU12
SELECT q.Content, tq.TypeName, acc.Fullname, ans.Content FROM Question q
INNER JOIN typequestion tq ON q.TypeID = tq.TypeID
INNER JOIN `Account` acc ON q.CreatorID = acc.AccountID 
INNER JOIN answer ans ON q.QuestionID = ans.QuestionID;

-- cau13
SELECT tq.TypeID, tq.TypeName, COUNT(1) AS TOTALQUESTION FROM question q
INNER JOIN typequestion tq
ON q.TypeID = tq.TypeID
GROUP BY tq.TypeID;

-- CAU14
SELECT * FROM  groupaccount ga 
RIGHT JOIN  `group` g ON ga.GroupID = g.GroupID
WHERE ga.AccountID IS NULL;

-- cau16
SELECT * FROM answer a
RIGHT JOIN question q ON a.QuestionID = q.QuestionID
WHERE a.answerID IS NULL;

-- Cau  17 
select * from `account`
UNION
select * from `account`;
