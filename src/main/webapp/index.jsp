<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="assets/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

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

</head>

<body class="signup-page">
	<nav class="navbar navbar-transparent navbar-absolute">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">DevHunt</a>
		</div>

		<ul class="nav navbar-nav navbar-right">

			<li><a href="#" target="_blank"
				class="btn btn-simple btn-white btn-just-icon"> <i
					class="fa fa-twitter"></i>
			</a></li>
			<li><a href="#" target="_blank"
				class="btn btn-simple btn-white btn-just-icon"> <i
					class="fa fa-facebook-square"></i>
			</a></li>
			<li><a href="#" target="_blank"
				class="btn btn-simple btn-white btn-just-icon"> <i
					class="fa fa-instagram"></i>
			</a></li>
		</ul>
	</div>
	</nav>

	<div class="wrapper">
		<div class="header header-filter"
			style="background: #4568DC; /* fallback for old browsers */ background: -webkit-linear-gradient(to right, #B06AB3, #4568DC); /* Chrome 10-25, Safari 5.1-6 */ background: linear-gradient(to right, #B06AB3, #4568DC);">
			<div class="container">

				<div class="row">
					<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
						<div class="card card-signup">
							<form class="form" method="get" action="Servlet_login">
								<div class="header header-primary text-center">
									<h3>Welcome to DevHunt</h3>
									<h4>DevHunt is a developer profile management solution.</h4>
									<div class="social-line">

										<i class="btn btn-simple btn-just-icon fa fa-github"></i> <i
											class="btn btn-simple btn-just-icon fa fa-linkedin"></i> <i
											class="btn btn-simple btn-just-icon fa fa-dribbble"></i>

									</div>
								</div>
								<div class="content">

									<div class="input-group">
										<span class="input-group-addon"> <i
											class="material-icons">face</i>
										</span> <input type="text" value='' name="username"
											class="form-control" id="username" placeholder="Username...">
									</div>

									<div class="input-group">
										<span class="input-group-addon"> <i
											class="material-icons">lock_outline</i>
										</span> <input type="password" value='' name="password" id="password"
											placeholder="Password..." class="form-control" />
									</div>

									<div class="radio">
										<label> <input type="radio" name="userType"
											value="recruiter"> Recruiter
										</label> <label> <input type="radio" name="userType"
											value="developer" checked> Developer
										</label>
									</div>

								</div>
								<div class="footer text-center">
									<button type="submit"
										class="btn btn-primary btn-simple btn-lg btn-login-register"
										value="register">Submit</button>
								</div>
							</form>
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
<script src="assets/js/main.js"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/material.min.js"></script>

<script src="assets/js/nouislider.min.js" type="text/javascript"></script>

<script src="assets/js/bootstrap-datepicker.js" type="text/javascript"></script>

<script src="assets/js/material-kit.js" type="text/javascript"></script>
</html>