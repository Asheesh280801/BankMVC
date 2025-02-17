<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .header {
            background-color: #007bff;
            color: white;
            padding: 20px 0;
            text-align: center;
            font-size: 1.8rem;
            font-weight: 500;
        }
        .btn-container {
            margin: 50px auto;
            max-width: 600px;
            text-align: center;
        }
        .btn-custom {
            width: 100%;
            font-size: 1.2rem;
            font-weight: 500;
            margin: 15px 0;
            color: white; /* Ensures text contrast on grey buttons */
        }
        footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="customerHomePage.jsp">Customer Dashboard</a>
        </div>
    </nav>
    
    <div class="bg-light shadow-sm py-3">
        <div class="container">
            <ul class="nav justify-content-center">
                <li class="nav-item">
                    <a class="nav-link btn btn-outline-primary mx-2" href="PassbookController">Passbook</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-outline-primary mx-2" href="NewTransactionController">New Transaction</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-outline-primary mx-2" href="EditProfileController">Edit Profile</a>
                </li>
                <li class="nav-item">
				    <a class="nav-link btn btn-danger mx-2" href="LogoutServlet">Logout</a>
				</li>
            </ul>
        </div>
    </div>
    
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow-sm">
                    <div class="card-body text-center">
               			<h5 class="card-title">Hello, <c:out value="${sessionScope.customer.getFirstName()}"/>!</h5>
                    	<h5 class="card-title">Hello <c:out value="${customer.getFirstName()}"/>!</h5>
                        <h4 class="card-text">Welcome to Your Profile</h4>
                        <p class="card-text">
                            Use the navigation options above to manage Profile, Passbook, and Transactions.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>