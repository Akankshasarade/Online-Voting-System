<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cast Vote</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-size: 18px;
            color: #333;
        }

        input[type="radio"] {
            display: none;
        }

        input[type="radio"] + label {
            cursor: pointer;
            font-size: 16px;
            margin-bottom: 10px;
            display: block;
            position: relative;
            padding-left: 35px;
            color: #555;
        }

        input[type="radio"] + label:before {
            content: "";
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background-color: #fff;
            border: 2px solid #ccc;
        }

        input[type="radio"]:checked + label:before {
            background-color: #4CAF50;
            border-color: #4CAF50;
        }

        img {
            vertical-align: middle;
            margin-right: 10px;
            border-radius: 50%;
        }

        input[type="button"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            display: block;
            margin: 0 auto;
        }

        input[type="button"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<h1>Cast Your Vote</h1>
<form action="/givevote" method="post" enctype="multipart/form-data">
    <label>Select a candidate:</label><br><br>
    <input type="radio" id="bjp" name="candidateId" value="bjp">
    <label for="bjp"><img src="https://www.shutterstock.com/shutterstock/photos/1962882805/display_1500/stock-photo-linked-blocks-bank-and-currencies-money-bags-bank-financial-institution-manages-cash-deposits-and-1962882805.jpg" width="45" height="45">BJP</label><br>

    <input type="radio" id="cong" name="candidateId" value="cong">
    <label for="cong"><img src="https://www.shutterstock.com/shutterstock/photos/2230331327/display_1500/stock-photo-ornate-mecha-turkey-thanksgiving-k-high-quality-render-multicolor-vivid-2230331327.jpg" width="35" height="48">Congress</label><br>

    <input type="radio" id="aap" name="candidateId" value="aap">
    <label for="aap"><img src="https://www.shutterstock.com/shutterstock/photos/2233404111/display_1500/stock-photo-seasonal-fruit-cut-up-and-arranged-on-a-wooden-board-aesthetic-warm-dramatic-lighting-medieval-2233404111.jpg" width="55" height="40">AAP</label><br>

    <input type="radio" id="ss" name="candidateId" value="ss">
    <label for="ss"><img src="https://www.shutterstock.com/shutterstock/photos/2220810989/display_1500/stock-photo-hand-hold-flowers-heads-under-the-sunlight-close-up-2220810989.jpg" width="50" height="45">SS</label><br>

    <input type="radio" id="nota" name="candidateId" value="nota">
    <label for="nota"><img src="https://www.shutterstock.com/shutterstock/photos/766610023/display_1500/stock-vector-clock-icon-in-flat-style-timer-on-blue-background-business-watch-vector-design-element-for-you-766610023.jpg" width="45" height="35">NOTA</label><br>

    <input type="submit" value="Vote">
</form>

<%--<script>--%>
<%--    function castVote() {--%>
<%--        var selectedCandidate = document.querySelector('input[name="candidateId"]:checked');--%>
<%--        if (!selectedCandidate) {--%>
<%--            alert("Please select a candidate to vote.");--%>
<%--            return;--%>
<%--        }--%>

<%--        var candidateId = selectedCandidate.value;--%>

<%--        var xhr = new XMLHttpRequest();--%>
<%--        xhr.open("POST", "/voter", true);--%>
<%--        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");--%>
<%--        xhr.onreadystatechange = function () {--%>
<%--            if (xhr.readyState === XMLHttpRequest.DONE) {--%>
<%--                if (xhr.status === 200) {--%>
<%--                    alert("Vote casted successfully for " + candidateId);--%>
<%--                    location.reload();--%>
<%--                } else {--%>
<%--                    alert("Failed to cast vote. Please try again later.");--%>
<%--                }--%>
<%--            }--%>
<%--        };--%>
<%--        xhr.send("candidateId=" + encodeURIComponent(candidateId));--%>
<%--    }--%>
</script>
</body>
</html>
