package chtioui.zelleg.restapi.ressource;


import java.security.Principal;
import java.security.SecureRandom;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;

import chtioui.zelleg.restapi.model.Collocation;
import chtioui.zelleg.restapi.model.Service;
import chtioui.zelleg.restapi.model.User;
import chtioui.zelleg.restapi.security.Secured;
import chtioui.zelleg.restapi.service.UserManager;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.DELETE;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.SecurityContext;


@Path("/collocation")
public class UserRessource {
	
	@Context
	SecurityContext securityContext;
	
UserManager umanager = new UserManager();
	
	@Path("/Signin")
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	public User addUser(User user) {
		
		 return umanager.insertUser(user);
		
	}
	
	@Path("/connect/{email}/{password}")
	@GET
	@Consumes(MediaType.APPLICATION_JSON)
	public String checkUser(@PathParam("email") String email,@PathParam("password") String password) throws SQLException {
		
		 return " Token : "+umanager.checkUser(email,password);
		
	}
	
	@Path("/createCollocation")
	@POST
	@Secured
	@Consumes(MediaType.APPLICATION_JSON)
	public Collocation create(Collocation collocation) {
		
		Principal p = securityContext.getUserPrincipal();
		String id = p.getName();
		
		 return umanager.createCollocation(collocation,id);
		
	}
	
	@Path("/createService")
	@POST
	@Secured
	@Consumes(MediaType.APPLICATION_JSON)
	public Service createS(Service service) {
			Principal p = securityContext.getUserPrincipal();
			String id = p.getName();
			return umanager.createService(service,id);
		
	}
	
	
}
