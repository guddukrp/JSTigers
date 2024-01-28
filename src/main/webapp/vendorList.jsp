<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.tap.model.VendorService" %>
<%@ page import="com.tap.model.Vendor" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vendor List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
		nav {
		    background-color: #333;
		    padding: 10px;
		    color: white;
		    text-align: right;
		}
		
		nav a {
		    color: white;
		    text-decoration: none;
		    padding: 10px;
		    margin-right: 10px;
		}
		
		nav a:hover {
		    background-color: #555;
		}
		
        .table-container {
        	margin:50px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #dddddd;
        }

        th {
            background-color: #007bff;
            color: #ffffff;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        .action-links {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
        }

        .pagination {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
        }

        .pagination a {
            color: #007bff;
            padding: 8px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .pagination a:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
	<nav>
        <a href="#">Home</a>
        <a href="#">About</a>
        <a href="#">Contact</a>
        <a href="/JSTigers/logout">Logout</a>
    </nav>
    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>Vendor Name</th>
                    <th>Bank Account No.</th>
                    <th>Bank Name</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    ArrayList<Vendor> vendorList = (ArrayList<Vendor>) new VendorService().getAllVendors();
                    if (!vendorList.isEmpty()) {
                        for (Vendor vendor : vendorList) {
                %>
                            <tr>
                                <td><%= vendor.getVendorName() %></td>
                                <td><%= vendor.getBankAccountNo() %></td>
                                <td><%= vendor.getBankName() %></td>
                                <td>
                                    <a href="editVendor.jsp?vendorId=<%= vendor.getVendorId() %>">Edit</a> /
                                    <a href="vendor?vendorId=<%= vendor.getVendorId() %>&action=delete">Delete</a>
                                </td>
                            </tr>
                <% 
                        }
                    } else {
                %> 
                        <tr>
                            <td colspan="4"><h3>No vendor Available!</h3></td>
                        </tr>
                <%
                    }
                %>
            </tbody>
        </table>

        <div class="action-links">
            <a href="createVendor.jsp">Create New Vendor</a>
        </div>

    </div>
</body>
</html>
