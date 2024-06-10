<script>
    function showSuccessPopup() {
        alert("Registration successful!");
    }

    function validateForm() {
        var name = document.getElementById("name").value.trim();
        var aadhar = document.getElementById("aadhar").value.trim();
        var userId = document.getElementById("userId").value.trim();
        var password1 = document.getElementById("password1").value;
        var password2 = document.getElementById("password2").value;

        if (name === "" || aadhar === "" || userId === "" || password1 === "" || password2 === "") {
            alert("All fields are required.");
            return false;
        }

        if (password1 !== password2) {
            alert("Passwords do not match.");
            return false;
        }

        return true;
    }
</script>

<form id="registrationForm" action="/register" method="post" onsubmit="return validateForm()">
    <label for="name">Name:</label><br>
    <input type="text" id="name" name="userName"><br>

    <label for="aadhar">Aadhar Card Number:</label><br>
    <input type="text" id="aadhar" name="aadhar"><br>

    <label for="userId">User ID:</label><br>
    <input type="text" id="userId" name="userId"><br>

    <label for="password1">Password:</label><br>
    <input type="password" id="password1" name="password1"><br>

    <label for="password2">Confirm Password:</label><br>
    <input type="password" id="password2" name="password2"><br>

    <input type="submit" value="Register">
</form>
