package chethan;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection con=null;
		PrintWriter out=response.getWriter();
		String uname=request.getParameter("name");
		String uemail=request.getParameter("email");
		String upass=request.getParameter("pass");
		long ucontact=Long.parseLong(request.getParameter("contact"));
		RequestDispatcher dispatcher=null;
		
		try {
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Project", "root", "Chethan_57");
			PreparedStatement pstm=con.prepareStatement("insert into users(Uname, Upass, Uemail,Ucontact ) values (?,?,?,?)");
			pstm.setString(1, uname);
			pstm.setString(2, upass);
			pstm.setString(3, uemail);
			pstm.setLong(4, ucontact);
			
			int rowCount=pstm.executeUpdate();
			dispatcher=request.getRequestDispatcher("Register.jsp");
			if(rowCount>0)
			{
				request.setAttribute("status", "success");
				
			}
			else
			{
				request.setAttribute("status", "failed");
			}
			
			dispatcher.forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally{
			if(con!=null)
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		

		
	}

}
