
<%@ include file="header.jsp"%>
<input type="hidden" name="" id="url" value="${url}" />
<!--/col-3-->
<div class="col-sm-8" id="displayDiv">
	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#profile">Book
				Details:</a></li>
		<li><a data-toggle="tab" href="#completed">History</a>
	</ul>


	<div class="tab-content">
		<div class="tab-pane active" id="profile">
			<hr>
			<div id="tableContent">
				<table id="bookDetail" cellpadding="0" cellspacing="0" border="0"
					class="table table-striped table-bordered" id="example2">
					<thead>
						<tr>

							<th>Class</th>
							<th>subject</th>
							<th>Address</th>
							<th>Phone no.</th>
							<th></th>
						</tr>
					</thead>
					<tbody id="studentBody">

						<c:forEach var="book" items="${bookDetail}">

							<tr class="active">
								<td><c:out value="${book.userRequestSubject.std}"></c:out></td>
								<td><c:out value="${book.userRequestSubject.subject}"></c:out></td>
								<td><c:out value="${book.addressEmbd.address}"></c:out></td>
								<td><c:out value="${book.phoneNo}"></c:out></td>
								<td><a href='#' class='btn btn-success btn-sm edit '
									data-toggle='modal' data-target='#editBookDetail'>   Edit   </a>&nbsp;<a
									href='#' class='btn btn-danger btn-sm delete '>   Delete   </a></td>

							</tr>

						</c:forEach>

					</tbody>
				</table>
			</div>
			<hr>
		</div>
		<!--/tab-pane-->

		<div class="tab-pane" id="completed">
			<hr>
			<div id="tableContent">
				<table id="bookDetailHistory" cellpadding="0" cellspacing="0"
					border="0" class="table  table-bordered table-striped"
					id="example2">
					<thead>
						<tr>

							<th>Class</th>
							<th>subject</th>
							<th>Address</th>
							<th>Phone no.</th>
							<th>status</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach var="book" items="${bookDetailHistory}">
							<c:if test="${book.status eq 'completed'}">
								<tr class="success">
									<td><c:out value="${book.userRequestSubject.std}"></c:out></td>
									<td><c:out value="${book.userRequestSubject.subject}"></c:out></td>
									<td><c:out value="${book.addressEmbd.address}"></c:out></td>
									<td><c:out value="${book.phoneNo}"></c:out></td>
									<td><c:out value="${book.status}"></c:out>&nbsp;<span
										class="glyphicon glyphicon-ok-circle success" style="color: green"></span></td>


								</tr>
							</c:if>
							<c:if test="${book.status eq 'cancelled'}">
								<tr class="danger">
									<td><c:out value="${book.userRequestSubject.std}"></c:out></td>
									<td><c:out value="${book.userRequestSubject.subject}"></c:out></td>
									<td><c:out value="${book.addressEmbd.address}"></c:out></td>
									<td><c:out value="${book.phoneNo}"></c:out></td>
									<td><c:out value="${book.status}"></c:out>&nbsp;<span
										class="glyphicon glyphicon glyphicon-remove-circle" style="color: #7c0107"></span></td>


								</tr>
							</c:if>

						</c:forEach>

					</tbody>
				</table>
			</div>
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

<div class="modal fade" id="editBookDetail" role="dialog">
	<div class="modal-dialog modal-md">
		<form method="post" action="/userProfile/updateBookDetail">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Edit details</h4>
				</div>

				<div class="modal-body">

					<input type="hidden" id="modalStd" name="std"> <input
						type="hidden" id="modalSubject" name="subject"> <input
						type="hidden" id="modalEmail" name="altEmail"
						value="${sessionScope.userEmail}">

					<div class="form-group">
						<label for="address">Address</label> <input type="text"
							class="form-control" name="address" id="editAddress"
							placeholder="Edit address">
					</div>
					<div class="form-group">
						<label for="address">Phone no.</label> <input type="text"
							class="form-control" name="phoneNo" id="editPhone"
							placeholder="Edit Phone no.">
					</div>

				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary">Submit</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</form>
	</div>
</div>

<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="/UserProfile/profileImage/main.js"></script>
<script>
	$(".edit").on("click", function() {
		var std = $(this).parent().parent().find("td:first");
		var sub = std.next();
		var addr = sub.next();
		var phone = addr.next();
		
		$("#editAddress").val(addr.text());
		$("#editPhone").val(phone.text());

		$("#modalStd").val(std.text());
		$("#modalSubject").val(sub.text());

	});
	$(".delete").on(
			"click",
			function() {
				var std = $(this).parent().parent().find("td:first");
				var sub = std.next();
				location.href = "/userProfile/deleteBook?std=" + std.text()
						+ "&subject=" + sub.text();

			});
	$(function() {
		$("#bookDetail").DataTable();
	});
	$(function() {
		$("#bookDetailHistory").DataTable();
	});
</script>
</body>
<%@ include file="footer.jsp"%>