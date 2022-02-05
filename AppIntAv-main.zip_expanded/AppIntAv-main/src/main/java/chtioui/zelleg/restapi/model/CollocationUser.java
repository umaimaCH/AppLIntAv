package chtioui.zelleg.restapi.model;

public class CollocationUser {
	
	 private String name;
	 private int iduser;
	 
	public CollocationUser() {
		
	}
	public CollocationUser(String name, int iduser) {
		super();
		this.name = name;
		this.iduser = iduser;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getIduser() {
		return iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
	}
	 
	 

}
