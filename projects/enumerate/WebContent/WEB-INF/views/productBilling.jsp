<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Billing Information</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<%-- <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>"  type="text/css"> --%>
<style type="text/css">
body {
	overflow-y: scroll;
	overflow-x: hidden;
	background: white;
}

label {
	width: 120px;
	margin-left: 20px;
}

.billing-header {
	padding: 5px;
	text-align: center;
	background: #2196F3;
}
</style>
</head>
<body ng-app="billingModule">
	<div class="header" style="background: #2196F3; height: 35px;"
		align="top">
		<p align="center"
			style="color: whitesmoke; font-size: 21px; font-family: cursive;">
			${user.userRole}
			<span>${user.fullName}</span>
		</p>
			
	</div>
	<div class="row"
		style="background: rgba(0, 0, 0, .075); padding-top: 5px; padding: 10px;">
		<div class="col-md-3">
			<span>ID#:<input name="itemNo" /></span>
		</div>
		<div class="col-md-3">
			<span>Name:<input name="itemNo" /></span>
		</div>
		<div class="col-md-3">
			<span>SKU:<input name="itemNo" /></span>
		</div>
		<div class="col-md-3">
			<input type="button" name="search" class="btn btn-primary btn-sm"
				id="searchItems" value="Search" />
		</div>

	</div>

	<div class="col-md-3">
		<div class="row billing-header"
			style="margin-top: 5px; border: 1px solid white;">
			<span
				style="color: whitesmoke; font-family: monospace; font-size: 15px;">Calculator</span>
		</div>
		<!-- <div id="calculator" style="margin-top: 0px;">
			Screen and clear key
			<div class="top">
				<span class="clear">C</span>
				<div class="screen"></div>
			</div>
			<div class="keys">
				operators and other keys
				<span>7</span> <span>8</span> <span>9</span> <span class="operator">+</span>
				<span>4</span> <span>5</span> <span>6</span> <span class="operator">-</span>
				<span>1</span> <span>2</span> <span>3</span> <span class="operator">÷</span>
				<span>0</span> <span>.</span> <span class="eval">=</span> <span
					class="operator">x</span>
			</div>
		</div> -->
	</div>

	<div class="col-md-5" style="padding: 5px;">
		<div class="row billing-header" style="border: 1px solid white;">
			<span
				style="color: whitesmoke; font-family: monospace; font-size: 15px;">
				Item Description </span>
		</div>
		<div class="row" style="padding: 5px">
			<span style="font-weight: bold; padding: 5px;"> <label
				for="itemId">#ID:</label> <input name="itemNo" style="height: 30px;" />
			</span>
		</div>
		<div class="row" style="padding: 5px">
			<span style="font-weight: bold; padding: 5px;"> <label
				for="itemId">Name:</label> <input name="itemNo"
				style="height: 30px;" />
			</span>
		</div>
		<div class="row" style="padding: 5px">
			<span style="font-weight: bold; padding: 5px;"> <label
				for="itemId">Quantity:</label> <input name="itemNo"
				style="height: 30px;" />
			</span>
		</div>
		<div class="row" style="padding: 5px">
			<span style="font-weight: bold; padding: 5px;"> <label
				for="itemId">Price:</label> <input name="itemNo"
				style="height: 30px;" />
			</span>
		</div>
		<div class="row" style="padding: 5px">
			<span style="font-weight: bold; padding: 5px;"> <label
				for="itemId">Discount:</label> <input name="itemNo"
				style="height: 30px;" />
			</span>
		</div>
		<div class="row" style="padding: 5px">
			<span style="font-weight: bold; padding: 5px;"> <label
				for="itemId">Barcode:</label> <input name="itemNo"
				style="height: 30px;" />
			</span>
		</div>

		<div class="row" style="padding: 5px">
			<span style="font-weight: bold; padding: 5px;"> <label
				for="itemId">Total:</label> <input name="itemNo"
				style="height: 30px;" />
			</span>
		</div>
		<div class="row" style="padding: 5px; margin-top: 35px;">
			<div class="col-md-2">
				<input type="button" style="width: 100px;" name="search"
					class="btn btn-primary btn-sm" id="searchItems" value="Reset" />
			</div>
			<div class="col-md-2">
				<input type="button" style="width: 100px;" name="search"
					class="btn btn-primary btn-sm" id="searchItems" value="Save" />
			</div>

		</div>
	</div>
	<div id="billingInfoId" ng-controller="billingController"
		class="col-md-4" style="margin-top: 5px;">
		<div class="row billing-header" style="border: 1px solid white;">
			<span
				style="color: whitesmoke; font-family: monospace; font-size: 15px;">
				Bill Details</span>
		</div>

		<div class="row">
			<span> <label>Item Name</label> <label
				style="text-align: right;">Item Price</label>
			</span>
		</div>
		<div class="row">
			<hr style="border-top: dotted 1px;" />
		</div>
		<div id="container"
			style="height: 300px; overflow-y: auto; overflow-x: hidden; width: 100%;">
			<div class="row">
				<span> <label>Dettol</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
			<div class="row">
				<span> <label>Dettol</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
			<div class="row">
				<span> <label>Dettol</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
			<div class="row">
				<span> <label>Dettol</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
			<div class="row">
				<span> <label>Dettol</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
			<div class="row">
				<span> <label>Dettol</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
			<div class="row">
				<span> <label>Dettol</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
			<div class="row">
				<span> <label>Maggi</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
			<div class="row">
				<span> <label>Fortune</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
			<div class="row">
				<span> <label>Rice</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
			<div class="row">
				<span> <label>Sugar</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
			<div class="row">
				<span> <label>Dettol</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
			<div class="row">
				<span> <label>Dettol</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>

			<div class="row">
				<span> <label>Dettol</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
			<div class="row">
				<span> <label>Dettol</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
			<div class="row">
				<span> <label>Dettol</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>

			<div class="row">
				<span> <label>Dettol</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
			<div class="row">
				<span> <label>Dettol</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
			<div class="row">
				<span> <label>Dettol</label> <label
					style="text-align: right;">55.00</label>
				</span>
			</div>
		</div>
		<div class="row">
			<hr style="border-top: dotted 1px;" />
		</div>

		<div class="row">
			<span> <label>TAX:</label> <label
				style="text-align: right;"> 25.00</label>
			</span>
		</div>

		<div class="row">
			<span> <label>Total:</label> <label
				style="text-align: right;"> 525.00</label>
			</span>
		</div>
		<div class="row">
			<hr style="border-top: dotted 1px;" />
		</div>

		<div style="width: 125px;">
			<input type="button" name="print" style="width: 100px;"
				class="btn btn-primary btn-sm" id="printBillBtnId" value="Print"
				ng-click="printBill('billingInfoId')" />
		</div>
	</div>

</body>
</html>