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


<center>
<div class="jumbotron text-xs-center">
  <h1 class="display-3">Error occured! </h1>
  
  <p class="lead"><strong><c:out value=" ${exception}"></c:out></strong></p>
   <p class="lead"><strong><c:out value=" ${requestUrl}"></c:out></strong></p>
  <hr>
  <p>
    Having trouble? <a href="/#contact"> </a>
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