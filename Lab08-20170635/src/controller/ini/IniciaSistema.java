package controller.ini;

import java.io.IOException;
import java.util.Date;


import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Access;
import model.Account;
import model.PMF;
import model.Resource;
import model.Role;

public class IniciaSistema extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
			PersistenceManager pm = PMF.get().getPersistenceManager();
			
		/*
			try {
				Role rol = new Role("Administrador",new Date());
				Role rol1 = new Role("invitado",new Date());
				pm.makePersistent(rol);
				pm.makePersistent(rol1);
				
				Resource recurso1=new Resource("/RoleCreateRedirect",new Date());
				Resource recurso2=new Resource("/ResourceCreateRedirect",new Date());
				Resource recurso3=new Resource("/AccessCreateRedirect",new Date());

				pm.makePersistent(recurso1);
				pm.makePersistent(recurso2);
				pm.makePersistent(recurso3);
				
				Access acceso1= new Access(rol.getId(), recurso1.getId(), new Date(), rol.getNombre(), recurso1.getUrl());
				Access acceso2= new Access(rol.getId(), recurso2.getId(), new Date(), rol.getNombre(), recurso2.getUrl());
				Access acceso3= new Access(rol.getId(), recurso3.getId(), new Date(), rol.getNombre(), recurso3.getUrl());
				
				pm.makePersistent(acceso1);
				pm.makePersistent(acceso2);
				pm.makePersistent(acceso3);
				
				Account cuenta1 = new Account("richardeq@gmail.com", "Arequipa", "0000000", new Date(), rol.getId());
				Account cuenta2 = new Account("kticllahuanaco@unsa.edu.pe", "Arequipa", "9900000", new Date(), rol.getId());
				pm.makePersistent(cuenta1);
				pm.makePersistent(cuenta2);
				
				
			} finally {
				pm.close();
			}
*/
			response.sendRedirect("/UserDisplay");
		
	}
}
