package package1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Servlet_login")
public class Servlet_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String usertype = request.getParameter("userType");
		System.out.println(username + " " + password + " " + usertype);
		
		if(usertype.equals("recruiter")){
			
			RecLogin r = new RecLogin();
			int recID = r.getRecruiter(username, password);
			
			if(recID == 0){
				recID = r.addRecruiter(username,password);
			}
			
			HttpSession session = request.getSession();
			session.setAttribute("recID", recID);
			
			response.sendRedirect("recruiter.jsp");
		}
		else if(usertype.equals("developer")){
			
			Login l = new Login();
			int uID = l.getUser(username, password);
			if(uID == 0){
				uID = l.addUser(username,password);
			}
			System.out.println(uID);
			HttpSession session = request.getSession();
			session.setAttribute("uID", uID);
			
			response.sendRedirect("profile.jsp");
		}
	}
}
