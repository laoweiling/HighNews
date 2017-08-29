package entity;

public class NewstypeBean {
	@Override
	public String toString() {
		return "NewstypeBean [typeid=" + typeid + ", typename=" + typename
				+ "]";
	}
	private int typeid;
	private String typename;
	public int getTypeid() {
		return typeid;
	}
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public NewstypeBean() {
		super();
		
	}
	public NewstypeBean(int typeid, String typename) {
		super();
		this.typeid = typeid;
		this.typename = typename;
	}
    
	

}
