package XL;

import java.io.IOException;
import java.lang.ClassNotFoundException;
import com.mysql.jdbc.Driver;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.sql.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		Conectdatabase q = new Conectdatabase();
		String username = request.getParameter("username");
		String userpass = request.getParameter("password");
		String strQuery = "";
		ResultSet rs = null;
 		try {
			if( username != null && username != "" && userpass != null && userpass != "")
			{
				strQuery= "select * from user where UserName ='" + username +  "' and Password = '" + userpass + "'";
				System.out.println(username);
				System.out.println(userpass);
				rs = q.RS(strQuery);
				if(rs != null)
				{
					 response.sendRedirect("Cn Calendar 2.jsp");
				}
				else
				{
					 response.sendRedirect("Home Page.jsp");
				}
			}
		} catch (Exception e) {
			System.out.println("1");
			e.printStackTrace();
			
		}
	}

}
