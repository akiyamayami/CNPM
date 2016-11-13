package XL;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Register() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		Conectdatabase q = new Conectdatabase();
		String Name = request.getParameter("Name");
		String ID = request.getParameter("ID");
		String Password = request.getParameter("Password");
		String Confirm_Password = request.getParameter("Confirm_Password");
		String Email = request.getParameter("Email");
		String Phone = request.getParameter("Phone");
		String Role;
		String strQuery = "";
		ResultSet rs = null;
		try{
			if(Name != "" && Name != null && ID != "" && ID != null && 
				Password != "" && Password != null && Confirm_Password != "" && Confirm_Password != null && 
				Email != "" && Email != null && Phone != "" && Phone != null)
			{
				strQuery = "select * from User where UserName = '"  + ID + "'";
				rs = q.RS(strQuery);
				if(rs.next())
				{
					response.sendRedirect("Register.jsp");
					request.setAttribute("Message","Có lỗi Xảy ra vui lòng đăng ký lại");
				}
				else
				{
					strQuery = "insert into User values('"+ ID + "','" + Password + "','" +  Name + "','" + Email + "','" + Phone + "','2')"+";";
					boolean check = q.ExecuteUpdateSQL(strQuery);
					if(check)
					{
						response.sendRedirect("Home Page.jsp");
						q.Close();
					}
					else
					{
						response.sendRedirect("Register.jsp");
						
						q.Close();
					}
				}
			}
			
		}
		catch (Exception e) {
		}
	}

}
