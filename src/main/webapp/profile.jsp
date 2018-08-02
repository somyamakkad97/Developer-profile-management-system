<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="package1.*, java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="assets/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<%
	int uID = 0;
	 if(session.getAttribute("uID") == null){
		 session.invalidate();
		 response.sendRedirect("index.jsp");
	 }
	 else{
		uID = Integer.parseInt(session.getAttribute("uID").toString());
	 }
	%>

<title>DevHunt Login</title>

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
<link href="assets/css/main.css" rel="stylesheet" />

<script src="assets/js/jquery.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/material.min.js"></script>

<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="assets/js/nouislider.min.js" type="text/javascript"></script>

<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
<script src="assets/js/bootstrap-datepicker.js" type="text/javascript"></script>

<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
<script src="assets/js/material-kit.js" type="text/javascript"></script>

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
			<%
		            	if(session.getAttribute("recID") == null){
		            %>
			<li><a href="edit.jsp">Edit</a></li>
			<%
		            	}
		            %>
		</ul>
	</div>
	</nav>

	<div class="wrapper">
		<div class="header"
			style="background: #4568DC; /* fallback for old browsers */ background: -webkit-linear-gradient(to right, #B06AB3, #4568DC); /* Chrome 10-25, Safari 5.1-6 */ background: linear-gradient(to right, #B06AB3, #4568DC);"></div>

		<%

		package1.Details d = new Details();
		ResultSet rs = d.getDetails(uID);

		package1.Education e = new Education();
		ResultSet rs1 = e.getEducation(uID);

		package1.SkillSet s = new SkillSet();
		ResultSet skill = s.getSkillSet(uID);

		package1.Certification c = new Certification();
		ResultSet certi = c.getCertificate(uID);

		package1.Internships i = new Internships();
		ResultSet intern = i.getInternships(uID);

		package1.Projects p = new Projects();
		ResultSet proj = p.getProjects(uID);

		package1.Research r = new Research();
		ResultSet resr = r.getResearch(uID);

		String name = "";
		String gender = "";
		String mailId = "";
		String phoneNumber = "";
		String nationality = "";
		String fieldOfInterest = "";
		String internJob = "";
		int age = 0;
		int tenthpercent = 0;
		int twelfthpercent = 0;
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
			tenthpercent = rs1.getInt("tenthpercent");
			twelfthpercent = rs1.getInt("twelfthpercent");
			board = rs1.getString("board");
			yearOfPassing = rs1.getInt("yearOfPassing");
			collegeName = rs1.getString("collegeName");
			currentSem = rs1.getInt("currentSem");
			CGPA = rs1.getString("CGPA");
		}

		%>
		<div class="main main-raised">
			<div class="profile-content">
				<div class="container">
					<div class="row">
						<div class="profile">
							<div class="avatar">
								<img src="assets/img/avatar.jpg" alt="Circle Image"
									class="img-circle img-responsive img-raised">
							</div>
							<div class="name">
								<h3 class="title"><%=name %></h3>
								<h6><%=fieldOfInterest %></h6>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div class="profile-tabs">
								<div class="nav-align-center">
									<ul class="nav nav-pills" role="tablist">
										<li class="active"><a href="#about" role="tab"
											data-toggle="tab"> <i class="material-icons">account_circle</i>
												About
										</a></li>
										<li><a href="#skills" role="tab" data-toggle="tab"> <i
												class="material-icons">code</i> Skills
										</a></li>
										<li><a href="#certifications" role="tab"
											data-toggle="tab"> <i class="material-icons">list</i>
												Certifications
										</a></li>
										<li><a href="#workex" role="tab" data-toggle="tab"> <i
												class="material-icons">business</i> Work Experience
										</a></li>
									</ul>

									<div class="tab-content gallery">
										<div class="tab-pane active" id="about">
											<div class="row">
												<div class="col-md-6 details">
													<br>
													<p id="gender">
														<strong>Gender: </strong><%=gender %></p>
													<p id="age">
														<strong>Age: </strong><%=age %></p>
													<p id="nationality">
														<strong>Nationality: </strong><%=nationality %></p>
													<p id="email">
														<strong>E-mail: </strong><%=mailId %></p>
													<p id="phone">
														<strong>Phone: </strong><%=phoneNumber %></p>
												</div>

												<div class="col-md-6 education">
													<br>
													<p id="board">
														<strong>Board: </strong><%=board %></p>
													<p id="12per">
														<strong>12th Percentage: </strong><%=twelfthpercent %>%
													</p>
													<p id="10per">
														<strong>10th Percentage </strong><%=tenthpercent %>%
													</p>
													<p id="yearop">
														<strong>Year of Passing: </strong><%=yearOfPassing %></p>
													<p id="college">
														<strong>College: </strong><%=collegeName %></p>
													<p id="cgpa">
														<strong>CGPA: </strong><%=CGPA %></p>
												</div>
											</div>
										</div>
										<div class="tab-pane text-center" id="certifications">
											<div class="row">
												<div class="col-md-3 skills">
													<br>
													<h4 class="efficiency">
														<strong>Name:</strong>
													</h4>
												</div>
												<div class="col-md-3 skills">
													<br>
													<h4 class="efficiency"">
														<strong>Organization:</strong>
													</h4>
												</div>
												<div class="col-md-3 skills">
													<br>
													<h4 class="efficiency"">
														<strong>Course Name:</strong>
													</h4>
												</div>
												<div class="col-md-3 skills">
													<br>
													<h4 class="efficiency"">
														<strong>Issued On:</strong>
													</h4>
												</div>
											</div>
											<%
											while(certi.next()){
												String skillName = certi.getString("skillName");
												String issueDate = certi.getString("issueDate");
												String organisation = certi.getString("organisation");
												String courseName = certi.getString("courseName");
											%>
											<div class="row">
												<div class="col-md-3 skills">
													<br>
													<ul>
														<li><%=skillName %></span></li>
													</ul>
												</div>
												<div class="col-md-3 skills">
													<br>
													<p class="efficiency"><%=organisation %></p>
												</div>
												<div class="col-md-3 skills">
													<br>
													<p class="efficiency" id="years"><%=courseName %></p>
												</div>
												<div class="col-md-3 skills">
													<br>
													<p class="efficiency" id="years"><%=issueDate %></p>
												</div>
											</div>
											<%
											}
											%>
										</div>
										<div class="tab-pane text-center" id="skills">
											<div class="row">
												<div class="col-md-4 skills">
													<br>
													<h4 class="efficiency">
														<strong>Skills:</strong>
													</h4>
												</div>
												<div class="col-md-4 skills">
													<br>
													<h4 class="efficiency">
														<strong>Efficiency:</strong>
													</h4>
												</div>
												<div class="col-md-4 skills">
													<br>
													<h4 class="efficiency"">
														<strong>Experience:</strong>
													</h4>
												</div>
											</div>
											<%
											while(skill.next()){
												String skillName = skill.getString("skillName");
												int efficiency = skill.getInt("percentEfficiency");
												int years = skill.getInt("noOfYears");

											%>
											<div class="row">
												<div class="col-md-4 skills">
													<br>
													<ul>
														<li><%=skillName %></span></li>
													</ul>
												</div>
												<div class="col-md-4 skills">
													<br>
													<p class="efficiency"><%=efficiency %>%
													</p>
												</div>
												<div class="col-md-4 skills">
													<br>
													<p class="efficiency" id="years"><%=years %>
														&nbsp; Years
													</p>
												</div>
											</div>
											<%
											}
											%>
										</div>
										<div class="tab-pane text-center" id="workex">
											<div class="row">
												<br>
												<div class="col-md-4">
													<h4 class="efficiency">
														<strong>Internships:</strong>
													</h4>
													<%
													while(intern.next()){
														String companyName = intern.getString("companyName");
														String startDate = intern.getString("startDate");
														String endDate = intern.getString("endDate");
														int stipend = intern.getInt("stipend");
													%>
													<ul style="text-align: left;">
														<li id="company"><%=companyName %></li>
														<li id="start"><%=startDate %></li>
														<li id="enddate"><%=endDate %></li>
														<li id="stipend"><%=stipend %></li>
													</ul>
													<br>
													<%
													}
							                       	%>
												</div>
												<div class="col-md-4">
													<h4 class="efficiency">
														<strong>Research:</strong>
													</h4>
													<%
													while(resr.next()){
														String topic = resr.getString("topic");
														String field = resr.getString("field");
														String supervisedBy = resr.getString("supervisedBy");
														String publishedIn = resr.getString("publishedIn");
														String publishDate = resr.getString("publishDate");
													%>
													<ul style="text-align: left;">
														<li id="rtopic">Topic - <%=topic %></li>
														<li id="rfield">Field - <%=field %></li>
														<li id="rpublishdate">Published - <%=publishDate %></li>
														<li id="rpublishedin">Published In - <%=publishedIn %></li>
														<li id="rsupervisedby">Supervised By - <%=supervisedBy %></li>
													</ul>
													<br>
													<%
													}
							                       	%>
												</div>
												<div class="col-md-4">
													<h4 class="efficiency">
														<strong>Projects:</strong>
													</h4>
													<%
												while(proj.next()){
													String topic = proj.getString("topic");
													String field = proj.getString("field");
													String supervisedBy = proj.getString("supervisedBy");
													String startDate = proj.getString("startDate");
													String endDate = proj.getString("endDate");
												%>
													<ul style="text-align: left;">
														<li id="ptopic">Topic - <%=topic %></li>
														<li id="pfield">Field - <%=field %></li>
														<li id="pstartdate">Started - <%=startDate %></li>
														<li id="penddate">Ended - <%=endDate %></li>
														<li id="psupervisedby">Supervised By - <%=supervisedBy %></li>
													</ul>
													<br>
													<%
												}
							                    %>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
							<!-- End Profile Tabs -->
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
	<div class="container">
		<div class="copyright" style="text-align: center; color: #FFF;">
			&copy; 2016 | Made by Team 40</div>
	</div>
	</footer>
</body>
</html>
