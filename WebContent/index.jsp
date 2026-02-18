<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UMS | Welcome</title>
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
            /* Animated Gradient Background */
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

        /* Glassmorphism Card */
        .glass-card {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.18);
            border-radius: 20px;
            padding: 50px;
            text-align: center;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            color: white;
            width: 90%;
            max-width: 500px;
        }

        h1 {
            font-weight: 600;
            letter-spacing: 1px;
            margin-bottom: 10px;
            font-size: 2rem;
        }

        p {
            font-weight: 300;
            margin-bottom: 30px;
            opacity: 0.9;
        }

        /* Button Styling */
        .btn-group {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .btn {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 15px;
            text-decoration: none;
            border-radius: 50px;
            font-weight: 600;
            transition: all 0.3s ease;
            text-transform: uppercase;
            font-size: 0.9rem;
        }

        .btn-login {
            background: white;
            color: #e73c7e;
        }

        .btn-register {
            background: transparent;
            color: white;
            border: 2px solid white;
        }

        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.2);
        }

        .btn-register:hover {
            background: white;
            color: #23a6d5;
        }
    </style>
</head>
<body>

    <div class="glass-card">
        <i class="fas fa-users-cog fa-4x" style="margin-bottom: 20px;"></i>
        <h1>User Managment System</h1>
        <p></p>
        
        <div class="btn-group">
            <a href="Login.jsp" class="btn btn-login">
                <i class="fas fa-sign-in-alt"></i> Access Account
            </a>
            <a href="Register.jsp" class="btn btn-register">
                <i class="fas fa-user-plus"></i> Create Account
            </a>
        </div>
    </div>

</body>
</html>