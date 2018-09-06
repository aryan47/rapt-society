<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>RaptSociety Sign in</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
	
	
		
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 





</script>

<!--online_fonts-->
<link href="//fonts.googleapis.com/css?family=Sansita:400,400i,700,700i,800,800i,900,900i&amp;subset=latin-ext"
	rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Poiret+One"
	rel="stylesheet">
<!--//online_fonts-->

<!--stylesheet-->

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link href="login/css/css/style.css" rel='stylesheet' type='text/css'
	media="all" />
<style>
#customAlert {
	width: 80%;
	margin: 30px auto;
	position: relative;
	height: 40px;
}

#customAlertBox {
	position: absolute;
	width: 100%;
}
</style>
</head>
<body>
	<div id="customAlert">
		<c:if test="${param.userAdded == true }">
			<div class="alert alert-success" id="customAlertBox">
				<button type="button" class="close" data-dismiss="alert">×</button>
				<span class="glyphicon glyphicon-ok-circle">&nbsp;</span>
				successfully adder user
			</div>
		</c:if>
		
		<c:if test="${param.resetError}">
			<div class="alert alert-danger" id="customAlertBox">
				<button type="button" class="close" data-dismiss="alert">×</button>
				<span class="glyphicon 	glyphicon glyphicon-remove-circle">&nbsp;</span>
				Failed to login, you typed wrong user name or password. Try again.
			</div>
		</c:if>
		
		<c:if test="${param.resetSuccess}">
			<div class="alert alert-success" id="customAlertBox">
				<button type="button" class="close" data-dismiss="alert">×</button>
				<span class="glyphicon glyphicon-ok-circle">&nbsp;</span>
				Check your email id for password reset link. 
			</div>
		</c:if>
		
		<c:if test="${param.password == false }">
			<div class="alert alert-danger" id="customAlertBox">
				<button type="button" class="close" data-dismiss="alert">×</button>
				<span class="glyphicon glyphicon-remove-circle">&nbsp;</span>
				Email id does not exist. 
			</div>
		</c:if>
	</div>
	
	
	<div class="form-w3ls">
		<div class="form-head-w3l">
			<h2>s</h2>
		</div>
		<ul class="tab-group cl-effect-4">
			<li class="tab active"><a href="#signin-agile">Sign In</a></li>
			<li class="tab"><a href="#signup-agile">Sign Up</a></li>
		</ul>
		<div class="tab-content">
			<div id="signin-agile">
				<form action="/login" method="post">

					<p class="header">Email Id</p>
					<input type="text" name="username" placeholder="User Name"
						onblur="if (this.value == '') {this.value = 'User Name';}"
						required="required" autocomplete="user-name">

					<p class="header">Password</p> 
					<input type="password" name="password" placeholder="Password"
						onblur="if (this.value == '') {this.value = 'Password';}"
						required="required">
					<span><a href="/forgotPassword" style=" float:right; font-size:15px;">forgot password?</a></span>
					 <input type="checkbox" id="brand" name="remember-me"> 
					 	<label for="brand"><span></span>
						Remember me?</label> <input type="submit" class="sign-in" value="Sign In">
				</form>
			</div>
			<div id="signup-agile">
				<form action="/createUser" method="post">

					<p class="header">First Name</p>
					<input type="text" name="firstName" placeholder="Your First Name"
						onblur="if (this.value == '') {this.value = 'Your First Name';}"
						required="required">
						<p class="header">Last Name</p>
					<input type="text" name="lastName" placeholder="Your Last Name"
						onblur="if (this.value == '') {this.value = 'Your Last Name';}"
						required="required">

					<p class="header">Email Address</p>
					<input type="email" name="email" placeholder="Email"
						onblur="if (this.value == '') {this.value = 'Email';}"
						required="required">
						

					<p class="header">Password</p>
					<input type="password" name="password" placeholder="Password"
						onblur="if (this.value == '') {this.value = 'Password';}"
						required="required">

					<p class="header">Confirm Password</p>
					<input type="password" placeholder="Confirm Password"
						onblur="if (this.value == '') {this.value = 'Confirm Password';}"
						required="required">
					<fieldset>
						<label for="user_agree_to_terms"> <input type="checkbox"
							id="user_agree_to_terms" name="user[agree_to_terms]">
							Creating an account means you are okay with our <a
							target="_blank" href="/terms">Terms of Service</a>, <a
							target="_blank" href="/privacy">Privacy Policy</a>, and our
							default <a target="_blank" href="/notifications">Notification
								Settings</a>.
						</label>
					</fieldset>
					<input type="submit" class="register" value="Sign up">
				</form>
			</div>
		</div>
		<!-- tab-content -->
	</div>


	<!-- js files -->
	<script src="login/js/js/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="/login/js/js/index.js"></script>
	<!-- /js files -->
	<script>
		
	</script>
</body>
</html>
