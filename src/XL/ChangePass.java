package XL;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ChangePass")
public class ChangePass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ChangePass() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		Conectdatabase q = new Conectdatabase();
		HttpSession session = request.getSession();
		String OPass = request.getParameter("OPass");
		String NPass = request.getParameter("NPass");
		String CPNPass = request.getParameter("CPNPass");
		String id = (String) session.getAttribute("123");
		String strQuery = "";
		ResultSet rs = null;
		try{
			if(OPass != null && OPass != "" && NPass != null && NPass != "" && CPNPass != null && CPNPass != "")
			{
				strQuery = "select * from User where Password  = '" + OPass +"' and UserName = '" + id +  "'";
				rs = q.RS(strQuery);
				if(!rs.next())
				{
					response.sendRedirect("Change Info user.jsp");
					request.setAttribute("Message","Có lỗi Xảy ra vui lòng đăng ký lại");
					q.Close();
				}
				else
				{
					strQuery = "update User set Password = '"+ NPass + "' where UserName = '" + id + "'";
					q.ExecuteUpdateSQL(strQuery);
					response.sendRedirect("Change Info user.jsp");
					q.Close();
				}
			}
		}
		catch (Exception e) {
		}
	}

}
