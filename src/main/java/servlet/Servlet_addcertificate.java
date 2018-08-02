package package1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Servlet_addcertificate")
public class Servlet_addcertificate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int uID = Integer.parseInt(session.getAttribute("uID").toString());
		
		String skillName = request.getParameter("skillName");
		String issueDate = request.getParameter("issueDate");
		String organisation = request.getParameter("organisation");
		String courseName = request.getParameter("courseName");
		Certification c = new Certification();
		c.addCertificate(uID, skillName, issueDate, organisation, courseName);
		response.sendRedirect("edit.jsp");
	}
}
