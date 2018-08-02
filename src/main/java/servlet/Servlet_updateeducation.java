package package1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Servlet_updateeducation")
public class Servlet_updateeducation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int uID = Integer.parseInt(session.getAttribute("uID").toString());
		
		String board = request.getParameter("board");
		Double tenthpercent = Double.parseDouble(request.getParameter("tenthpercent"));
		Double twelfthpercent = Double.parseDouble(request.getParameter("twelfthpercent"));
		int yearOfPassing = Integer.parseInt(request.getParameter("yearOfPassing"));
		String collegeName = request.getParameter("collegeName");
		int currentSem = Integer.parseInt(request.getParameter("currentSem"));
		Double CGPA = Double.parseDouble(request.getParameter("CGPA"));
		Education e = new Education();
		e.updateEducation(uID, tenthpercent, twelfthpercent, board, yearOfPassing, collegeName, currentSem, CGPA);
		response.sendRedirect("edit.jsp");
	}
}
