<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<script type="text/javascript"
	src="<c:url value="/resources/scripts/common.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/scripts/angular.min.jss" />"></script>
<link href="<c:url value="/resources/styles/bootstrap.min.css" />"
	rel="stylesheet">

<style type="text/css">
.button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 6px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

.button:hover {
	background-color: #46a049
}

.login-button {
	background-color: #2196F3;
	margin-left: 10px;
} /* Blue */
.login-button:hover {
	background: #0b7dda
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<font color="red"> ${SPRING_SECURITY_LAST_EXCEPTION.message} </font>
	<div class="col-sm-4" style="padding: 3px;">
		<form action="<%=request.getContextPath()%>/login" method="POST">

			<div class="row" style="padding: 2px;">
				<div class="col-sm-2">
					<strong>Username:</strong>
				</div>
				<div class="col-sm-2">
					<input type="text" name="username" style="margin-left: 19px;"
						id="username" />
				</div>
			</div>
			<div class="row" style="padding: 2px;">
				<div class="col-sm-2">
					<strong>Password:</strong>
				</div>
				<div class="col-sm-2">
					<input type="password" name="password" style="margin-left: 19px;"
						name="password" id="password" />
				</div>
			</div>
			<div class="col-sm-2"></div>
			<div class="col-sm-2">
				<input type="submit" value="Login" class="button login-button" /> <input
					type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</div>
		</form>
	</div>
	<div class="col-sm-8">
		<%-- <img src="<c:url value="resources/images/retailer.png" />" alt="Retailer" width="100%"
			height="100%" /> --%>

		<%-- <spring:url value="/resources/images" var="images" /> <img src="${images}/retailer.png"/> --%>
		<img alt="image" width="100%" height="100%"
			src="<c:url value="/resources/images/retailer.png" />">
	</div>
<body>
</html>
