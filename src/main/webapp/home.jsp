<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Academic Project Management System</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #000;
            overflow: hidden;
            animation: glow-animation 3s infinite alternate;
        }

        @keyframes glow-animation {
            0% {
                box-shadow: 0 0 10px 5px #ffcc00;
            }

            100% {
                box-shadow: 0 0 20px 10px #ffcc00;
            }
        }

        .container {
            text-align: center;
            color: #fff;
            animation: move-text 2s infinite alternate;
        }

        @keyframes move-text {
            0% {
                transform: translateY(0);
            }

            100% {
                transform: translateY(-10px);
            }
        }

        .glowing-text {
            font-size: 3rem;
            text-transform: uppercase;
            background-image: linear-gradient(45deg, #ffcc00, #ff00ff, #00ffcc);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            animation: glow-letters 1s infinite alternate;
        }

        @keyframes glow-letters {
            0% {
                text-shadow: 0 0 10px #ffcc00;
            }

            100% {
                text-shadow: 0 0 20px #ffcc00, 0 0 30px #ff00ff, 0 0 40px #00ffcc;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h1 class="glowing-text">Academic Project Management System</h1>
        <p>Welcome to our platform for managing academic projects efficiently!</p>
    </div>
</body>

</html>
