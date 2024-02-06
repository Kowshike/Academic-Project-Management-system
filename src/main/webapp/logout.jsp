<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Session Timed Out</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .message-container {
            text-align: center;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .error-message {
            color: #ff0000;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="message-container">
        <div class="error-message">Session timed out!</div>
        <p>Please login again.</p>
    </div>
</body>
</html>
