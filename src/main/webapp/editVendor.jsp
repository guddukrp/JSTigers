<!-- /WebContent/jsp/editVendor.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.tap.model.VendorService" %>
<%@ page import="com.tap.model.Vendor" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Vendor</title>

<style>
body {
	font-family: 'Arial', sans-serif;
	background-image: linear-gradient(45deg, #85FFBD 0%, #FFFB7D 100%);
	margin: 0;
	padding: 0;
}

.form-container {
	max-width: 600px;
	margin: 50px auto;
	background-color: rgba(255, 255, 255, 0.5);
	/* Adjust the alpha (0.9) for transparency */
	border: 1px solid #ddd;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	color: #333;
	text-align: center;
}

.vendor-form {
	display: flex;
	flex-direction: column;
}

.form-group {
	margin-bottom: 20px;
}

label {
	font-size: 16px;
	color: #555;
}

input {
	width: 100%;
	padding: 10px;
	font-size: 14px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

button {
	background-color: #4caf50;
	color: #fff;
	padding: 12px 20px;
	font-size: 16px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
	margin: 0 auto; /* Center the button */
	display: block;
}

button:hover {
	background-color: #45a049;
}

@media ( max-width : 768px) {
	.form-container {
		margin: 20px auto;
	}
}
</style>
</head>
<body>
	<% 
		int vendorId = Integer.parseInt(request.getParameter("vendorId"));
		VendorService vendorService = new VendorService();
		Vendor vendor = vendorService.getVendor(vendorId);
	%>
	<div class="form-container">
		<h2>Edit Vendor</h2>
		<form class="vendor-form" action="vendor" method="post">

			<input type="hidden" name="vendorId"
				value="<%=vendorId%>">
				
			<div class="form-group">
				<label for="vendorName">Vendor Name:</label> <input type="text"
					id="vendorName" name="vendorName" value="<%= vendor.getVendorName()%>" required>
			</div>
			<div class="form-group">
				<label for="accountNo">Bank Account No.:</label> <input type="text"
					id="accountNo" name="accountNo" value="<%= vendor.getBankAccountNo()%>" required>
			</div>
			<div class="form-group">
				<label for="bankName">Bank Name:</label> <input type="text"
					id="bankName" name="bankName" value="<%= vendor.getBankName()%>" required>
			</div>
			<div class="form-group">
				<label for="address1">Address Line1:</label> <input type="text"
					id="address1" name="address1" value="<%= vendor.getAddressLine1()%>" required>
			</div>
			<div class="form-group">
				<label for="address2">Address Line2 :</label> 
				<input type="text" id="address2" name="address2" value="<%= vendor.getAddressLine2()%>" required>
			</div>
			<div class="form-group">
				<label for="city">City :</label> <input type="text"
					id="city" name="city" value="<%= vendor.getCity()%>" required>
			</div>
			<div class="form-group">
				<label for="country">Country :</label> <input type="text"
					id="country" name="country" value="<%= vendor.getCountry()%>" required>
			</div>
			<div class="form-group">
				<label for="zipcode">Zip Code :</label> <input type="text"
					id="zipcode" name="zipcode" value="<%= vendor.getZipCode()%>" required>
			</div>

			<div class="form-group">
				<button type="submit" name="action" value="update">Update
					Vendor</button>
			</div>
		</form>
	</div>
</body>
</html>
