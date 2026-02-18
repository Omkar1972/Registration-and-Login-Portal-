import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServ extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 
		       resp.setContentType("text/html");
		       
		       PrintWriter out=resp.getWriter();
		       
		       String name=req.getParameter("name");
		       String email=req.getParameter("email");
		       String password=req.getParameter("password");
		       
		       out.print(" "+name+" "+email+" "+password+" " );
		       
		       
		       try{
		    	   
		    	   Connection c=dbConnection.getConnection();
		    	   
		    	   PreparedStatement ps=c.prepareStatement("INSERT INTO users(name,email,password) VALUES(?, ?, ?)");
		    	   
		    	   ps.setString(1, name);
		    	   ps.setString(2, email);
		    	   ps.setString(3, password);
		    	   
		    	   int a=ps.executeUpdate();
		    	   
		    	   if(a > 0){
		    		   resp.sendRedirect("Login.jsp");
		    	   }
		    	   else{
		    		   resp.sendRedirect("Register.jsp?error=1");
		    	   }
		    	   
		       }
		       
		       catch (Exception e) {
		    	   
		    	   e.printStackTrace();
				
			}
		   
	}

}
