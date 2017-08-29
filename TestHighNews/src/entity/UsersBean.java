package entity;

public class UsersBean {
	@Override
	public String toString() {
		return "UsersBean [userid=" + userid + ", username=" + username
				+ ", userpwd=" + userpwd + ", userleval=" + userleval + "]";
	}
	private int userid;
	private String username;
	private String userpwd;
	private int userleval;
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public int getUserleval() {
		return userleval;
	}
	public void setUserleval(int userleval) {
		this.userleval = userleval;
	}
	public UsersBean(String username, String userpwd, int userleval) {
		
		
		this.username = username;
		this.userpwd = userpwd;
		this.userleval = userleval;
	}
	public UsersBean() {
		super();
	
	}
	public UsersBean(int userid, String username, String userpwd, int userleval) {
		
		this.userid = userid;
		this.username = username;
		this.userpwd = userpwd;
		this.userleval = userleval;
	}
	

}
