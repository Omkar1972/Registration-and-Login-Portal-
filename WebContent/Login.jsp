<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | UMS Pro</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
            background-size: 400% 400%;
            animation: gradient 15s ease infinite;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        @keyframes gradient {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .glass-card {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(15px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 20px;
            padding: 40px;
            width: 100%;
            max-width: 400px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            color: white;
            text-align: center;
        }

        h2 {
            margin-bottom: 25px;
            font-weight: 600;
            letter-spacing: 1px;
        }

        /* Error Message Styling */
        .error-msg {
            background: rgba(255, 0, 0, 0.2);
            border-left: 4px solid #ff4d4d;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            font-size: 0.85rem;
            color: #fff;
        }

        .input-group {
            position: relative;
            margin-bottom: 20px;
            text-align: left;
        }

        .input-group i {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: rgba(255, 255, 255, 0.8);
        }

        .input-group input {
            width: 100%;
            padding: 12px 15px 12px 45px;
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 10px;
            outline: none;
            color: white;
            font-size: 1rem;
            transition: 0.3s;
        }

        .input-group input:focus {
            background: rgba(255, 255, 255, 0.2);
            border-color: #fff;
        }

        button {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 10px;
            background: #fff;
            color: #23a6d5;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
            text-transform: uppercase;
        }

        button:hover {
            transform: scale(1.02);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        .footer-text {
            margin-top: 20px;
            font-size: 0.85rem;
        }

        .footer-text a {
            color: #fff;
            font-weight: 600;
            text-decoration: none;
            border-bottom: 1px solid transparent;
            transition: 0.3s;
        }

        .footer-text a:hover {
            border-bottom: 1px solid white;
        }
    </style>
</head>
<body>

    <div class="glass-card">
        <i class="fas fa-lock-open fa-3x" style="margin-bottom: 15px;"></i>
        <h2>Welcome Back</h2>
        
        <% if(request.getParameter("error") != null) { %>
            <div class="error-msg">
                <i class="fas fa-exclamation-circle"></i> Invalid email or password!
            </div>
        <% } %>

        <form action="LoginServ" method="post">
            <div class="input-group">
                <i class="fas fa-envelope"></i>
                <input type="email" name="email" placeholder="Email Address" required>
            </div>

            <div class="input-group">
                <i class="fas fa-key"></i>
                <input type="password" name="password" placeholder="Password" required>
            </div>

            <button type="submit">Log In</button>
        </form>

        <div class="footer-text">
            Don't have an account? <a href="Register.jsp">Sign Up</a>
        </div>
    </div>

</body>
</html>