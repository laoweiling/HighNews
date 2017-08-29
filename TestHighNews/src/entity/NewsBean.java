package entity;

public class NewsBean {
	@Override
	public String toString() {
		return "NewsBean [newsid=" + newsid + ", newstitle=" + newstitle
				+ ", author=" + author + ", content=" + content + ", pubtime="
				+ pubtime + ", typeid=" + typeid + ", newspic=" + newspic + "]";
	}
	private int newsid;
	private String newstitle;
	private String author;
	private String content;   //存储的是文本的路径
	private String pubtime;   //默认格式为'0000-00-00 00:00'
	private int typeid;
	private String newspic;   //存储的是图片的路径
	
	
	public int getNewsid() {
		return newsid;
	}
	public void setNewsid(int newsid) {
		this.newsid = newsid;
	}
	public String getNewstitle() {
		return newstitle;
	}
	public void setNewstitle(String newstitle) {
		this.newstitle = newstitle;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPubtime() {
		return pubtime;
	}
	public void setPubtime(String pubtime) {
		this.pubtime = pubtime;
	}
	public int getTypeid() {
		return typeid;
	}
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	public String getNewspic() {
		return newspic;
	}
	public void setNewspic(String newspic) {
		this.newspic = newspic;
	}
	public NewsBean() {
		super();
		
	}
	public NewsBean(String newstitle,String newspic,
			int newsid,String pubtime ) {
		super();
		this.newstitle = newstitle;
		this.newspic = newspic;
		this.newsid = newsid;
	
		this.pubtime = pubtime;
	}
	public NewsBean(int newsid, String newstitle, String author,
			String content, String pubtime, int typeid, String newspic) {
		super();
		this.newsid = newsid;
		this.newstitle = newstitle;
		this.author = author;
		this.content = content;
		this.pubtime = pubtime;
		this.typeid = typeid;
		this.newspic = newspic;
	}
	public NewsBean(String newstitle, String author, String content,
			String pubtime, int typeid, String newspic) {
		super();
		this.newstitle = newstitle;
		this.author = author;
		this.content = content;
		this.pubtime = pubtime;
		this.typeid = typeid;
		this.newspic = newspic;
	}
	

}
