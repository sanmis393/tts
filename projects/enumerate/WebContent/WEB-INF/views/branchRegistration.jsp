<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/styles/bootstrap.min.css">
</head>
<body>
	<div class="header" style="background: #2196F3; height: 35px;"
		align="top">
		<p align="center"
			style="color: whitesmoke; font-size: 21px; font-family: cursive;">Branch
			Registration</p>
	</div>
	<!-- <div class="container"></div>
	<table class="table-responsive" align="center" style="border: 0px">
		<tbody>
			<tr>
				<td>Owner</td>
				<td><select>
						<option value="volvo">---Select User---</option>
						<option value="saab">User</option>
				</select></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input id="branchName" name="branchName" type="text" /></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input id="branchName" name="branchName" type="text" /></td>
			</tr>
			<tr>
				<td>Country</td>
				<td><select>
						<option value="volvo">---Select Country---</option>
						<option value="saab">India</option>
						<option value="mercedes">China</option>
						<option value="audi">Nepal</option>
				</select></td>
			</tr>
			<tr>
				<td>State</td>
				<td><select>
						<option value="volvo">---Select State---</option>
						<option value="saab">Delhi</option>
						<option value="mercedes">cccc</option>
						<option value="audi">sss</option>
				</select></td>
			</tr>
			<tr>
				<td>City</td>
				<td><select>
						<option value="volvo">---Select City---</option>
						<option value="saab">City1</option>
						<option value="mercedes">City2</option>
						<option value="audi">City3</option>
				</select></td>
			</tr>
			<tr>
				<td>Postal Code</td>
				<td><select>
						<option value="volvo">---Select Postalcode---</option>
						<option value="saab">12344</option>
						<option value="mercedes">464644</option>
						<option value="audi">456456</option>
				</select></td>
			</tr>
			<tr>
				<td>Phone No.</td>
				<td><input id="branchName" name="branchName" type="text" /></td>
			</tr>
			<tr></tr>
			<tr>
				<td></td>
				<td><input type="button" style="width: 100px;" name="search"
					class="btn btn-primary btn-sm" id="searchItems" value="Save" /> <input
					type="button" style="width: 100px; margin-left: 20px;"
					name="search" class="btn btn-primary btn-sm" id="searchItems"
					value="Reset" /></td>
			</tr>

		</tbody>
	</table> -->
	<div class="container">

		<form class="form-horizontal" action=" " method="post"
			id="contact_form">
			<fieldset>
				<br>
				<!-- select branch owner-->
				<div class="form-group">
					<label class="col-md-4 control-label">Branch Owner</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<select name="department" class="form-control selectpicker">
								<option value="">---Select Owner---</option>
								<option>Department of Engineering</option>

							</select>
						</div>
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">Branch Name</label>
					<div class="col-md-4 inputGroupContainer">
						<input name="first_name" placeholder="First Name"
							class="form-control" type="text">
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">Branch Address</label>
					<div class="col-md-4 inputGroupContainer">
						<input name="first_name" placeholder="First Name"
							class="form-control" type="text">
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Branch Country</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<select name="department" class="form-control selectpicker">
								<option value="">---Select Country---</option>
								<option>Department of Engineering</option>

							</select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">State/Province</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<select name="department" class="form-control selectpicker">
								<option value="">---Select State---</option>
								<option>Department of Engineering</option>

							</select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">City</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<select name="department" class="form-control selectpicker">
								<option value="">---Select City---</option>
								<option>Department of Engineering</option>

							</select>
						</div>
					</div>
				</div>


				<div class="form-group">
					<label class="col-md-4 control-label">Pin code</label>
					<div class="col-md-4 inputGroupContainer">
						<input name="first_name" placeholder="First Name"
							class="form-control" type="text">
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Phone No.</label>
					<div class="col-md-4 inputGroupContainer">
						<input name="first_name" placeholder="First Name"
							class="form-control" type="text">
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Phone No.</label>
					<div class="col-md-4 inputGroupContainer">
						<input name="first_name" placeholder="First Name"
							class="form-control" type="text">
					</div>
				</div>
				<br/>

				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-10">
						<button type="submit" class="btn btn-primary btn-sm" style="width: 100px;">Save</button>
						<div class="col-md-1"></div>
						<button type="submit" class="btn btn-primary btn-sm" style="width: 100px;">Update</button>
						<div class="col-md-1"></div>
						<button type="submit" class="btn btn-primary btn-sm" style="width: 100px;">Reset</button>
				</div>
				</div>
				
					
			</fieldset>
		</form>
	</div>
	</div>
	<!-- /.container -->

</body>
</html>