package package1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Servlet_addintern")
public class Servlet_addintern extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int uID = Integer.parseInt(session.getAttribute("uID").toString());
		
		String companyName = request.getParameter("companyName");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		int stipend = Integer.parseInt(request.getParameter("stipend"));
		Internships i = new Internships();
		i.addInternships(uID, companyName, startDate, endDate, stipend);
		response.sendRedirect("edit.jsp");
	}
}
