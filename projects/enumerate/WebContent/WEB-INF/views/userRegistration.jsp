<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
<link rel="stylesheet" href="resources/styles/bootstrap.min.css">
<script type="text/javascript"
	src="<c:url value="/resources/scripts/angular.min.js" />"></script>
	<script type="text/javascript"
	src="<c:url value="/resources/scripts/common.js" />"></script>

</head>
<body ng-app="enumerate">
	<div class="header" style="background: #2196F3; height: 35px;"
		align="top">
		<p align="center"
			style="color: whitesmoke; font-size: 21px; font-family: cursive;">
			User Registration</p>
	</div>
	<div class="container" ng-controller="loginController">
		<form class="form-horizontal" action=" " method="post"
			id="contact_form">
			<fieldset>
				<br>
				<!-- select branch owner-->
				<div class="form-group">
					<label class="col-md-4 control-label">User Type</label>
					<div class="col-md-4 selectContainer">
						<select name="userRole" class="form-control selectpicker">
							<option value="">---Select User Type---</option>
							<option value="ROLE_USER">User</option>
							<option value="ROLE_ADMIN">Admin</option>
							<option value="ROLE_BRANCH_MANAGER">Branch Owner</option>
						</select>
					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">User Name</label>
					<div class="col-md-4 inputGroupContainer">
						<input name="userName" placeholder="User Name"
							class="form-control" type="text">
					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">Password</label>
					<div class="col-md-4 inputGroupContainer">
						<input name="password" placeholder="Password" class="form-control"
							type="password">
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">First Name</label>
					<div class="col-md-4 inputGroupContainer">
						<input name="firstName" placeholder="First Name"
							class="form-control" type="text">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label">Last Name</label>
					<div class="col-md-4 inputGroupContainer">
						<input name="lastName" placeholder="Last Name"
							class="form-control" type="text">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label">Email</label>
					<div class="col-md-4 inputGroupContainer">
						<input name="email" placeholder="Email" class="form-control"
							type="text">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label">Phone No.</label>
					<div class="col-md-4 inputGroupContainer">
						<input name="phoneNo" placeholder="Phone Number"
							class="form-control" type="text">
					</div>
				</div>
				<br />
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-12">
						<button type="button" class="btn btn-primary btn-sm"
							style="width: 100px;" ng-click="registerUser()">Save</button>
						<div class="col-md-1"></div>
						<button type="submit" class="btn btn-primary btn-sm"
							style="width: 100px;">Update</button>
						<div class="col-md-1"></div>
						<button type="submit" class="btn btn-primary btn-sm"
							style="width: 100px;">Reset</button>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
	</div>
	<!-- /.container -->
</body>
</html>