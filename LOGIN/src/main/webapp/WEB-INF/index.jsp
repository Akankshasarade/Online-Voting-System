<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Voting System - Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1dee2;
        }
        
        h1 {
            color: #007f3f;
            text-align: center;
        }
        
        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            background-color: #fff;
            border-radius: 5px;
        }
        
        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
        
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }
        
        input[type="submit"] {
            background-color: #007f3f;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
        
        input[type="submit"]:hover {
            background-color: #005026;
        }
    </style>
</head>
<body>
    <h1>Register</h1>
    <form action="saveUser" method="post" onsubmit="return validateForm()">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required>
        
        <label for="phone">Phone Number:</label>
        <input type="text" id="phone" name="phone" required>
        
        <label for="aadharCardNumber">Aadhar Card Number:</label>
        <input type="text" id="aadharCardNumber" name="aadharCardNumber" required>
        
        <input type="submit" value="Submit">
    </form>

    <script>
        function validateForm() {
            var name = document.getElementById("name").value;
            var address = document.getElementById("address").value;
            var phone = document.getElementById("phone").value;
            var aadharCardNumber = document.getElementById("aadharCardNumber").value;

            var nameRegex = /^[a-zA-Z\s]*$/;
            var addressRegex = /^[a-zA-Z0-9\s]*$/;
            var phoneRegex = /^[0-9]{10}$/;
            var aadharCardNumberRegex = /^[0-9]{12}$/;

            if (!nameRegex.test(name)) {
                alert("Please enter a valid name (letters only).");
                return false;
            }

            if (!addressRegex.test(address)) {
                alert("Please enter a valid address (letters and numbers only).");
                return false;
            }

            if (!phoneRegex.test(phone)) {
                alert("Please enter a valid phone number (10 digits only).");
                return false;
            }

            if (!aadharCardNumberRegex.test(aadharCardNumber)) {
                alert("Please enter a valid Aadhar Card number (12 digits only).");
                return false;
            }

            return true;
        }
    </script>
</body>
</html>
