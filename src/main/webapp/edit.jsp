<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="package1.*, java.sql.*"%>

<html lang="en">
<head>
<meta charset="utf-8" />

<link rel="icon" type="image/png" href="assets/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<%
	 if(session.getAttribute("uID") == null || session.getAttribute("recID") != null){
		session.invalidate();
		response.sendRedirect("index.jsp");
	 }
	int uID = Integer.parseInt(session.getAttribute("uID").toString());
	%>

<title>User Profile</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />

<!--     Fonts and icons     -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

<!-- CSS Files -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="assets/css/material-kit.css" rel="stylesheet" />

<link rel="stylesheet" type="text/css" media="all"
	href="assets/css/editprofile.css">
</head>

<body class="profile-page header-filter">
	<nav class="navbar navbar-transparent navbar-absolute">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">DevHunt</a>
		</div>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="#" class="btn btn-simple btn-white btn-just-icon">
					<i class="fa fa-twitter"></i>
			</a></li>
			<li><a href="#" class="btn btn-simple btn-white btn-just-icon">
					<i class="fa fa-facebook-square"></i>
			</a></li>
			<li><a href="#" class="btn btn-simple btn-white btn-just-icon">
					<i class="fa fa-instagram"></i>
			</a></li>
			<li><a href="Servlet_logout">Logout</a></li>
			<li><a href="profile.jsp">View Profile</a></li>

		</ul>
	</div>
	</nav>

	<%

		package1.Details d = new Details();
		ResultSet rs = d.getDetails(uID);

		package1.Education e = new Education();
		ResultSet rs1 = e.getEducation(uID);

		String name = "";
		String gender = "";
		String mailId = "";
		String phoneNumber = "";
		String nationality = "";
		String fieldOfInterest = "";
		String internJob = "";
		int age = 0;
		String tenthpercent = "";
		String twelfthpercent = "";
		String board = "";
		int yearOfPassing = 0;
		String collegeName = "";
		int currentSem = 0;
		String CGPA = "";

		if(rs.next() != false){
		name = rs.getString("name");
		gender = rs.getString("gender");
		age = rs.getInt("age");
		mailId = rs.getString("mailId");
		phoneNumber = rs.getString("phoneNumber");
		nationality = rs.getString("nationality");
		fieldOfInterest = rs.getString("fieldOfInterest");
		internJob = rs.getString("internJob");
		}

		if(rs1.next() != false){
			tenthpercent = rs1.getString("tenthpercent");
			twelfthpercent = rs1.getString("twelfthpercent");
			board = rs1.getString("board");
			yearOfPassing = rs1.getInt("yearOfPassing");
			collegeName = rs1.getString("collegeName");
			currentSem = rs1.getInt("currentSem");
			CGPA = rs1.getString("CGPA");
		}

		%>


	<div class="wrapper">
		<div class="header"
			style="background: #4568DC; /* fallback for old browsers */ background: -webkit-linear-gradient(to right, #B06AB3, #4568DC); /* Chrome 10-25, Safari 5.1-6 */ background: linear-gradient(to right, #B06AB3, #4568DC); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */ height: 180px;"></div>
		<div id="w">
			<div id="content" class="clearfix">
				<div id="userphoto">
					<img src="assets/img/avatar.jpg" alt="default avatar" width="200"
						height="200">
				</div>
				<h1>User Profile</h1>

				<nav id="profiletabs">
				<ul class="clearfix">
					<li><a href="#about" class="sel">About</a></li>
					<li><a href="#education">Education</a></li>
					<li><a href="#skills">Skills</a></li>
					<li><a href="#workex">Work Experience</a></li>
					<li><a href="#certifications">Certifications</a></li>
				</ul>
				</nav>

				<section id="about">
				<form class="form" method="get" action="Servlet_updatedetails">
					<p>General Information:</p>
					<p class="setting2" id="lname">
						<span>Name </span><input type="text" name="name"
							value='<%=name %>' class="form-control" id="username"
							placeholder="Name...">
					</p>
					<p class="setting2" id="lage">
						<span>Age </span><input type="text" name="age" value='<%=age %>'
							class="form-control" id="age" placeholder="Age...">
					</p>
					<p class="setting2" id="lgender">
						<span>Gender </span><input type="text" name="gender"
							value='<%=gender %>' class="form-control" id="gender"
							placeholder="Gender...">
					</p>
					<p class="setting2" id="lnationality">
						<span>Nationality </span><input type="text" name="nationality"
							value='<%=nationality %>' class="form-control" id="nationality"
							placeholder="Nationality...">
					</p>
					<p class="setting2" id="lemail">
						<span>E-mail </span><input type="text" name="mailId"
							value='<%=mailId %>' class="form-control" id="email"
							placeholder="E-mail...">
					</p>
					<p class="setting2" id="lphone">
						<span>Phone </span><input type="text" name="phoneNumber"
							value='<%=phoneNumber %>' class="form-control" id="phone"
							placeholder="Phone...">
					</p>
					<p class="setting2" id="lphone">
						<span>Field of Interest </span><input type="text"
							name="fieldOfInterest" value='<%=fieldOfInterest %>'
							class="form-control" id="phone"
							placeholder="Field of Interest...">
					</p>
					<p class="setting2" id="lphone">
						<span>Intern / Job </span><input type="text" name="internJob"
							value='<%=internJob %>' class="form-control" id="phone"
							placeholder="Intern or Job...">
					</p>
					<center>
						<button type="submit"
							class="btn btn-primary btn-simple btn-lg btn-login-submit">Submit</button>
					</center>
				</form>
				</section>

				<section id="education" class="hidden">
				<form class="form" method="get" action="Servlet_updateeducation">
					<p>Education:</p>
					<p class="setting2" id="lboard">
						<span>Board </span><input type="text" name="board"
							value='<%=board %>' class="form-control" id="board"
							placeholder="Board...">
					</p>
					<p class="setting2" id="l10per">
						<span>10th Percentage </span><input type="text"
							name="tenthpercent" value='<%=tenthpercent %>'
							class="form-control" id="10per" placeholder="10th Percentage...">
					</p>
					<p class="setting2" id="l12per">
						<span>12th Percentage </span><input type="text"
							name="twelfthpercent" value='<%=twelfthpercent %>'
							class="form-control" id="12per" placeholder="12th Percentage...">
					</p>
					<p class="setting2" id="lyearop">
						<span>Year of Passing </span><input type="text"
							name="yearOfPassing" value='<%=yearOfPassing %>'
							class="form-control" id="yearop" placeholder="Year Of Passing...">
					</p>
					<p class="setting2" id="lcollege">
						<span>College </span><input type="text" name="collegeName"
							value='<%=collegeName %>' class="form-control" id="college"
							placeholder="College Name...">
					</p>
					<p class="setting2" id="lcollege">
						<span>Current Sem </span><input type="text" name="currentSem"
							value='<%=currentSem %>' class="form-control" id="college"
							placeholder="Current Semester...">
					</p>
					<p class="setting2" id="lcgpa">
						<span>CGPA </span><input type="text" name="CGPA"
							value='<%=CGPA %>' class="form-control" id="cgpa"
							placeholder="CGPA...">
					</p>
					<center>
						<button type="submit"
							class="btn btn-primary btn-simple btn-lg btn-login-submit">Submit</button>
					</center>
				</form>
				</section>

				<section id="skills" class="hidden">
				<form class="form" method="get" action="Servlet_addskill">
					<p>Add new skill:</p>
					<p class="setting2">
						<span>Name</span><input type="text" name="skillName" value=''
							class="form-control" id="skname" placeholder="Skill Name">
					</p>
					<p class="setting2">
						<span>Efficiency:</span><input type="text"
							name="percentEfficiency" value='' class="form-control"
							id="skefficiency" placeholder="Percentage">
					</p>
					<p class="setting2">
						<span>Experience:</span><input type="text" name="noOfYears"
							value='' class="form-control" id="skyears"
							placeholder="Number of Years">
					</p>
					<center>
						<button type="submit"
							class="btn btn-primary btn-simple btn-lg btn-login-submit">Submit</button>
					</center>
				</form>
				</section>

				<section id="workex" class="hidden">
				<p>Add work experience:</p>
				<form class="form" method="get" action="Servlet_addintern">
					<p class="setting2">
						<strong>INTERNSHIP</strong>
					</p>
					<p class="setting2">
						<span>Company:</span><input type="text" name="companyName"
							value='' class="form-control" id="company"
							placeholder="Company Name">
					</p>
					<p class="setting2">
						<span>Started:</span><input class="datepicker form-control"
							type="text" name="startDate" value="" id="intstarted"
							placeholder="mm/dd/yyyy" />
					</p>
					<p class="setting2">
						<span>Ended:</span><input class="datepicker form-control"
							type="text" name="endDate" value="" id="intended"
							placeholder="mm/dd/yyyy" />
					</p>
					<p class="setting2">
						<span>Stipend:</span><input type="text" value=''
							class="form-control" name="stipend" id="stipend"
							placeholder="Stipend">
					</p>
					<center>
						<button type="submit"
							class="btn btn-primary btn-simple btn-lg btn-login-submit">Submit</button>
					</center>
				</form>

				<form class="form" method="get" action="Servlet_addresearch">
					<p class="setting2">
						<strong>RESEARCH</strong>
					</p>
					<p class="setting2">
						<span>Topic:</span><input type="text" name="topic" value=''
							class="form-control" id="rtopic" placeholder="Topic">
					</p>
					<p class="setting2">
						<span>Field:</span><input class="form-control" type="text"
							name="field" value="" id="rfield" placeholder="Field" />
					</p>
					<p class="setting2">
						<span>Published:</span><input class="datepicker form-control"
							type="text" name="publishDate" value="" id="rpublished"
							placeholder="mm/dd/yyyy" />
					</p>
					<p class="setting2">
						<span>Published In:</span><input type="text" name="publishedIn"
							value='' class="form-control" id="rpublishedin"
							placeholder="Published In">
					</p>
					<p class="setting2">
						<span>Supervised By:</span><input type="text" name="supervisedBy"
							value='' class="form-control" id="rsupervised"
							placeholder="Supervsed By">
					</p>
					<center>
						<button type="submit"
							class="btn btn-primary btn-simple btn-lg btn-login-submit">Submit</button>
					</center>
				</form>


				<form class="form" method="get" action="Servlet_addproject">
					<p class="setting2">
						<strong>PROJECT</strong>
					</p>
					<p class="setting2">
						<span>Topic:</span><input type="text" name="topic" value=''
							class="form-control" id="ptopic" placeholder="Topic">
					</p>
					<p class="setting2">
						<span>Field:</span><input class="form-control" type="text"
							name="field" value="" id="pfield" placeholder="Field" />
					</p>
					<p class="setting2">
						<span>Started:</span><input class="datepicker form-control"
							type="text" name="startDate" value="" id="pstarted"
							placeholder="mm/dd/yyyy" />
					</p>
					<p class="setting2">
						<span>Ended:</span><input class="datepicker form-control"
							type="text" name="endDate" value="" id="pended"
							placeholder="mm/dd/yyyy" />
					</p>
					<p class="setting2">
						<span>Supervised By:</span><input type="text" name="supervisedBy"
							value='' class="form-control" id="supervised"
							placeholder="Supervsed By">
					</p>
					<center>
						<button type="submit"
							class="btn btn-primary btn-simple btn-lg btn-login-submit">Submit</button>
					</center>
				</form>
				</section>

				<section id="certifications" class="hidden">
				<form class="form" method="get" action="Servlet_addcertificate">
					<p>Add new certification:</p>
					<p class="setting2">
						<span>Name</span><input type="text" name="skillName" value=''
							class="form-control" id="skname" placeholder="Skill Name">
					</p>
					<p class="setting2">
						<span>Organization:</span><input type="text" name="issueDate"
							value='' class="form-control" id="skorg"
							placeholder="Organization Name">
					</p>
					<p class="setting2">
						<span>Issued On:</span><input class="datepicker form-control"
							type="text" name="organisation" value="" id="skdate"
							placeholder="mm/dd/yyyy" />
					</p>
					<p class="setting2">
						<span>Course Name:</span><input type="text" name="courseName"
							value='' class="form-control" id="skorg"
							placeholder="Course Name">
					</p>
					<center>
						<button type="submit"
							class="btn btn-primary btn-simple btn-lg btn-login-submit">Submit</button>
					</center>
				</form>
				</section>
			</div>
			<!-- @end #content -->
		</div>
		<!-- @end #w -->
	</div>
	</div>

	<footer class="footer">
	<div class="container">
		<div class="copyright" style="text-align: center; color: #FFF;">
			&copy; 2016 | Made by Team 40</div>
	</div>
	</footer>
</body>
<!-- Core JS Files -->
<script src="assets/js/jquery.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/material.min.js"></script>
<script src="assets/js/editprofile.js"></script>

<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
<script src="assets/js/bootstrap-datepicker.js" type="text/javascript"></script>

<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
<script src="assets/js/material-kit.js" type="text/javascript"></script>
</html>
