package XL;

import java.io.IOException;
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
	}

}
