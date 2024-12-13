<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Customer</title>
    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Add smooth transitions for appearance */
        .fade-in {
            animation: fadeIn 0.8s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body class="bg-light">
    <!-- Header -->
    <nav class="navbar navbar-dark bg-primary shadow-sm">
        <div class="container-fluid">
            <a class="navbar-brand" href="adminHomePage.jsp">Add New Customer</a>
        </div>
    </nav>

    <!-- Form Container -->
    <div class="container fade-in mt-5">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-8">
                <div class="card shadow-sm border-0">
                    <div class="card-body p-4">
                        <h3 class="card-title text-center text-primary mb-4">Customer Details</h3>
                        <form action="CustomerFeeder" method="post">
                            <div class="mb-3">
                                <label for="firstName" class="form-label">Customer First Name</label>
                                <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter first name" required>
                            </div>
                            <div class="mb-3">
                                <label for="lastName" class="form-label">Customer Last Name</label>
                                <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter last name" required>
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email ID</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Enter email address" required>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
                            </div>
                            <div class="d-flex justify-content-between">
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="button" class="btn btn-secondary" onclick="location.href='adminHomePage.jsp'">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>