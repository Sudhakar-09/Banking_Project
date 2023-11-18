<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sudhakar's Insure-Me</title>
    <link rel="stylesheet" href="styles.css"> <!-- You can create a separate CSS file for styles -->
    <style>
        /* Add your additional styles here */

        /* Navbar styles */
        nav {
            background-color: #ff7f50;
            color: #fff;
            text-align: center;
            padding: 15px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 15px;
            font-size: 20px;
            transition: color 0.3s;
        }

        nav a:hover {
            color: #333;
        }

        /* Container styles */
        body {
            background-color: #f0f8ff;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h1 {
            background-color: #4682b4;
            color: #fff;
            text-align: center;
            padding: 20px;
            margin: 0;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            border-radius: 15px;
        }

        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
            text-align: center;
        }

        th, td {
            padding: 15px;
        }

        th {
            background-color: #4682b4;
            color: #fff;
        }

        /* Button container styles */
        .btn-container {
            text-align: right;
            margin-top: 20px;
            display: flex;
            justify-content: flex-end;
        }

        .btn-container input[type="submit"],
        .btn-container input[type="button"] {
            background-color: #20b2aa;
            color: #fff;
            padding: 15px 25px;
            border: none;
            cursor: pointer;
            margin-left: 10px;
            border-radius: 8px;
            font-size: 18px;
            transition: background-color 0.3s;
        }

        .btn-container input[type="button"].update-button {
            background-color: #ff8c00;
        }

        .btn-container input[type="submit"]:hover,
        .btn-container input[type="button"]:hover {
            background-color: #008080;
        }

        /* Insurance text styles */
        .insurance-text {
            text-align: center;
            margin-top: 20px;
            color: #20b2aa;
            font-size: 18px;
        }

        /* Delete link styles */
        .delete-link {
            color: #e74c3c;
            text-decoration: none;
            transition: color 0.3s;
        }

        .delete-link:hover {
            color: #c0392b;
        }

        /* Footer styles */
        .footer {
            text-align: center;
            margin-top: 20px;
            padding: 15px;
            background-color: #333;
            color: #fff;
        }

        .dollar-ascii {
            font-size: 24px;
            float: right;
            padding: 10px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav>
        <a href="#">Home</a>
        <a href="#">About</a>
        <a href="#">Services</a>
        <a href="#">Contact</a>
    </nav>

    <h1>Sudhakar's Insure-Me</h1>
    <div class="container">
        <!-- The existing form and table content -->

        <table>
            <!-- Existing table content -->
        </table>

        <div class="btn-container">
            <input type="submit" value="Create Account">
            <input type="button" class="update-button" value="Update Account" onclick="updateAccount()">
        </div>

        <div class="insurance-text">
            Welcome to Sudhakar's Insure-Me. Fill in the information above to get started.
        </div>
    </div>

    <!-- Bottom bar -->
    <div class="footer">
        &copy; 2023 Sudhakar's Insure-Me Private Limited. All rights reserved.
    </div>

    <script>
        // Your existing JavaScript code
        function updateAccount() {
            var form = document.getElementById("accountForm");
            form.action = "${pageContext.request.contextPath}/updateaccount";
            form.method = "POST";
            form.submit();
        }
    </script>
</body>
</html>
