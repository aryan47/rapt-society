<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>RAPT</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicons
  ================================================== -->
<link rel="shortcut icon" href="index/css/img/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon" href="index/css/img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="index/css/img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="index/css/img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"
	href="index/css/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="index/css/fonts/font-awesome/css/font-awesome.css">

<!-- Stylesheet
  ================================================== -->
<link rel="stylesheet" type="text/css" href="index/css/css/style.css">
<link rel="stylesheet" type="text/css"
	href="index/css/css/nivo-lightbox/nivo-lightbox.css">
<link rel="stylesheet" type="text/css"
	href="index/css/css/nivo-lightbox/default.css">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900"
	rel="stylesheet">

<script type="text/javascript">
	/*============Reference: select option menu=========================================================*/

	/*======================================================================================================*/
</script>
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
	<!-- Navigation
  ==========================================-->
	<nav id="menu" class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top">RAPT</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#about" class="page-scroll">About</a></li>
					<li><a href="#services" class="page-scroll">Services</a></li>

					<li><a href="#team" class="page-scroll">Team</a></li>
					<li><a href="#contact" class="page-scroll">Contact</a></li>

					<security:authorize access="isAuthenticated()">
						<li><a href="/userProfile"
							style="margin-top: 0; padding-top: 0; line-height: 17px;"> <span
								style="font-size: 10px"> Hello,&nbsp; <c:out
										value="${sessionScope.userName}"></c:out>
							</span><br> <span>Profile<span></span><span class="caret"></span></a></li>
						<li><a href="/logout">Logout</a></li>
					</security:authorize>
					<security:authorize access="isAnonymous()">
						<li><a href="/login" class="page-scroll"
							style="margin-top: 0; padding-top: 0; line-height: 17px;"> <span
								style="font-size: 10px"> Hello,&nbsp; </span><br> <span>Sign
									in<span></span>
							</span></a></li>

					</security:authorize>



				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</nav>
	<!-- Header -->
	<header id="header">
		<div class="intro">
			<div class="overlay">
				<div class="container">
					<div class="row">
						<div class="intro-text">
							<h1>
								<strong>RAPT</strong> <span>/</span> Society
							</h1>
							<p>Study with us</p>
							<form id="bookScheduleForm" action="/bookSchedule" method="get">
								<div class="selectMenu">

									<div id="selectLocation">
										<select name="location" id="selectLocationMenu">
											<option value="#" selected>--Select Location--</option>
											<option value="400">Edalhatu</option>
											<option value="401">Bariatu</option>
											<option value="402">Rayagada</option>
											<option value="403">Kanke</option>
										</select>
									</div>
									<div id="selectClass">
										<select name="std" id="selectClassMenu">
											<option value="#" selected>--Select Class--</option>
											<option value="1">Class-1</option>
											<option value="2">Class-2</option>
											<option value="3">Class-3</option>
											<option value="4">Class-4</option>
											<option value="5">Class-5</option>
											<option value=6"">Class-6</option>
											<option value="">Class-7</option>
											<option value="">Class-8</option>
											<option value="">Class-9</option>
											<option value="">Class-10</option>
											<option value="">Class-11</option>
											<option value="">Class-12</option>
										</select>
									</div>
									<div class="customButton">
										<button type="submit" class="btn btn-custom btn-lg btn-scroll">Search</button>
									</div>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- About Section -->
	<div id="about">
		<div class="container">
			<div class="section-title text-center center">
				<h2>Our Story</h2>
				<hr>
			</div>
			<div class="row">
				<div class="col-xs-12 col-md-6 text-center">
					<img src="index/css/img/about.jpg" class="img-responsive" alt="">
				</div>
				<div class="col-xs-12 col-md-6">
					<div class="about-text">
						<h3>The Studio</h3>
						<p>We are group of peope who have decided to provide quality
							tutions to everyone who are willing to study in home but due to
							money problem they can't, so here we come we provide home tution
							with reasonable rate, and we profide quality education we don't
							compromise in quality.</p>
						<h3>How We Work</h3>
						<p>We take a request from the user who needs tution in home,
							and we process the request according to the requirement of user
							and we assign a best tutor to the user according to their match
							with free demo and if they are not satisfied we replace the tutor
							with no regrets.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Services Section -->
	<div id="services">
		<div class="container">
			<div class="col-md-10 col-md-offset-1 section-title text-center">
				<h2>Our Services</h2>
				<hr>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit duis
					sed dapibus leonec.</p>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-4 service">
					<img src="index/css/img/residential-design.jpg"
						class="img-responsive" alt="Project Title">
					<h3>Residential Design</h3>
					<p>Lorem ipsum dolor sit amet placerat facilisis felis mi in
						tempus eleifend pellentesque natoque etiam. Lorem ipsum dolor sit
						amet placerat facilisis felis mi in tempus eleifend.</p>
				</div>
				<div class="col-xs-12 col-sm-4 service">
					<img src="index/css/img/office-design.jpg" class="img-responsive"
						alt="Project Title">
					<h3>Office Design</h3>
					<p>Lorem ipsum dolor sit amet placerat facilisis felis mi in
						tempus eleifend pellentesque natoque etiam. Lorem ipsum dolor sit
						amet placerat facilisis felis mi in tempus eleifend.</p>
				</div>
				<div class="col-xs-12 col-sm-4 service">
					<img src="index/css/img/commercial-design.jpg"
						class="img-responsive" alt="Project Title">
					<h3>Commercial Design</h3>
					<p>Lorem ipsum dolor sit amet placerat facilisis felis mi in
						tempus eleifend pellentesque natoque etiam. Lorem ipsum dolor sit
						amet placerat facilisis felis mi in tempus eleifend.</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Team Section -->
	<div id="team" class="text-center">
		<div class="overlay">
			<div class="container">
				<div class="col-md-8 col-md-offset-2 section-title">
					<h2>Meet the Team</h2>
					<hr>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit duis
						sed dapibus leonec.</p>
				</div>
				<div id="row">
					<div class="col-md-3 col-sm-6 team">
						<div class="thumbnail">
							<img src="index/css/img/team/01.jpg" alt="..." class="team-img">
							<div class="caption">
								<h3>Ritesh</h3>
								<p>Founder, Developer</p>
							</div>
						</div>
					</div>


					<div class="col-md-3 col-sm-6 team">
						<div class="thumbnail">
							<img src="index/css/img/team/03.jpg" alt="..."
								class="img-circle team-img">
							<div class="caption">
								<h3>Jane Doe</h3>
								<p>Senior Designer</p>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 team">
						<div class="thumbnail">
							<img src="index/css/img/team/04.jpg" alt="..."
								class="img-circle team-img">
							<div class="caption">
								<h3>Karen Doe</h3>
								<p>Project Manager</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Contact Section -->
	<div id="contact">
		<div class="container">
			<div class="section-title text-center">
				<h2>Contact Us</h2>
				<hr>
				<p>You can reach us on the specific address or you can leave us
					a message, we will come in touch soon .</p>
			</div>
			<div class="col-md-4">
				<h3>Contact Info</h3>
				<div class="contact-item">
					<span>Address</span>
					<p>
						#135 ,<br> Teachers Colony ,Bangalore
					</p>
				</div>
				<div class="contact-item">
					<span>Email</span>
					<p>raptSociety47@gmail.com</p>
				</div>
				<div class="contact-item">
					<span>Phone</span>
					<p>+91 700922471</p>
				</div>
			</div>
			<div class="col-md-8">
				<h3>Leave us a message</h3>
				<form name="sentMessage" id="contactForm" novalidate>
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<input type="text" id="name" class="form-control"
									placeholder="Name" required="required">
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<input type="email" id="email" class="form-control"
									placeholder="Email" required="required">
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<input type="text" id="phNo" class="form-control"
									placeholder="Phone number (Optional)">
								<p class="help-block text-danger"></p>
							</div>
						</div>
					</div>
					<div class="form-group">
						<textarea name="message" id="message" class="form-control"
							rows="4" placeholder="Message" required></textarea>
						<p class="help-block text-danger"></p>
					</div>
					<div id="success"></div>
					<button type="submit" class="btn btn-custom btn-lg">Send
						Message</button>
				</form>
			</div>
		</div>
	</div>
	<div id="footer">
		<div class="container text-center">
			<div class="social">
				<ul>
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
					<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
					<li><a href="#"><i class="fa fa-youtube"></i></a></li>
				</ul>
			</div>
			<div>
				<p>
					&copy; 2018 RAPT. All rights reserved
				</p>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="login/js/js/jquery.min.js"></script>
	<!-- jQuery easing plugin -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript" src="index/js/js/bootstrap.js"></script>
	<script type="text/javascript" src="index/js/js/SmoothScroll.js"></script>
	<script type="text/javascript" src="index/js/js/nivo-lightbox.js"></script>
	<script type="text/javascript" src="index/js/js/jquery.isotope.js"></script>
	<script type="text/javascript"
		src="index/js/js/jqBootstrapValidation.js"></script>
	<script type="text/javascript" src="index/js/js/contact_me.js"></script>
	<script type="text/javascript" src="index/js/js/main.js"></script>
	<script>
	$(function(){
		$("#bookScheduleForm").on('submit',function(event){
			var loc=$("#selectLocationMenu").val();
			var std=$("#selectClassMenu").val();
			if(loc == "#" || std == "#"){
				event.preventDefault();
			}
		});
	});
	</script>
</body>
</html>
