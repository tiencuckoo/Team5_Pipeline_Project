<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rock, Paper, Scissors Game</title>
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
        h1 {
            margin-bottom: 20px;
        }
        .choice {
            padding: 10px 20px;
            margin: 10px;
            font-size: 20px;
            cursor: pointer;
            background-color: #61dafb;
            color: #282c34;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }
        .choice:hover {
            background-color: #282c34;
            color: #61dafb;
        }
        #result {
            margin-top: 20px;
            font-size: 24px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>1,2,3 This is Rock, Paper, Scissors!</h1>
        <div>
            <button class="choice" onclick="playGame('rock')">Rock</button>
            <button class="choice" onclick="playGame('paper')">Paper</button>
            <button class="choice" onclick="playGame('scissors')">Scissors</button>
        </div>
        <div id="result"><%= (request.getAttribute("result") != null) ? request.getAttribute("result") : "" %></div>
    </div>
    <script>
        function playGame(playerChoice) {
            var form = document.createElement('form');
            form.method = 'POST';
            form.action = 'result.jsp';
            var input = document.createElement('input');
            input.type = 'hidden';
            input.name = 'playerChoice';
            input.value = playerChoice;
            form.appendChild(input);
            document.body.appendChild(form);
            form.submit();
        }
    </script>
</body>
</html>
