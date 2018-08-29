<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
	$(function() {
		var locId = $('#location').val();
		var stdId = $('#std').val();

		var urlLoc = "http://localhost:8080/locations/" + locId;
		
		$.getJSON(urlLoc)
				.done(
						function(data) {
							console.log(data);
							var countInstructor = data.instructor.length;
							
							$("#titleDiv").html(countInstructor	+ " instructor found in your selected location");
						}).fail(function() {
				});
	});
	
</script>
<body>

	<input type="hidden" id="location" value="${param.location}" />
	<input type="hidden" id="std" value="${param.std}" />

</body>
</html>