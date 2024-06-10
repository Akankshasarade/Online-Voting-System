<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        body {
            background-image: url('https://wallpapercave.com/wp/wp9697601.jpg');
            background-size: cover;
            background-position: center;
            color: #fff;
            font-family: 'Arial', sans-serif;
            padding: 20px;
            margin: 0;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            background: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 8px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>

    <!-- Include the email.js SDK -->
    <script type="text/javascript" src="https://cdn.emailjs.com/dist/email.min.js"></script>
    <script type="text/javascript">
        // Initialize email.js with your User ID
        emailjs.init("service_yjppab1");

        function sendEmail() {
            // Get form data
            var name = document.getElementById("name").value;
            var email = document.getElementById("email").value;
            var message = document.getElementById("message").value;

            // Set email parameters
            var params = {
                from_name: name,
                from_email: email,
                message: message,
            };

            // Send email using email.js
            emailjs.send("gmail", "template_p361sfc", params)
                .then(function(response) {
                    console.log("Email sent successfully", response);
                    // Add your success handling logic here
                    alert("Email sent successfully");
                }, function(error) {
                    console.log("Email failed to send", error);
                    // Add your error handling logic here
                    alert("Email failed to send. Please try again later.");
                });
        }
    </script>
</head>
<body>
    <h1>Contact Us</h1>
   <form action=

"https://formsubmit.co/akanksha.sarade@mitaoe.ac.in" method="post">
   <label for="name">Your Name:</label>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Your Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="message">Your Message:</label>
        <textarea id="message" name="message" rows="4" required></textarea><br><br>

         <button type="submit">Send Message</button>


</form>
</body>
</html>