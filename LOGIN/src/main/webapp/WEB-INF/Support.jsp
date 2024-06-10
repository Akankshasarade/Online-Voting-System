<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Voting System</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
    }

    form {
        max-width: 600px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        overflow-y: auto;
        max-height: 400px; /* Adjust as needed */
    }

    h2 {
        margin-top: 0;
    }

    .question {
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 8px;
        padding: 10px;
        position: relative;
    }

    .question label {
        display: block;
        margin-bottom: 5px;
    }

    .answer {
        display: none;
        margin-top: 10px;
    }

    .arrow {
        cursor: pointer;
        position: absolute;
        top: 10px;
       right: 10px;
        transform: rotate(90deg);
        width: 0;
        height: 0;
        border-left: 8px solid transparent;
        border-right: 8px solid transparent;
        border-bottom: 8px solid black;
    }

    .arrow.active {
        transform: rotate(-90deg);
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    } 
    .theory-section {
       position:middle;
        justify-content: space-between;
        align-items: center;
        margin-top: 40px;
          left: 50px;
        width: 80%;
        max-width: 800px;
    }

    .theory-text {
        width: 50%;
    }

    .theory-image {
        width: 40%;
    }
    
    
    
    
    
    
    
    .theory-container {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.theory-section {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    margin-bottom: 40px;
    left:50px;
    padding: 100px;
    width: 80%;
    max-width: 1000px;
    background-color: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.theory-text {
    text-align: center;
}

.theory-image img {
    max-width: 100%;
    height: auto;
    border-radius: 8px;
    margin-top: 20px;
}
    
</style>
<script>
    function toggleAnswer(id) {
        var answer = document.getElementById(id);
        answer.style.display = answer.style.display === 'none' ? 'block' : 'none';
        var arrow = document.getElementById(id + '-arrow');
        arrow.classList.toggle('active');
    }

    function redirectToContactPage() {
        window.location.href = "Contactinfo";
    }
</script>
</head>
<body>
    <form onsubmit="redirectToContactPage(); return false;">
        <h2>Online Voting System</h2>
        <div class="question">
            <label for="q1">1) What is an online voting system?</label>
            <div class="arrow" id="ans1-arrow" onclick="toggleAnswer('ans1')"></div>
            <div id="ans1" class="answer">
                An online voting system is a software platform that allows groups to securely conduct votes and elections. High-quality online voting systems balance ballot security, accessibility, and the overall requirements of an organization's voting event.
            </div>
        </div>

        <div class="question">
            <label for="q2">2) What is the purpose of e-Voting in shares?</label>
            <div class="arrow" id="ans2-arrow" onclick="toggleAnswer('ans2')"></div>
            <div id="ans2" class="answer">
                With e-Voting, shareholders can cast their votes electronically, eliminating the need for physical ballot papers and reducing the possibility of errors. It saves time, resources, and enhances the security and accuracy of the voting process.
            </div>
        </div>

        <div class="question">
            <label for="q3">3) What is the time period of e-Voting?</label>
            <div class="arrow" id="ans3-arrow" onclick="toggleAnswer('ans3')"></div>
            <div id="ans3" class="answer">
                With e-voting in place, it saves a lot of cost and time. The voting period is usually completed three days before the date of AGM. And e-voting shall remain open for at least one day and a maximum of three days.
            </div>
        </div>

        <div class="question">
            <label for="q4">4) What is the meaning of e-voting in company law?</label>
            <div class="arrow" id="ans4-arrow" onclick="toggleAnswer('ans4')"></div>
            <div id="ans4" class="answer">
                Electronic voting is voting that uses electronic means to either aid or take care of casting and counting ballots. Depending on the particular implementation, e-voting may use standalone electronic voting machines (also called EVM) or computers connected to the Internet (online voting).
            </div>
        </div>

        <div class="question">
            <label for="q5">5) What are the benefits of voting shares?</label>
            <div class="arrow" id="ans5-arrow" onclick="toggleAnswer('ans5')"></div>
            <div id="ans5" class="answer">
                Benefits of Voting Shares
                <ul>
                    <li>Voting shares give shareholders the power to influence decisions.</li>
                    <li>They give shareholders the authority to seek accountability from a firm.</li>
                    <li>Offer minority shareholders the authority to prevent more prominent shareholders from suppressing their interests.</li>
                </ul>
            </div>
        </div>

        <input type="submit" value="If you Have Any Query Contact Us">
    </form>
    <!-- Theory Section 1 -->
    <div class="theory-section">
        <div class="theory-text">
            <p><h2>What is Online Voting for an Election?</h2><br>
            Online voting (also known as electronic voting, or e-voting) is the process of using an electronic method to cast, and then tabulate, votes in an election.<br>
             In a nutshell, this is what ElectionBuddy does. ElectionBuddy will help you through the full election process, from notifying voters and collecting votes to <br>
             calculating the results of the election.
            </p>
            <!-- More text if needed -->
        </div>
        <div class="theory-image">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3c-CIWRoJCmiZK5aaqFCcTe-yCsBcWZJVwg&s" alt="Online Voting">
        </div>
    </div>

    <!-- Theory Section 2 -->
    <div class="theory-section">
        <div class="theory-image">
        </div>
        <div class="theory-text">
            <p>Online Voting and Ballot Methods
            Online voting can generally be conducted <br>in two ways remote online voting and on-site online voting. <br>Your internet voting depends on the options stipulated <br>
            by your bylaws. Your bylaws are always the first place to check when deciding if you need to run an <br>on-site or remote online vote. In some cases, you may even be allowed to utilize both options!
            </p>
            <!-- More text if needed -->
        </div>
    </div>

    <!-- Theory Section 3 -->
    <div class="theory-section">
        <div class="theory-text">
            <p>On-Site Online Elections
            As the name implies, on-site voting is when an election is performed by a voter in person. This commonly occurs at annual general meetings and is also done<br>
             during municipal, provincial/state, and federal elections.
            </p>
            <!-- More text if needed -->
        </div>
        <div class="theory-image">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuXQ0U2qvg3UhqWDKAq_sOUCIPt4BssNDing&s" alt="On-Site Voting">
        </div>
        <p><h2>Online Voting and Ballot Methods</h2><br>
            Online voting can generally be conducted in two <br>ways remote online voting and on-site online voting.<br> Your internet voting depends on the options stipulated <br>
            by your bylaws. Your bylaws are always the <br>first place to check when deciding if you need to <br>run an on-site or remote online vote. In some cases,<br> you may even be allowed to utilize both options!
            </p><br>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3WZuN6Gi3dvmAViheNsZOYK8xPNQsqcl_RQ&s" alt=" Voting">
   <p><h2>Types of Voting System</h2>
Different voting systems have a variety of different features,<br> ranging from how proportional they are<br> (whether seats in parliament reflect votes cast),<br>
 the connection between MPs and their communities and the <br>extent to which voters can choose between different candidates.<br><br><br>
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThkF3KyWJr0QNo1-VaJ0zOjwz9gFjK_U5zcw&s" alt=" Voting">
    </div>
</body>
</html>
