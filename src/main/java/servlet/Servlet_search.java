package package1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Servlet_search")
public class Servlet_search extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String skill = request.getParameter("skill");
		
		int certificate = Integer.parseInt(request.getParameter("cradio"));
		int intern = Integer.parseInt(request.getParameter("iradio"));
		int project = Integer.parseInt(request.getParameter("pradio"));
		int research = Integer.parseInt(request.getParameter("rradio"));
		
		System.out.println(skill + certificate + intern + project + research);
		
		int a[]; 
		Queries q = new Queries();
		if(skill.isEmpty()){
			a = q.runQuery(certificate, intern, project, research, null);
		}
		else{
			System.out.println("hkjdbsahbadjshbjh");
			a = q.runQuery(certificate, intern, project, research, skill);
		}
		session.removeAttribute("searchResults");
		session.setAttribute("searchResults", a);
		
		response.sendRedirect("recruiter.jsp");
	}
}
