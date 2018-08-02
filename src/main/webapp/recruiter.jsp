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
			int recID = 0;
			 if(session.getAttribute("recID") == null){
				 session.invalidate();
				 response.sendRedirect("index.jsp");
			 }
			 else{
				recID = Integer.parseInt(session.getAttribute("recID").toString());
			 }
			%>
<title>Recruiter Login</title>

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
<link rel="stylesheet" type="text/css" href="assets/css/search.css">
</head>

<body class="signup-page">
	<nav class="navbar navbar-transparent navbar-absolute">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">DevHunt</a>
		</div>

		<ul class="nav navbar-nav navbar-right">

			<li><a href="#" target=""
				class="btn btn-simple btn-white btn-just-icon"> <i
					class="fa fa-twitter"></i>
			</a></li>
			<li><a href="#" target=""
				class="btn btn-simple btn-white btn-just-icon"> <i
					class="fa fa-facebook-square"></i>
			</a></li>
			<li><a href="#" target=""
				class="btn btn-simple btn-white btn-just-icon"> <i
					class="fa fa-instagram"></i>
			</a></li>
			<li><a href="Servlet_logout">Logout</a></li>
		</ul>
	</div>
	</nav>
	<%

				package1.RecDetails r = new RecDetails();
				ResultSet rs = r.getRecDetails(recID);

				String name = "";
				String companyName = "";
				String field = "";
				String position = "";
				String location = "";

				if(rs.next() != false){
					name = rs.getString("name");
					companyName = rs.getString("companyName");
					field = rs.getString("field");
					position = rs.getString("position");
					location = rs.getString("location");
				}


				%>
	<div class="wrapper">
		<div class="header header-filter"
			style="background: #4568DC; /* fallback for old browsers */ background: -webkit-linear-gradient(to right, #B06AB3, #4568DC); /* Chrome 10-25, Safari 5.1-6 */ background: linear-gradient(to right, #B06AB3, #4568DC);">
			<div class="container">
				<div class="row">
					<div class="right">
						<div class="col-md-12">
							<div class="card card-signup">
								<form class="form" method="get" action="Servlet_search">
									<div class="header header-primary text-center">
										<h3>
											Welcome
											<%=name %></h3>
										<h4>
											Wish to hire a developer? <br>Search below.
										</h4>
										<div class="social-line">
											<i class="btn btn-simple btn-just-icon fa fa-search"></i> <i
												class="btn btn-simple btn-just-icon fa fa-slack"></i> <i
												class="btn btn-simple btn-just-icon fa fa-users"></i>
										</div>
									</div>
									<div class="content">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">code</i>
											</span> <input type="text" name="skill" class="form-control"
												id="skill" placeholder="Search for Skill...">
										</div>

										<div class="input-group">
											<span class="input-group-addon">
												<p>Certification:</p>
											</span>
											<div class="radio">
												<label> <input type="radio" name="cradio" value="1">
													Yes
												</label> <label> <input type="radio" name="cradio" value="0"
													checked> No
												</label>
											</div>
										</div>

										<div class="input-group">
											<span class="input-group-addon">
												<p>Research:</p>
											</span>
											<div class="radio">
												<label> <input type="radio" name="rradio" value="1">
													Yes
												</label> <label> <input type="radio" name="rradio" value="0"
													checked> No
												</label>
											</div>
										</div>
										<div class="input-group">
											<span class="input-group-addon">
												<p>Intern:</p>
											</span>
											<div class="radio">
												<label> <input type="radio" name="iradio" value="1">
													Yes
												</label> <label> <input type="radio" name="iradio" value="0"
													checked> No
												</label>
											</div>
										</div>
										<div class="input-group">
											<span class="input-group-addon">
												<p>Project:</p>
											</span>
											<div class="radio">
												<label> <input type="radio" name="pradio" value="1">
													Yes
												</label> <label> <input type="radio" name="pradio" value="0"
													checked> No
												</label>
											</div>
										</div>
									</div>
									<div class="footer text-center">
										<button type="submit"
											class="btn btn-primary btn-simple btn-lg btn-login-submit">Search</button>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="left">
						<div class="col-md-10">
							<div class="col-md-12">
								<%
																						if(session.getAttribute("searchResults") != null){
																						int i = 0;
																						int[] a = (int[])session.getAttribute("searchResults");
																						while(a[i] != 0){
																							System.out.println(a[i]);
																							package1.Details d = new Details();
																							ResultSet search = d.getDetails(a[i]);
																							search.next();
																							String searchname = search.getString("name");
																							String gender = search.getString("gender");
																							String mailId = search.getString("mailId");
																							String phoneNumber = search.getString("phoneNumber");
																							String nationality = search.getString("nationality");
																							String fieldOfInterest = search.getString("fieldOfInterest");
																							String internJob = search.getString("internJob");
																							String redirect = "Servlet_searchprofile?uID=" + a[i] + "";
																					%>
								<section class="search-result-item"> <a
									class="image-link" href='<%=redirect %>'> <img
									class="image" src="assets/img/avatar.jpg"></a>
								<div class="search-result-item-body">
									<div class="row">
										<div class="col-sm-9">
											<h4 class="search-result-item-heading">
												<a href='<%=redirect %>'><%=searchname %></a>
												<p class="info">
													<%=fieldOfInterest %><br>
													<%=gender %><br>
													<%=nationality %>
												</p>
										</div>
										<div class="col-sm-3 text-align-center">
											<a class="btn btn-primary btn-sm" href='<%=redirect %>'>Learn
												More</a>
										</div>
									</div>
								</div>
								</section>
								<%
	                                                                                     	i++;
																						}
																						}
                                                                                     %>

							</div>
						</div>
					</div>
				</div>
			</div>

			<footer class="footer">
			<div class="container">
				<div class="copyright" style="text-align: center;">&copy; 2016
					| Made by Team 40</div>
			</div>
			</footer>

		</div>

	</div>

</body>
<!--   Core JS Files   -->
<script src="assets/js/jquery.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/material.min.js"></script>

<script src="assets/js/nouislider.min.js" type="text/javascript"></script>

<script src="assets/js/bootstrap-datepicker.js" type="text/javascript"></script>

<script src="assets/js/material-kit.js" type="text/javascript"></script>
</html>
