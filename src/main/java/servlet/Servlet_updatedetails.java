package package1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Servlet_updatedetails")
public class Servlet_updatedetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int uID = Integer.parseInt(session.getAttribute("uID").toString());
		
		String name = request.getParameter("name");
		String age1 = request.getParameter("age");
		String gender = request.getParameter("gender");
		String mailId = request.getParameter("mailId");
		String phoneNumber = request.getParameter("phoneNumber");
		String nationality = request.getParameter("nationality");
		String fieldOfInterest = request.getParameter("fieldOfInterest");
		String internJob = request.getParameter("internJob");
		int age = Integer.parseInt(age1);
		Details d = new Details();
		d.updateDetails(uID, name, gender, age, mailId, phoneNumber, nationality, fieldOfInterest, internJob);
		response.sendRedirect("edit.jsp");
	}

}
