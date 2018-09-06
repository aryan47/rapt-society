<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">


<head>
<title>Profile</title>
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
<script src="/UserProfile/main.js" type="text/javascript"></script>
<style>
body {
	background: #f4f4f4;
}

@media only screen and (min-width: 781px) {
	#displayDiv {
		background-color: white;
		padding: 10px;
		margin-left: 19px;
		box-shadow: 1px 1px 6px grey;
	}
}

.displayImg {
	background-color: darkgrey;
	padding: 10px 0px;
	box-shadow: 1px 1px 6px grey;
}

.badge-success {
	background-color: #468847;
}

#listMenu li:hover {
	background-color: grey;
	cursor: pointer;
	transition: 0.5s;
}
#listMenu li a:hover{
    text-decoration: none;
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
					

					<li><a href="/" >Home</a></li>
					<security:authorize access="isAuthenticated()">
						<li>
						<a href="/userProfile" style="margin-top:0;padding-top:0;line-height:17px;">
							<span style="font-size:10px"> Hello,&nbsp;
								<c:out value="${sessionScope.userName}"></c:out>
							</span><br>
							<span>Profile<span></span><span class="caret"></span>
						</a></li>
						<li><a href="/logout">Logout</a></li>
					</security:authorize>
					<security:authorize access="isAnonymous()">
						<li><a href="/login" class="page-scroll" style="margin-top:0;padding-top:0;line-height:17px;">	
							<span style="font-size:10px"> Hello,&nbsp;
								
							</span><br>
							<span>Sign in<span></span></span></a></li>

					</security:authorize>



				</ul>
			</div>
			
			<!-- /.navbar-collapse -->
		</div>
	</nav>
	<hr>
	<div class="container bootstrap snippet">
		<div class="row">
			<div class="col-sm-10">
				<h1>${sessionScope.userName}</h1>
			</div>
		</div>
		<div class="row" style="box-sizing: border-box;">
			<div class="col-sm-3 displayImg">
				<!--left col-->

				<div class="text-center "
					style="box-sizing: border-box; padding: 15px">
					<img src="/UserProfile/profileImage/01.jpg"
						class="avatar img-circle img-thumbnail bg-success" alt="avatar">
					<h6>Upload a different photo...</h6>
					<input type="file" class="text-center center-block file-upload">
				</div>
				<hr>
				<br>
				<div class="panel panel-default">
					<div class="panel-heading">
						Website <i class="fa fa-link fa-1x"></i>
					</div>
					<div class="panel-body">
						<a href="http://bootnipets.com">bootnipets.com</a>
					</div>
				</div>
				<ul class="list-group " id="listMenu">

					<li class="list-group-item"><strong><a href="/">Profile</a></strong><span
						class="badge badge-success">125</span></li>
					<li class="list-group-item "><strong><a href="/history">History</a></strong><span
						class="badge badge-success">125</span></li>
					<li class="list-group-item "><strong><a href="/notification">Notification</a></strong><span
						class="badge badge-success">125</span></li>
					<li class="list-group-item "><i class="fa fa-cogs fa-1x"></i>&nbsp;<strong><a href="/setting">Setting</a></strong></li>
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
			<div class="col-sm-8" id="displayDiv">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#profile">Profile
							Details:</a></li>
					<li><a data-toggle="tab" href="#education">Education
							Qualification:</a></li>

				</ul>


				<div class="tab-content">
					<div class="tab-pane active" id="profile">
						<hr>
						<div class="edit"
							style="position: absolute; right: 30px; top: 76px; z-index: 1;">
							<a><i class="fa fa-edit fa-2x pull-right"></i></a>
						</div>
						<form class="form" action="/userProfile/updateProfile" method="post"
							id="registrationForm">
							<div class="form-group">

								<div class="col-xs-6">
									<label for="firstName"><h4>First name</h4></label> <input
										type="text" class="form-control" name="firstName"
										id="first_name" placeholder="Enter your first name"
										title="Enter your first name" value="${student.firstName}">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="lastName"><h4>Last name</h4></label> <input
										type="text" class="form-control" name="lastName"
										id="last_name" placeholder="Enter your last name"
										title="Enter your last name" value="${student.lastName}">
								</div>
							</div>

							<div class="form-group">

								<div class="col-xs-6">
									<label for="phone"><h4>Phone</h4></label> <input type="text"
										class="form-control" name="phoneNo" id="phone"
										placeholder="Enter your phone number"
										title="Enter your phone number" value="${student.phoneNo}">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="email"><h4>Email</h4></label> <input type="email"
										class="form-control" name="email" id="email"
										placeholder="Enter your Email id" title="Enter your Email id"
										value="${student.email}">
								</div>
							</div>

							<div class="form-group">
								<div class="col-xs-6">
									<label for="state"><h4>State</h4></label> <input type="text"
										class="form-control" name="state" id="state"
										placeholder="Enter State" title="enter your State"
										value="${address.state}">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="city"><h4>City</h4></label> <input type="text"
										class="form-control" name="city" id="city"
										placeholder="Enter your city name"
										title="enter your City name" value="${address.city}">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="address"><h4>Address</h4></label> <input
										type="text" class="form-control" name="address" id="address"
										placeholder="Enter your address" title="Enter your address"
										value="${address.address}">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="landmark"><h4>Landmark</h4></label> <input
										type="text" class="form-control" name="landmark" id="landmark"
										placeholder="enter your Landmark" title="enter your Landmark"
										value="${address.landmark}">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="pin"><h4>Pin Code</h4></label> <input type="text"
										class="form-control" name="pin" id="pin"
										placeholder="Enter Pin code" title="enter pin code"
										value="${address.pin}">
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


							<hr>
					</div>
					<!--/tab-pane-->
					<div class="tab-pane" id="education">

						<h2></h2>

						<hr>
						<div class="edit"
							style="position: absolute; right: 30px; top: 76px; z-index: 1;">
							<a><i class="fa fa-edit fa-2x pull-right"></i></a>
						</div>



						<div class="form-group">

							<div class="col-xs-6">
								<label for="boardName"><h4>Board:</h4></label> <input
									type="text" class="form-control" name="boardName" id="email"
									placeholder="Board Name" title="enter your Board name"
									value="${qualification.boardName}">
							</div>
						</div>
						<div class="form-group">

							<div class="col-xs-6">
								<label for="stdName"><h4>Class:</h4></label> <input type="text"
									class="form-control" id="stdName" name="stdName"
									placeholder="Class Name" title="enter your Class"
									value="${qualification.stdName}">
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
	<script>
		$(function() {
			$(
					"input[type=text],input[type=email],input[type=password],input[type=password]")
					.attr("readonly", true);

			$(".edit")
					.on(
							"click",
							function() {
								$(
										"input[type=text],input[type=password],input[type=password]")
										.removeAttr("readonly");
							});
		$("#listMenu li").on("click",function(){
			console.log($(this).find('a').attr("href"));
			var url = "userProfile"+$(this).find('a').attr("href");
			window.location.pathname=url;
		});
		});
		
	</script>
</body>
</html>