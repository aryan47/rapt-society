<!DOCTYPE html>
<html lang="en">


<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="profile/main.js" type="text/javascript"></script>
<style>
body {
	background: #f4f4f4;

}

.displayDiv {
	background-color: white;
	padding: 10px;
	margin-left: 19px;
	box-shadow: 1px 1px 6px grey;
}

.displayImg {
	background-color: darkgrey;
	padding: 10px 0px;
	box-shadow: 1px 1px 6px grey;
}

.badge-success {
	background-color: #468847;
}
</style>
</head>

<body>

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
				<a class="navbar-brand page-scroll" href="/">RAPT</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#about" class="page-scroll">About</a></li>
					<li><a href="#services" class="page-scroll">Services</a></li>
					<li><a href="#team" class="page-scroll">Team</a></li>
					<li><a href="#contact" class="page-scroll">Contact</a></li>
					<li><a href="#">Welcome:</a></li>
					<li><a href="/logout">Logout</a></li>
					<li><a href="/login" class="page-scroll">Login/SignUp</a></li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</nav>
	<hr>
	<div class="container bootstrap snippet">
		<div class="row">
			<div class="col-sm-10">
				<h1>User name</h1>
			</div>
		</div>
		<div class="row" style="box-sizing: border-box;">
			<div class="col-sm-3 displayImg">
				<!--left col-->

				<div class="text-center " style="box-sizing: border-box;padding:15px">
					<img src="profile/profileImage/01.jpg"
						class="avatar img-circle img-thumbnail bg-success" alt="avatar">
					<h6>Upload a different photo...</h6>
					<input type="file" class="text-center center-block file-upload">
				</div>
				</hr>
				<br>
				<div class="panel panel-default">
					<div class="panel-heading">
						Website <i class="fa fa-link fa-1x"></i>
					</div>
					<div class="panel-body">
						<a href="http://bootnipets.com">bootnipets.com</a>
					</div>
				</div>
				<ul class="list-group ">

					<li class="list-group-item"><strong>Profile</strong><span
						class="badge badge-success">125</span></li>
					<li class="list-group-item "><strong>History</strong><span
						class="badge badge-success">125</span></li>
					<li class="list-group-item "><strong>Notification</strong><span
						class="badge badge-success">125</span></li>
					<li class="list-group-item "><i
						class="fa fa-cogs fa-1x"></i>&nbsp;<strong>Setting</strong></li>
				</ul>
				<div class="panel panel-default">
					<div class="panel-heading">Social Media</div>
					<div class="panel-body">
						<i class="fa fa-facebook fa-2x"></i> <i class="fa fa-github fa-2x"></i>
						<i class="fa fa-twitter fa-2x"></i> <i
							class="fa fa-pinterest fa-2x"></i> <i
							class="fa fa-google-plus fa-2x"></i>
					</div>
				</div>

			</div>
			<!--/col-3-->
			<div class="col-sm-8 displayDiv">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#profile">Profile
							Details:</a></li>
					<li><a data-toggle="tab" href="#education">Education
							Qualification:</a></li>

				</ul>


				<div class="tab-content">
					<div class="tab-pane active" id="profile">
						<hr>
						<form class="form" action="##" method="post" id="registrationForm">
							<div class="form-group">

								<div class="col-xs-6">
									<label for="first_name"><h4>First name</h4></label> <input
										type="text" class="form-control" name="first_name"
										id="first_name" placeholder="first name"
										title="enter your first name if any.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="last_name"><h4>Last name</h4></label> <input
										type="text" class="form-control" name="last_name"
										id="last_name" placeholder="last name"
										title="enter your last name if any.">
								</div>
							</div>

							<div class="form-group">

								<div class="col-xs-6">
									<label for="phone"><h4>Phone</h4></label> <input type="text"
										class="form-control" name="phone" id="phone"
										placeholder="enter phone"
										title="enter your phone number if any.">
								</div>
							</div>

							<div class="form-group">
								<div class="col-xs-6">
									<label for="mobile"><h4>Mobile</h4></label> <input type="text"
										class="form-control" name="mobile" id="mobile"
										placeholder="enter mobile number"
										title="enter your mobile number if any.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="email"><h4>Email</h4></label> <input type="email"
										class="form-control" name="email" id="email"
										placeholder="you@email.com" title="enter your email.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="email"><h4>Location</h4></label> <input
										type="email" class="form-control" id="location"
										placeholder="somewhere" title="enter a location">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="password"><h4>Password</h4></label> <input
										type="password" class="form-control" name="password"
										id="password" placeholder="password"
										title="enter your password.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="password2"><h4>Verify</h4></label> <input
										type="password" class="form-control" name="password2"
										id="password2" placeholder="password2"
										title="enter your password2.">
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-12">
									<br>
									<button class="btn btn-md btn-success" type="submit">
										<i class="glyphicon glyphicon-ok-sign"></i> Save
									</button>
									<button class="btn btn-md" type="reset">
										<i class="glyphicon glyphicon-repeat"></i> Reset
									</button>
								</div>
							</div>
						</form>

						<hr>

					</div>
					<!--/tab-pane-->
					<div class="tab-pane" id="education">

						<h2></h2>

						<hr>
						<form class="form" action="##" method="post" id="registrationForm">
							<div class="form-group">

								<div class="col-xs-6">
									<label for="first_name"><h4>State:</h4></label> <input
										type="text" class="form-control" name="first_name"
										id="first_name" placeholder="first name"
										title="enter your first name if any.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="last_name"><h4>City:</h4></label> <input
										type="text" class="form-control" name="last_name"
										id="last_name" placeholder="last name"
										title="enter your last name if any.">
								</div>
							</div>

							<div class="form-group">

								<div class="col-xs-6">
									<label for="phone"><h4>Address:</h4></label> <input type="text"
										class="form-control" name="phone" id="phone"
										placeholder="enter phone"
										title="enter your phone number if any.">
								</div>
							</div>

							<div class="form-group">
								<div class="col-xs-6">
									<label for="mobile"><h4>Pin Code:</h4></label> <input
										type="text" class="form-control" name="mobile" id="mobile"
										placeholder="enter mobile number"
										title="enter your mobile number if any.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="email"><h4>Board:</h4></label> <input type="email"
										class="form-control" name="email" id="email"
										placeholder="you@email.com" title="enter your email.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="email"><h4>Class:</h4></label> <input type="email"
										class="form-control" id="location" placeholder="somewhere"
										title="enter a location">
								</div>
							</div>

							<div class="form-group">
								<div class="col-xs-12">
									<br>
									<button class="btn btn-md btn-success" type="submit">
										<i class="glyphicon glyphicon-ok-sign"></i> Save
									</button>
									<button class="btn btn-md" type="reset">
										<i class="glyphicon glyphicon-repeat"></i> Reset
									</button>
								</div>
							</div>
						</form>

					</div>
					<!--/tab-pane-->
				</div>
				<!--/tab-pane-->
			</div>
			<!--/tab-content-->

		</div>
		<!--/col-9-->
	</div>
	<!--/row-->

</body>
</html>