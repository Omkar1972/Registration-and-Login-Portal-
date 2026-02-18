<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
    // Security Check: Redirect to login if session is null or name attribute is missing
    if (session.getAttribute("name") == null) {
        response.sendRedirect("Login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | UMS Pro</title>
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

        .dashboard-card {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 25px;
            padding: 50px;
            width: 100%;
            max-width: 500px;
            box-shadow: 0 20px 45px rgba(0, 0, 0, 0.2);
            color: white;
            text-align: center;
            position: relative;
        }

        .profile-icon {
            background: white;
            color: #e73c7e;
            width: 80px;
            height: 80px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            font-size: 2.5rem;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        h3 {
            font-size: 1.8rem;
            font-weight: 600;
            margin-bottom: 10px;
        }

        p {
            font-weight: 300;
            margin-bottom: 30px;
            opacity: 0.9;
        }

        .stats-row {
            display: flex;
            justify-content: space-around;
            margin-bottom: 30px;
            padding: 20px 0;
            border-top: 1px solid rgba(255,255,255,0.2);
            border-bottom: 1px solid rgba(255,255,255,0.2);
        }

        .stat-item span {
            display: block;
            font-size: 1.2rem;
            font-weight: 600;
        }

        .stat-item label {
            font-size: 0.75rem;
            text-transform: uppercase;
            opacity: 0.7;
        }

        .logout-btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: #ff4b2b;
            color: white;
            padding: 12px 30px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: 0.3s;
            box-shadow: 0 4px 15px rgba(255, 75, 43, 0.3);
        }

        .logout-btn:hover {
            background: #ff416c;
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(255, 75, 43, 0.4);
        }
    </style>
</head>
<body>

    <div class="dashboard-card">
        <div class="profile-icon">
            <i class="fas fa-user-check"></i>
        </div>
        
        <h3>Welcome, <%= session.getAttribute("name") %>!</h3>
        <p>You have successfully accessed the User Management System Pro dashboard.</p>

        <div class="stats-row">
            <div class="stat-item">
                <span>Active</span>
                <label>Status</label>
            </div>
            <div class="stat-item">
                <span>Pro</span>
                <label>Account</label>
            </div>
        </div>

        <a href="Logout.jsp" class="logout-btn">
            <i class="fas fa-sign-out-alt"></i> Logout
        </a>
    </div>

</body>
</html>