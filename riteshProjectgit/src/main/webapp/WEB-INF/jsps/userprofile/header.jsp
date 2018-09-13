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

<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">

<script src="/UserProfile/main.js" type="text/javascript"></script>
<style>

body {
    font-family: montserrat, arial, verdana;
    background:#fff;
}

@media only screen and (min-width: 781px) {
	#displayDiv {
		background-color: #Fff;
		padding: 30px;
		
		box-shadow: 0 0  3px #ccc;
	}
}

.displayImg {
	background-color: #F7F7F7;
	padding: 10px 0px;
	box-shadow: 0 0 5px #ccc;
}

.badge-success {
	background-color: #468847;
}

#listMenu li:hover {
	background-color: grey;
	cursor: pointer;
	transition: 0.5s;
}

#listMenu li a:hover {
	text-decoration: none;
}
.edit, .delete {
width:70px;
}
#sidebar{
    border-top: 2px solid #DEDEDE;
}
.avatar{
background:white;
border:1px solid #dedede;
 padding:1px;
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


					<li><a href="/">Home</a></li>
					<security:authorize access="isAuthenticated()">
						<li><a href="/userProfile"> <span>Profile<span></span></a></li>
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
	<hr>
	<div class="container bootstrap snippet">

		<div class="row" style="box-sizing: border-box; margin-top: 40px;">
			<div class="col-sm-3 displayImg">
				<!--left col-->

				<div class="text-center "
					style="box-sizing: border-box; padding: 15px">
					<img src="/getImage"
						class="avatar img-circle img-thumbnail bg-success"  onerror="this.src='/images/profile.png';">
					<form method="post" action="/uploadImage"
						enctype="multipart/form-data">
						<label for="file"><a>Change Image</a></label>
						<input type="file" name="file" id="file"class="file-upload" style="display:none;"><br>
						<input type="submit" class="btn btn-secondary btn-sm" value="upload">
					</form>
				</div>
							

				<div class="span3" id="sidebar">
					<ul class="nav nav-list success ">
						<li class="active"><a href="/userProfile"> <i
								class=" icon icon-chevron-right"></i> Profile
						</a></li>
						<li><a href="/userProfile/history"><i
								class="icon-chevron-right"></i> History</a></li>
						<li><a href="/userProfile/setting"><i
								class="icon-chevron-right"></i> Setting</a></li>
					</ul>

				</div>
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