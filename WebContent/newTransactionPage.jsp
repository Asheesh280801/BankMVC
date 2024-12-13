<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Transaction</title>
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
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="customerHomePage.jsp">Customer Dashboard</a>
        </div>
    </nav>
    <div class="container">
        <h2 class="text-center mb-4">New Transaction</h2>

        <!-- Form for New Transaction -->
        <form method="POST" action="ProcessTransaction">

            <div class="mb-3">
                <label for="accountNumber" class="form-label">Select Account</label>
                <select class="form-select" id="accountNumber" name="accountNumber" required>
                    <option value="" disabled selected>Choose Account...</option>
                    
                    <%
                    	System.out.print(request.getAttribute("customer"));
                    %>
                    <c:out value="customer.getAccounts()"></c:out>
                    <c:forEach var="account" items="${customer.getAccounts()}">
                        <option value="${account.getAccountNumber()}">${account.getAccountNumber()}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="mb-3">
                <label for="transactionType" class="form-label">Type of Transaction</label>
                <select class="form-select" id="transactionType" name="transactionType" required>
                    <option value="" disabled selected>Choose Transaction Type...</option>
                    <option value="Credit">Credit</option>
                    <option value="Debit">Debit</option>
                    <option value="Transfer">Transfer</option>
                </select>
            </div>

            <!-- Receiver's Account (Visible only for Transfer) -->
            <div class="mb-3" id="receiverAccountDiv" style="display: none;">
                <label for="receiverAccount" class="form-label">Receiver Account (For Transfer Only)</label>
                <input type="text" class="form-control" id="receiverAccount" name="receiverAccount" placeholder="Enter Receiver's Account Number">
            </div>

            <!-- Amount -->
            <div class="mb-3">
                <label for="amount" class="form-label">Amount</label>
                <input type="number" class="form-control" id="amount" name="amount" min="1" required>
            </div>

            <!-- Buttons -->
            <div class="d-flex justify-content-between">
                <button type="submit" class="btn btn-primary" onclick="showalert()">Submit</button>
                <button type="reset" class="btn btn-secondary">Cancel</button>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    
    <script>
        const transactionType = document.getElementById("transactionType");
        const receiverAccountDiv = document.getElementById("receiverAccountDiv");

        transactionType.addEventListener("change", function () {
            if (transactionType.value === "Transfer") {
                receiverAccountDiv.style.display = "block";
            } else {
                receiverAccountDiv.style.display = "none";
            }
        });
        function showalert() {
        	alert("Transaction made Succcessfully!!!")
			
		}
    </script>
</body>
</html>