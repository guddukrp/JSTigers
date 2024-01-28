
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Vendor</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image: linear-gradient(45deg, #85FFBD 0%, #FFFB7D 100%);
            margin: 0;
            padding: 0;
        }

        .form-container {
            max-width: 500px;
            margin: 50px auto;
            background-color: rgba(255, 255, 255, 0.5); /* Increased transparency */
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s;
        }

        h2 {
            color: #333;
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 16px;
            color: #555;
        }

        input {
            width: 90%;
            padding: 12px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 15px;
            transition: border-color 0.3s;
        }

        input[type="submit"] {
        	margin-left:10px;
            background-color: #4caf50;
            color: #fff;
            padding: 12px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        @media (max-width: 768px) {
            .form-container {
                margin: 20px auto;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Create Vendor</h2>
        <form action="vendor" method="post">
            <label for="vendorName">Vendor Name:</label>
            <input type="text" id="vendorName" name="vendorName" required>

            <label for="bankAccountNo">Bank Account No:</label>
            <input type="text" id="bankAccountNo" name="bankAccountNo" required>

            <label for="bankName">Bank Name:</label>
            <input type="text" id="bankName" name="bankName" required>

            <label for="addressLine1">Address Line 1:</label>
            <input type="text" id="addressLine1" name="addressLine1">

            <label for="addressLine2">Address Line 2:</label>
            <input type="text" id="addressLine2" name="addressLine2" required>

            <label for="city">City:</label>
            <input type="text" id="city" name="city" required>

            <label for="country">Country:</label>
            <input type="text" id="country" name="country" required>

            <label for="zipCode">Zip Code:</label>
            <input type="text" id="zipCode" name="zipCode" required>

            <input type="submit" name="action" value="Create Vendor">
        </form>
    </div>
</body>
</html>

