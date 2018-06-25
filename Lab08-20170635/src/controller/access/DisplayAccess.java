package controller.access;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PMF;
import model.Access;

public class DisplayAccess extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException,ServletException {
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		String query= "select from "+Access.class.getName()+" where status ==true";
		List<Access> accesos = (List<Access>) pm.newQuery(query).execute();
		req.setAttribute("accesos",accesos);
		// forward the request to the jsp
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/JSPFiles/JSPAccess/AccessDisplay.jsp");
		dispatcher.forward(req, resp);

	}
}
