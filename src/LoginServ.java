import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServ extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		 resp.setContentType("text/html");
		 
		 PrintWriter out=resp.getWriter();
		 
		 String email=req.getParameter("email");
		 
		 String pass=req.getParameter("password");
		 
		 out.print(" "+email+" "+pass);

		 try{
			 
			 
			 Connection c=dbConnection.getConnection();
			 
			 PreparedStatement ps= c.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");
			 
			 ps.setString(1, email);
			 ps.setString(2, pass);
			 
			 
			 ResultSet rs=ps.executeQuery();
			 
			 if(rs.next())
			 {
				HttpSession hs=req.getSession();
				hs.setAttribute("name",rs.getString("name"));
				
				resp.sendRedirect("Home.jsp");
				 
			 }
			 else{
				 
				 resp.sendRedirect("Login.jsp?error=1");
			 }
		 
		 }
		 
		 catch(Exception e)
		 {
			 e.printStackTrace();
		 }
		
	}

}
