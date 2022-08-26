package com.flyaway;

public class AdminChangePassword {
	private String oldpassword;
	private String newpassword;
	private String confirmpassword;
	
	public static void changepassword()
	{
		
	}
	
	
	public String getOldpassword() {
		return oldpassword;
	}
	public AdminChangePassword(String oldpassword, String newpassword, String confirmpassword) {
		super();
		this.oldpassword = oldpassword;
		this.newpassword = newpassword;
		this.confirmpassword = confirmpassword;
	}
	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	@Override
	public String toString() {
		return "AdminChangePassword [oldpassword=" + oldpassword + ", newpassword=" + newpassword + ", confirmpassword="
				+ confirmpassword + "]";
	}
	public void myfunction() {
		System.out.println("You are here");
	
	}
}
