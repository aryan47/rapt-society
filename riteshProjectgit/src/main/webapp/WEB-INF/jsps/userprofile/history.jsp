
<%@ include file="header.jsp"%>
<input type="hidden" name="" id="url" value="${url}" />
<!--/col-3-->
<div class="col-sm-8" id="displayDiv">
	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#profile">Book
				Details:</a></li>

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

							<tr>
								<td><c:out value="${book.userRequestSubject.std}"></c:out></td>
								<td><c:out value="${book.userRequestSubject.subject}"></c:out></td>
								<td><c:out value="${book.addressEmbd.address}"></c:out></td>
								<td><c:out value="${book.phoneNo}"></c:out></td>
								<td><a href='#' class='btn btn-success edit'
									data-toggle='modal' data-target='#editBookDetail'>Edit </a>&nbsp;<a
									href='#' class='btn btn-danger delete'>Delete</a></td>

							</tr>

						</c:forEach>

					</tbody>
				</table>
			</div>
			<hr>
		</div>
		<!--/tab-pane-->

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
		$(".delete").on("click",function(){
			var std = $(this).parent().parent().find("td:first");
			var sub = std.next();
			location.href="/userProfile/deleteBook?std="+std.text()+"&subject="+sub.text();
			
			
		});</script>
</body>
<%@ include file="footer.jsp"%>