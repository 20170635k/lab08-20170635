package controller.role;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Account;
import model.PMF;
import model.Role;

public class DisplayRoles extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException,ServletException {
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		String query= "select from "+Role.class.getName()+" where status ==true";
		List<Role> roles = (List<Role>) pm.newQuery(query).execute();
		req.setAttribute("roles",roles);
		// forward the request to the jsp
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/JSPFiles/JSPRole/RoleDisplay.jsp");
		dispatcher.forward(req, resp);

	}
}
