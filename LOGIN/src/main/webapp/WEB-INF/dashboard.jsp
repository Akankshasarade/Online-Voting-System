<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Voting System</title>
    <link rel="icon" href="https://img.freepik.com/free-vector/hand-with-voting-sign-election_1017-18637.jpg?size=626&ext=jpg&ga=GA1.1.707890626.1706809646&semt=ais" type="image/png">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
    
    <style>
        /* Reset some default styles */
        body, h1, h2, p {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            background-image: url('https://wallpapercave.com/wp/wp9697601.jpg'); /* Add your background image */
            background-size: cover;
            background-position: center;
            color: #fff;
        }

        header {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 15px 0;
            text-align: center;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.5em;
            font-weight: bold;
        }

        nav {
            display: flex;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            padding: 10px;
            margin: 0 10px;
            transition: color 0.3s ease;
        }

        nav a:hover {
            color: #4CAF50;
        }

        .hero {
            text-align: center;
            padding: 100px 20px;
        }

        .hero-content {
            max-width: 600px;
            margin: 0 auto;
        }

        .hero h1 {
            font-size: 2.8em;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 1.2em;
        }

        .featured-courses {
            text-align: center;
            padding: 5px 5px;
        }

        .get-started-button {
            margin: 0 auto;
        }

        .get-started-button a {
            background-color: #4CAF50;
            color: #fff;
            text-decoration: none;
            padding: 15px 30px;
            border-radius: 4px;
            display: inline-block;
            font-size: 1.2em;
            transition: background-color 0.3s ease;
        }

        .get-started-button a:hover {
            background-color: #45a049;
        }
    </style>

</head>
<body>
  
<header>
    <div class="logo"><h2>Online Voting System</h2></div>
    <nav>
        <a href="course"></a>
        <a href="aboutus">About Us</a>
        <a href="contact">Contact</a>
        <a href="/voter">Voters</a>
          <a href="Support">Support</a>
        <a href="profile">Profile</a>
       <a href="index">Register</a>
       <a href="VoterResult">Download Results</a>
       
       
        
       
    </nav>
</header>

<div class="content">
    
</div>
<section class="hero">
    <div class="hero-content">
        <h1><b>Welcome to Online Voting System</b></h1>
        <p>Unlock your potential with our diverse range of online system.</p>
    </div>
</section>

<section class="featured-courses">
    <div class="get-started-button">
        <a href="#" onclick="goToRegister()"><i class="featured-courses"></i>Let Started</a>
    </div>
</section>

<script type="text/javascript">
    function goToRegister(){
        window.location.href = "/register";
    }
</script>
<button onclick="goToRegister()">Register Now</button>


</body>
</html>
