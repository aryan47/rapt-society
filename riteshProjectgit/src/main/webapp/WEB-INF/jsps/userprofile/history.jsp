
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
								<td><a href='#' id='edit' class='btn btn-success' data-toggle='modal' data-target='#editStudent'>Edit </a>&nbsp;<a href='#' class='btn btn-danger'>Delete</a></td>
								
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
<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="/UserProfile/profileImage/main.js"></script>
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