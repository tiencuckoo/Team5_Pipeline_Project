<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Random" %>
<html>
<head>
    <title>Rock-Paper-Scissors Result</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #282c34;
            color: #61dafb;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            text-align: center;
            padding: 30px;
            border: 2px solid #61dafb;
            border-radius: 10px;
            background-color: #20232a;
        }
        h2 {
            margin-bottom: 20px;
        }
        .result {
            font-size: 24px;
            margin-top: 20px;
        }
        .choice {
            margin-top: 20px;
        }
        a {
            color: #61dafb;
            text-decoration: none;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Rock-Paper-Scissors Result</h2>
        <%
            String userChoice = request.getParameter("playerChoice");
            String[] options = {"rock", "paper", "scissors"};
            String aiChoice = options[new Random().nextInt(options.length)];

            String result = "";
            if (userChoice.equals(aiChoice)) {
                result = "It's a tie!";
            } else if ((userChoice.equals("rock") && aiChoice.equals("scissors")) ||
                       (userChoice.equals("scissors") && aiChoice.equals("paper")) ||
                       (userChoice.equals("paper") && aiChoice.equals("rock"))) {
                result = "You win!";
            } else {
                result = "CP wins!";
            }
        %>
        <p class="result">Your choice: <%= userChoice %></p>
        <p class="result">CP choice: <%= aiChoice %></p>
        <p class="result"><%= result %></p>
        <div class="choice">
            <a href="index.jsp">Play again</a>
        </div>
    </div>
</body>
</html>
