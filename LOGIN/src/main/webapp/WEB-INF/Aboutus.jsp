<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online voting system</title>
    <title>About Us</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        .about-us {
            height: 100vh;
            width: 100%;
            padding: 90px 0;
            background: #ddd;
        }

        .about {
            width: 100%;
            max-width: 1130px;
            margin: 0 auto;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-around;
        }

        .text {
            width: 100%;
            max-width: 540px;
            margin-top: 30px;
        }

        .text h2, .text h6 {
            font-size: 40px;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .text h5 {
            font-size: 18px;
            font-weight: 500;
            margin-bottom: 20px;
        }

        span {
            color: #4070f4;
        }

        .text p {
            font-size: 16px;
            line-height: 25px;
            letter-spacing: 1px;
        }

        .data {
            margin-top: 30px;
        }
  .pic {
            height: auto;
            width: 100%; /* Adjust the width as needed */
            max-width: 400px; /* Adjust the maximum width as needed */
            margin-right: 20px; /* Adjust the margin as needed */
        }
        .hire {
            font-size: 16px;
            background: #4070f4;
            color: #fff;
            text-decoration: none;
            border: none;
            padding: 8px 25px;
            border-radius: 6px;
            transition: 0.5s;
        }

        .hire:hover {
            background: #000;
            border: 1px solid #4070f4;
        }
    </style>
</head>
<body>
    <section class="about-us">
        <div class="about">
            <img src="https://img.freepik.com/free-vector/elections-voting-isometric-composition_1284-17268.jpg?size=626&ext=jpg&ga=GA1.1.707890626.1706809646&semt=ais" class="pic">
            <div class="text">
                <h2>About Us</h2>
                <h5>Online <span>Voting System</span></h5>
                <p>Welcome to Online Voting System! At Online Voting System, we believe in the power of democracy and the importance of giving a voice to every individual. Our platform is designed to simplify and enhance the voting experience, making it accessible to citizens around the world.</p>
                <h6>Our Mission</h6>
                <p>Our mission is to empower people to participate in the democratic process with ease and confidence. We strive to create a secure, transparent, and user-friendly platform that fosters civic engagement and ensures the integrity of each vote.</p>
                <div class="data">
                    <!-- Add a form with an action attribute -->
                    <form action="/dash" method="post">
                        <button type="submit" class="hire">Back to Dashboard</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
