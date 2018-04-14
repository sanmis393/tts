<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator</title>
<link href="<c:url value="/resources/styles/bootstrap.min.css" />"
	rel="stylesheet">
</head>
<body>
	<%@include file="header.jsp"%>

	<div class="row">
		<c:set var="contextPath" value="${pageContext.request.contextPath}" />
		<div class="col-sm-4">
			<a href="${contextPath}/branchRegistraction"><button
					type="button" class="btn btn-primary active">Register a
					Branch</button></a>

		</div>
		<div class="col-sm-4">
			<a href="${contextPath}/userRegistractionPage"><button
					type="button" class="btn btn-primary active">User Registration</button></a>
		</div>
		<div class="col-sm-4">
			<button type="button" class="btn btn-primary active">Manage
				Users</button>
		</div>
	</div>

</body>
</html>