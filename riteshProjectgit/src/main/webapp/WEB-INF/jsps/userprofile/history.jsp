<%@ include file="header.jsp"%>

<!--/col-3-->
<div class="col-sm-8" id="displayDiv">
	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#profile">Profile
				Details:</a></li>
		<li><a data-toggle="tab" href="#education">Education
				Qualification:</a></li>

	</ul>

<form class="form" action="/userProfile/updateProfile" method="post"
				id="registrationForm">
	<div class="tab-content">
		<div class="tab-pane active" id="profile">
			<hr>
			<div class="edit"
				style="position: absolute; right: 30px; top: 76px; z-index: 1;">
				<a><i class="fa fa-edit fa-2x pull-right"></i></a>
			</div>
			
				<div class="form-group">
					<div class="col-xs-6">
						<label for="firstName"><h4>First name</h4></label> <input
							type="text" class="form-control" name="firstName" id="first_name"
							placeholder="Enter your first name" title="Enter your first name"
							value="${student.firstName}">
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-6">
						<label for="lastName"><h4>Last name</h4></label> <input
							type="text" class="form-control" name="lastName" id="last_name"
							placeholder="Enter your last name" title="Enter your last name"
							value="${student.lastName}">
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
							placeholder="Enter your city name" title="enter your City name"
							value="${address.city}">
					</div>
				</div>
				<div class="form-group">

					<div class="col-xs-6">
						<label for="address"><h4>Address</h4></label> <input type="text"
							class="form-control" name="address" id="address"
							placeholder="Enter your address" title="Enter your address"
							value="${address.address}">
					</div>
				</div>
				<div class="form-group">

					<div class="col-xs-6">
						<label for="landmark"><h4>Landmark</h4></label> <input type="text"
							class="form-control" name="landmark" id="landmark"
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
					<label for="boardName"><h4>Board:</h4></label> <input type="text"
						class="form-control" name="boardName" id="email"
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

			

		</div>
		</form>
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
		$("#listMenu li").on("click", function() {
			console.log($(this).find('a').attr("href"));
			var url = "userProfile" + $(this).find('a').attr("href");
			window.location.pathname = url;
		});
	});
</script>
</body>
<%@ include file="footer.jsp"%>