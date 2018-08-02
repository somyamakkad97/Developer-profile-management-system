package package1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Servlet_addresearch")
public class Servlet_addresearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int uID = Integer.parseInt(session.getAttribute("uID").toString());
		
		String topic = request.getParameter("topic");
		String field = request.getParameter("field");
		String supervisedBy = request.getParameter("supervisedBy");
		String publishedIn = request.getParameter("publishedIn");
		String publishDate = request.getParameter("publishDate");
		Research r = new Research();
		r.addResearch(uID, topic, field, supervisedBy, publishedIn, publishDate);
		response.sendRedirect("edit.jsp");
	}
}
