<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmation.</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" ">
</head>
<body>

<%--

<br><br><br><br>
<center>
<p>Thankyou <b>${userName}</b>, We will confirm your Demo class on <b><fmt:formatDate value="${date}" pattern="dd-mm-yy"/> </b> to your 
location:<b><c:out value="${location}"></c:out></b>
</p>
<p>your selected subjects are<b>${sub}</b></p>
<p>Check your mail for more details.</p>
<a href="/">Go to homepage.</a>
</center>



 --%>
<center>
<div class="jumbotron text-xs-center">
  <h1 class="display-3">Thank You! <b style="text-transform: capitalize">${userName}</b></h1>
  
  <p class="lead"><strong>Please check your email</strong> for further details.</p>
  <hr>
  <p>
    Having trouble? <a href="/#contact">Contact us</a>
  </p>
  <p class="lead">
    <a class="btn btn-primary btn-sm" href="/" >Continue to homepage</a>
  </p>
</div>
</center>
<script src="login/js/js/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" ></script>

</body>
</html>