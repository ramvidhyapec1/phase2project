package com.flyaway;

public class login {
	private String uname;
    private String pword;
    private String pword_db;
    
    
	public login(String uname, String pword) {
		super();
		this.uname = uname;
		this.pword = pword;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPword() {
		return pword;
	}
	public void setPword(String pword) {
		this.pword = pword;
	}
	
	public boolean compare_password(String pword, String pword_db) {
		this.pword=pword;
		this.pword_db=pword_db;
		if(pword.equalsIgnoreCase(pword_db))
		{
			return true;
		}
		return false;
		
	}
	
	
    
    

}
