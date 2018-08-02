package package1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Servlet_addskill")
public class Servlet_addskill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int uID = Integer.parseInt(session.getAttribute("uID").toString());
		
		String skillName = request.getParameter("skillName");
		int	noOfYears = Integer.parseInt(request.getParameter("noOfYears"));
		int percentEfficiency = Integer.parseInt(request.getParameter("percentEfficiency"));
		SkillSet s = new SkillSet();
		s.addSkillSet(uID, skillName, noOfYears, percentEfficiency);
		response.sendRedirect("edit.jsp");
	}
}
