<%@ include file="header.jsp"%>

<!--/col-3-->
<div class="col-sm-8" id="displayDiv">
	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#profile">Change
				Password:</a></li>

	</ul>

	<div class="tab-content">

		<c:if test="${param.error}">
			<div class="alert alert-danger" id="customAlertBox">
				<button type="button" class="close" data-dismiss="alert">×</button>
				<span class="glyphicon 	glyphicon glyphicon-remove-circle">&nbsp;</span>
				password entered incorrect.
			</div>
		</c:if>

		<c:if test="${param.success}">
			<div class="alert alert-success" id="customAlertBox">
				<button type="button" class="close" data-dismiss="alert">×</button>
				<span class="glyphicon glyphicon-ok-circle">&nbsp;</span>
				password changed successfully.
			</div>
		</c:if>
		<form class="form" action="/userProfile/changeUserProfilePassword"
			method="post" id="registrationForm">





			<div class="form-group">

				<div class="col-xs-6">
					<label for="currentPassword"><h4>Current Password</h4></label> <input
						type="password" class="form-control" name="currentPassword"
						id="pin" placeholder="Enter Current Password"
						title="Enter Current Password"">
				</div>
			</div>

			<div class="form-group">

				<div class="col-xs-6">
					<label for="newPassword"><h4>New Password</h4></label> <input
						type="password" class="form-control" name="newPassword" id="pin"
						placeholder="Enter New Password" title="Enter New Password"">
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

</div>
<!--/tab-pane-->
</div>
<!--/tab-content-->

</div>
<!--/col-9-->
</div>
<!--/row-->
<script>
	
</script>
</body>
<%@ include file="footer.jsp"%>