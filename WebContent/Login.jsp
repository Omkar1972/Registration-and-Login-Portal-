<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>Login</h2>

<%
if(request.getParameter("error")!=null){%>)
<p style="color:red;">Invalid email or password!</p>
<% } %>


<form action="LoginServ" method="post">

   Email: <input type="email" name="email" required><br><br>
   
   Password:<input type="password" name="password" required><br><br>

           <button type="submit">Login</button>

</form>

</body>
</html>