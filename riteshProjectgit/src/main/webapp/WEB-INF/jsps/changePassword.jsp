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
<link
	href="//fonts.googleapis.com/css?family=Sansita:400,400i,700,700i,800,800i,900,900i&amp;subset=latin-ext"
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
	<div id="customAlert"></div>
	<div class="form-w3ls">	

		<div id="signin-agile">
			<form action="/changePassword" method="post">
				<p class="header">Change Password</p>
				<input type="password" name="password" placeholder="Password"
					onblur="if (this.value == '') {this.value = 'Password';}"
					required="required"> 
				<p class="header">Confirm Password</p>
				<input type="password" name="confirmPassword" placeholder="Confirm Password"
					onblur="if (this.value == '') {this.value = 'Password';}"
					required="required"> <input type="submit" class="sign-in"
					value="Change Password">
			</form>
		</div>

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
