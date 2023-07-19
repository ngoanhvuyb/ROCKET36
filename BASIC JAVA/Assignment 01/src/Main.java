import java.text.ParseException;

public class Main {
    public static void main(String[] args) throws ParseException {

//        CreateDepartment
        Department department1 = new Department();
        department1.DepartmentID = 1;
        department1.DepartmentName = "sale";

        Department department2 = new Department();
        department2.DepartmentID = 2;
        department2.DepartmentName = "marketing";

        Department department3 = new Department();
        department3.DepartmentID = 3;
        department3.DepartmentName = "ban hang";

//        CreatePosition
        Position position1 = new Position();
        position1.PositionID = 1;
        position1.PositionName = "Dev";

        Position position2 = new Position();
        position2.PositionID = 2;
        position2.PositionName = "Test";

        Position position3 = new Position();
        position3.PositionID = 3;
        position3.PositionName = "PM";

//        CreateAccount
        Account account1 = new Account();
        account1.AccountID = 1;
        account1.Username = "ngoanhvuyb";
        account1.FullName = "Ngo Anh Vu";
        account1.Email = "ngoanhvu0406@gmail.com";
        account1.CreateDate = "2020-03-05 00:00:00";
        account1.DepartmentID = department1;
        account1.PositionID = position1;

        Account account2 = new Account();
        account2.AccountID = 2;
        account2.Username = "lum";
        account2.FullName = "Nguyen tung lam";
        account2.Email = "nguyentunglam@gmail.com";
        account2.CreateDate = "2020-03-05 00:00:00";
        account2.DepartmentID = department2;
        account2.PositionID = position2;

        Account account3 = new Account();
        account3.AccountID = 3;
        account3.Username = "tundag";
        account3.FullName = "Dang minh tuan";
        account3.Email = "dangminhtuan@gmail.com";
        account3.CreateDate = "2020-03-07 00:00:00";
        account3.DepartmentID = department3;
        account3.PositionID = position3;

//        CreateGroup
        Group group1 = new Group();
        group1.GroupID = 1;
        group1.CreateDate ="2019-03-05 00:00:00" ;
        group1.GroupName = "Development";
        group1.CreatorID = 1;

        Group group2 = new Group();
        group2.GroupID = 2;
        group2.CreateDate = "2020-03-07 00:00:00" ;
        group2.GroupName = "VTI Sale 01";
        group2.CreatorID = 2;

        Group group3 = new Group();
        group3.GroupID = 3;
        group3.CreateDate = "2020-03-09 00:00:00" ;
        group3.GroupName = "VTI Sale 02";
        group3.CreatorID = 3;

//        CreateGroupAccount
        GroupAccount groupAccount1 =new GroupAccount();
        groupAccount1.AccountID = account1;
        groupAccount1.GroupID = group1;
        groupAccount1.JoinDate = "2019-03-05 00:00:00";

        GroupAccount groupAccount2 =new GroupAccount();
        groupAccount2.AccountID = account2;
        groupAccount2.GroupID = group2;
        groupAccount2.JoinDate = "2020-03-07 00:00:00";

        GroupAccount groupAccount3 =new GroupAccount();
        groupAccount3.AccountID = account3;
        groupAccount3.GroupID = group3;
        groupAccount3.JoinDate = "2020-04-06 00:00:00";

//        CreateTypeQuestion
        TypeQuestion typeQuestion1 = new TypeQuestion();
        typeQuestion1.TypeID = 1;
        typeQuestion1.TypeName = "Essay";

        TypeQuestion typeQuestion2 = new TypeQuestion();
        typeQuestion2.TypeID = 2;
        typeQuestion2.TypeName = "Multiple-Choice";

//        CreateCategoryQuestion
        CategoryQuestion categoryQuestion1 = new CategoryQuestion();
        categoryQuestion1.CategoryID = 1;
        categoryQuestion1.CategoryName = "Java";

        CategoryQuestion categoryQuestion2 = new CategoryQuestion();
        categoryQuestion2.CategoryID = 2;
        categoryQuestion2.CategoryName = "ASP.NET";

        CategoryQuestion categoryQuestion3 = new CategoryQuestion();
        categoryQuestion3.CategoryID = 3;
        categoryQuestion3.CategoryName = "ADO.NET";

//        CreateQuestion
        Question question1 = new Question();
        question1.QuestionID = 1;
        question1.Content = "Câu hỏi về Java";
        question1.CategoryID = categoryQuestion1;
        question1.TypeID = typeQuestion1;
        question1.CreatorID = 1;
        question1.CreateDate = "2020-04-05 00:00:00";

        Question question2 = new Question();
        question2.QuestionID = 2;
        question2.Content = "Câu Hỏi về PHP";
        question2.CategoryID = categoryQuestion2;
        question2.TypeID = typeQuestion2;
        question2.CreatorID = 2;
        question2.CreateDate ="2020-04-05 00:00:00";

        Question question3 = new Question();
        question3.QuestionID = 3;
        question3.Content = "Hỏi về C#";
        question3.CategoryID = categoryQuestion3;
        question3.TypeID = typeQuestion2;
        question3.CreatorID = 3;
        question3.CreateDate = "2020-04-06 00:00:00";


//        CreateAnswer
        Answer answer1 = new Answer();
        answer1.AnswerID = 1;
        answer1.QuesionID = question1;
        answer1.Content = "Trả lời 01";
        answer1.isCorrect = true;

        Answer answer2 = new Answer();
        answer2.AnswerID = 2;
        answer2.QuesionID = question2;
        answer2.Content = "Trả lời 02";
        answer2.isCorrect = false;

        Answer answer3 = new Answer();
        answer3.AnswerID = 3;
        answer3.QuesionID = question3;
        answer3.Content = "Trả lời 03";
        answer3.isCorrect = true;

//        CreateExam
        Exam exam1 = new Exam();
        exam1.ExamID = 1;
        exam1.CategotyID = categoryQuestion1;
        exam1.CreatorID = 1;
        exam1.Duration = 60;
        exam1.Code = "VTIQ001";
        exam1.Title = "Đề thi C#";
        exam1.CreateDate = "2019-04-05 00:00:00";

        Exam exam2 = new Exam();
        exam2.ExamID = 2;
        exam2.CategotyID = categoryQuestion2;
        exam2.CreatorID = 2;
        exam2.Duration = 60;
        exam2.Code = "VTIQ002";
        exam2.Title = "Đề thi PHP";
        exam2.CreateDate = "2019-04-05 00:00:00";

        Exam exam3 = new Exam();
        exam3.ExamID = 3;
        exam3.CategotyID = categoryQuestion3;
        exam3.CreatorID = 3;
        exam3.Duration = 120;
        exam3.Code = "VTIQ003";
        exam3.Title = "Đề thi C++";
        exam3.CreateDate = "2019-04-07 00:00:00";
        
//        CreateExamQuestion
        ExamQuestion examQuestion1 = new ExamQuestion();
        examQuestion1.ExamID = exam1;
        examQuestion1.QuestionID = question1;

        ExamQuestion examQuestion2 = new ExamQuestion();
        examQuestion2.ExamID = exam2;
        examQuestion2.QuestionID = question2;

        ExamQuestion examQuestion3 = new ExamQuestion();
        examQuestion3.ExamID = exam3;
        examQuestion3.QuestionID = question3;


        System.out.println("Thông tin phòng ban 1:");
        System.out.println("Id:"+department1.DepartmentID);
        System.out.println("Name:"+department1.DepartmentName);
        System.out.println("\n");

        System.out.println("Thông tin postion 1:");
        System.out.println("Id:"+position1.PositionID);
        System.out.println("Name:"+position1.PositionName);
        System.out.println("\n");

        System.out.println("Thông tin account 1:");
        System.out.println("AccountId:"+account1.AccountID);
        System.out.println("DepartmentId:"+account1.DepartmentID);
        System.out.println("postionId:"+account1.PositionID);
        System.out.println("Username:"+account1.Username);
        System.out.println("Fullname:"+account1.FullName);
        System.out.println("Email:"+account1.Email);
        System.out.println("CreateDate:"+account1.CreateDate);
        System.out.println("\n");

        System.out.println("Thông tin group 1:");
        System.out.println("Id:"+group1.GroupID);
        System.out.println("Name:"+group1.GroupName);
        System.out.println("CreatorId:"+group1.CreatorID);
        System.out.println("CreateDate:"+group1.CreateDate);
        System.out.println("\n");

        System.out.println("Thông tin GroupAccount 1:");
        System.out.println("GroupId:"+groupAccount1.GroupID);
        System.out.println("AccountId:"+groupAccount1.AccountID);
        System.out.println("Joindate:"+groupAccount1.JoinDate);
        System.out.println("\n");

        System.out.println("Thông tin TypeQuestion1");
        System.out.println("Id:"+typeQuestion1.TypeID);
        System.out.println("Name:"+typeQuestion1.TypeName);
        System.out.println("\n");

        System.out.println("Thông tin CategotyQuestion1");
        System.out.println("Id:"+categoryQuestion1.CategoryID);
        System.out.println("Name:"+categoryQuestion1.CategoryName);
        System.out.println("\n");

        System.out.println("Thông tin Question1");
        System.out.println("Id:"+question1.QuestionID);
        System.out.println("Content:"+question1.Content);
        System.out.println("CategoryId:"+question1.CategoryID);
        System.out.println("TypeId:"+question1.TypeID);
        System.out.println("CreatorId"+question1.CreatorID);
        System.out.println("CreateDate:"+question1.CreateDate);
        System.out.println("\n");

        System.out.println("Thông tin Answer1");
        System.out.println("Id:"+answer1.AnswerID);
        System.out.println("Content:"+answer1.Content);
        System.out.println("QuestionId:"+answer1.QuesionID);
        System.out.println("IsCorrect:"+answer1.isCorrect);
        System.out.println("\n");

        System.out.println("Thông tin Exam1");
        System.out.println("Id:"+exam1.ExamID);
        System.out.println("Code:"+exam1.Code);
        System.out.println("Title:"+exam1.Title);
        System.out.println("CategoryId:"+exam1.CategotyID);
        System.out.println("Duration:"+exam1.Duration);
        System.out.println("CreatorId:"+exam1.CreatorID);
        System.out.println("CreateDate:"+exam1.CreateDate);
        System.out.println("\n");

        System.out.println("Thông tin ExamQuestion1");
        System.out.println("ExamId:"+examQuestion1.ExamID);
        System.out.println("QuestionId:"+examQuestion1.QuestionID);
        System.out.println("\n");
    }

}