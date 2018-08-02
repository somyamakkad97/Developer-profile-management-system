package package1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Servlet_addproject")
public class Servlet_addproject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int uID = Integer.parseInt(session.getAttribute("uID").toString());
		
		String topic = request.getParameter("topic");
		String field = request.getParameter("field");
		String supervisedBy = request.getParameter("supervisedBy");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		Projects p = new Projects();
		p.addProjects(uID, topic, field, supervisedBy, startDate, endDate);
		response.sendRedirect("edit.jsp");
	}
}
