<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 50px;
        }
        .readonly-input {
            background-color: #e9ecef;
            cursor: not-allowed;
        }
    </style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="customerHomePage.jsp">Customer Dashboard</a>
        </div>
    </nav>
    <div class="container">
        <h2 class="text-center">Edit Profile</h2>

        <!-- Success/Failure Message -->
       

        
        <form action="ProfileChangesServlet"  method="POST" id="editForm">
            <div class="mb-3">
                <label for="field" class="form-label">Select Field to Edit</label>
                <select class="form-select" id="field" name="field" onchange="populateOldValue()" required>
                    <option value="" disabled selected>Choose...</option>
                    <option value="firstName">First Name</option>
                    <option value="lastName">Last Name</option>
                    <option value="password">Password</option>
                </select>
            </div>

            
            <div class="mb-3">
                <label for="oldValue" class="form-label">Old Value</label>
                <input type="text" class="form-control readonly-input" id="oldValue" name="oldValue" readonly>
            </div>

           
            <div class="mb-3">
                <label for="newValue" class="form-label">New Value</label>
                <input type="text" class="form-control" id="newValue" name="newValue" required>
            </div>

            
            <div class="d-flex justify-content-between">
                <button type="submit" class="btn btn-primary" onclick="showalert()">Update</button>
                <button type="button" class="btn btn-secondary" onclick="showCancelMessage()">Cancel</button>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- JavaScript to handle dynamic value population -->
    <script>
        const oldValues = {
            firstName: "${customer.getFirstName()}",
            lastName: "${customer.getLastName()}",
            password: "${customer.getPassword()}"
        };

        function populateOldValue() {
            const field = document.getElementById("field").value;
            document.getElementById("oldValue").value = oldValues[field] || "";
        }

        function showCancelMessage() {
            alert("No updates were made.");
        }
        function showalert() {
        	alert("Update made Succcessfully!!!")
			
		}
        
    </script>
</body>
</html>