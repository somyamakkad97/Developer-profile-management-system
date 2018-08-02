package package1;

public class Start {

public static void main(String[] args) {

	connection connect = new connection();

	try{
		String sql_0="drop table if exists Education";
		connect.update(sql_0);
		String sql_1="drop table if exists Details";
		connect.update(sql_1);
		String sql_2="drop table if exists SkillSet";
		connect.update(sql_2);
		String sql_3="drop table if exists Certification";
		connect.update(sql_3);
		/*String sql_4="drop table if exists WorkExperience ";
		connect.update(sql_4);
		String sql_5="drop table if exists Efficiency";
		connect.update(sql_5);*/
		String sql_6="drop table if exists Internships";
		connect.update(sql_6);
		String sql_7="drop table if exists Projects";
		connect.update(sql_7);
		String sql_8="drop table if exists Research";
		connect.update(sql_8);
		/*String sql_9="drop table if exists ProjectID";
		connect.update(sql_9);
		String sql_10="drop table if exists ResearchID";
		connect.update(sql_10);*/
		String sql_11="drop table if exists Login";
		connect.update(sql_11);
		String sql_12="drop table if exists RecDetails";
		connect.update(sql_12);
		String sql_13="drop table if exists RecLogin";
		connect.update(sql_13);


		String sql0 = "CREATE TABLE Education " +
		              "(uID INTEGER not NULL, " +
		              " tenthPercent float, " +
		              " twelfthPercent float, " +
		              " board char(4), " +
		              " yearOfPassing int, " +
		              "collegeName varchar(50), "+
		              "currentSem int, " +
		              "CGPA float, "+
		              " PRIMARY KEY ( uID))";
		connect.update(sql0);

		String sql1 = "CREATE TABLE Details " +
		              "(uID integer not null, " +
		              " name varchar(50), " +
		              " gender varchar(10), " +
		              " age int, " +
		              " mailId varchar(50), " +
		              " phoneNumber varchar(15), " +
		              " nationality varchar(20), "+
		              " fieldOfInterest varchar(50), " +
		              " internJob  varchar(15), "+
		              " PRIMARY KEY ( uID))";
		connect.update(sql1);

		String sql2 = "CREATE TABLE SkillSet " +
		              "(uID integer not null, " +
		              " skillName varchar(50), " +
		              " noOfYears int," +
		              " percentEfficiency int," +
		              " PRIMARY KEY (uID,SkillName))";
		connect.update(sql2);

		String sql3 = "CREATE TABLE Certification " +
		              "(uID integer not null, " +
		              " skillName varchar(50), " +
		              " issueDate varchar(20), " +
		              " organisation varchar(50)," +
		              " courseName varchar(50)," +
		              " PRIMARY KEY (uID,SkillName))";
		connect.update(sql3);

		 /*  String sql4 = "CREATE TABLE WorkExperience " +
        				"(uID integer not null, " +
        				" skillName varchar(50), " +
        				" noOfYears int, " +
        				" noOfProjects int," +
        				" PRIMARY KEY ( uID ))";
		connect.update(sql4);  */

		/*	String sql5 = "CREATE TABLE Efficiency " +
        					"(uID integer not null, " +
        					" skillName varchar(50), " +
        					" percentEfficiency int, " +
        					" PRIMARY KEY ( uID))";
		connect.update(sql5);    */

		String sql6 = "CREATE TABLE Internships " +
		              "(uID integer not null, " +
		              " companyName varchar(50), " +
		              " startDate varchar(25), " +
		              " enddate varchar(25), " +
		              " stipend int, " +
		              " PRIMARY KEY ( uID,companyName ))";
		connect.update(sql6);

		String sql7 = "CREATE TABLE Projects " +
		              "(uID integer, "+
		              " topic varchar(50), " +
		              " field varchar(25), " +
		              " supervisedBy varchar(50)," +
		              " startDate varchar(25), " +
		              " endDate varchar(25), " +
		              " PRIMARY KEY ( uID,topic ))";
		connect.update(sql7);

		String sql8 = "CREATE TABLE Research " +
		              "(uID integer, " +
		              " topic varchar(50), " +
		              " field varchar(25), " +
		              " supervisedBy varchar(50)," +
		              " publishedIn varchar(25), " +
		              " publishDate varchar(25), " +
		              " PRIMARY KEY ( uID,topic ))";
		connect.update(sql8);

		/*String sql9 = "CREATE TABLE ProjectID " +
		              "(pID integer, " +
		              " uID integer )";
		connect.update(sql9);

		String sql10 = "CREATE TABLE ResearchID " +
		               "(rID integer, " +
		               " uID integer)";
		connect.update(sql10);*/

		String sql11 = "CREATE TABLE Login " +
		               "(uID int," +
		               " username varchar(50), " +
		               " password varchar(25))";

		connect.update(sql11);

		String sql12 = "CREATE TABLE RecDetails " +
		               "(recID integer not null, " +
		               " name varchar(50), "+
		               " companyName varchar(50), " +
		               " field varchar(25), " +
		               " position varchar(50)," +
		               " location varchar(25), " +
		               " PRIMARY KEY ( recID ))";

		connect.update(sql12);


		String sql13 = "CREATE TABLE RecLogin " +
	               "(recID int," +
	               " username varchar(50), " +
	               " password varchar(25))";

	connect.update(sql13);




		Education e=new Education();
		Details d=new Details();
		SkillSet s=new SkillSet();
		Certification c=new Certification();
		Internships i=new Internships();
		Projects p=new Projects();
		Research r=new Research();
		Login u=new Login();
		RecDetails rd=new RecDetails();
		RecLogin rc = new RecLogin();
		u.addUser("somya_makkad", "lnm234");
		u.addUser("ayush_singh","ln787");
		u.addUser("gita1", "lnm");
		u.addUser("rohan7", "lnmiit");
		e.updateEducation(1,9.8,9.0,"CBSE",2015,"LNMIIT",3,8.5);
		e.updateEducation(2,8.9,9.4,"ICSE",2014,"IIT_DELHI",5,8.9);
		e.updateEducation(3,10.0,8.9,"CBSE",2016,"IIT_BOMBAY",2,7.9);
		e.updateEducation(4,8.5,7.9,"RBSE",2014,"SRM",3,6.5);
		d.updateDetails(1, "Rita", "Female", 19, "ritajain@gmail.com", "9460337126", "Indian", "Web Development", "Intern");
		d.updateDetails(2, "Raj", "Male", 20, "rajagarwal@gmail.com", "9460337890", "Indian", "Android Development", "Intern");
		d.updateDetails(3, "Gita", "Female", 22, "gitan@gmail.com", "9468937126", "Indian", "Data Science", "Job");
		d.updateDetails(4, "Rohan", "Male", 21, "rohanjain@gmail.com", "8860337126", "Indian", "Web Development", "Intern");
		s.addSkillSet(1, "HTML",2,45);
		s.addSkillSet(1, "CSS", 1, 34);
		s.addSkillSet(2, "Java",3,67);
		s.addSkillSet(3, "Data visualisation",3,56);
		s.addSkillSet(4, "Javascript",2,78);
		c.addCertificate(1, "HTML", "12 Sept 2016", "Coursera", "The Complete Web Developer Course in HTML");
		c.addCertificate(1, "CSS", "21 Sept 2015", "Coursera", "The Complete Web Developer Course in CSS");
		c.addCertificate(2, "Java", "30 March 2016", "Udacity", "The Course in Java Part 1");
		c.addCertificate(3, "Data Visualisation", "11 Feb 2017", "edx", "Data Science 12");
		c.addCertificate(4, "Javascript", "23 Sept 2015", "Coursera", "Javascript Course");
		i.addInternships(1, "Pinslate", "12 May 2016","23 July 2016", 10000);
		i.addInternships(2, "Technooyster", "21 March 2016","23 July 2016", 15000);
		i.addInternships(3, "IN labs", "7 May 2014 ","15 July 2014", 5000);
		i.addInternships(4, "Endeavor", "12 May 2015","23 June 2015", 3000);
		p.addProjects(1, "Web portal", "Web development", "Dr. Rajbir Kaur", "12 may 2016", "23 July 2016");
		p.addProjects(2, "Gaming", "Android development", "Dr. Raj Agarwal", "12 June 2016", "23 July 2016");
		p.addProjects(3, "Twitter API Visualisation", "Data Visualisation", "Dr. Rohan Singh", "8 may 2015", "3 July 2016");
		p.addProjects(4, "Management Portal", "Web development", "Dr. Preety Singh", "12 March 2016", "2 July 2016");
		r.addResearch(1,"Research Based Web design","Web_dev", "Dr. AR", "abc", "12 Sep 2016");
		r.addResearch(1,"Website design principles","Web_dev", "Dr. Aj", "abc", "5 May 2015");
		rc.addRecruiter("karan", "lnm89");
		rc.addRecruiter("rk123", "jklnm");
		rd.addRecDetails(1, "karan", "Internshala", "web development", "regional manager", "jaipur");
		rd.addRecDetails(2, "Rk", "Eventgraphia", "photography", "CEO", "jaipur");
		e.updateEducation(1, 9.8, 9.0, "CBSE", 2015,"LNMIIT", 5, 8.7);
		d.updateDetails(2, "Raj", "Male", 20, "rajagarwal@gmail.com", "9460337890", "Indian", "Android Development", "Job");
		s.addSkillSet(3, "Probability",1,30);
		s.addSkillSet(3, "Statistics",2,45);
		s.addSkillSet(4, "HTML",1,50);
		s.addSkillSet(4, "CSS",4,80);
        c.addCertificate(3, "Probability", "17 March 2016", "Udacity", "Probability Nanodegree");
 		c.addCertificate(3, "Statistics", "11 April 2017", "edx", "Data Science 15");
		c.addCertificate(4, "HTML", "21 May 2014", "edx", "Minidegree in HTML");
		c.addCertificate(4, "CSS", "11 Sept 2017", "Coursera", "CSS for Fun Certificate");
		i.addInternships(1, "Technology For Us", "21 Sept 2016","23 Dec 2016", 7000);
		i.addInternships(1, "Web Developer Treasure", "3 May 2015","23 July 2015", 15000 );
		i.addInternships(3, "Data Scientist labs", "23 May 2014 ","15 July 2014", 6000);
		p.addProjects(2, "Java Based Android App", "Android development", "Prof. Jay", "2 May 2016", "23 July 2016");
		p.addProjects(3, "Data Prediction For Business", "Data Prediction", "Dr. Ayush Agarwal", "1 June 2016", "23 August 2016");
	}
	catch(Exception se) {
		se.printStackTrace();
	}
}
}
