<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="titleDiv"></div>
	<div id="show"></div>


	<input type="hidden" id="paramId"
		value=<c:out value="${param.location}"/>>


	<script type="text/javascript"
		src="webjars/jquery/3.3.1-1/jquery.min.js"></script>
	<script type="text/javascript" src="riteshJs.js"></script>

</body>
</html>