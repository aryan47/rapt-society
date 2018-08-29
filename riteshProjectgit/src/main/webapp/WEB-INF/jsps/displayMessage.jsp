<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br><br><br><br>
<center>
<p>Thankyou <b>${userName}</b>, We will confirm your Demo class on <b><fmt:formatDate value="${date}" pattern="dd-mm-yy"/> </b> to your 
location:<b><c:out value="${location}"></c:out></b>
</p>
<p>your selected subjects are<b>${sub}</b></p>
<a href="/">Go to homepage.</a>
</center>
</body>
</html>