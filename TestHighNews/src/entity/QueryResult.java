package entity;

import java.util.List;

public class QueryResult {
	private List list;   //��ס�û�����ҳ������
	private int totalrecord;    //�����ܼ�¼��
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public int getTotalrecord() {
		return totalrecord;
	}
	public void setTotalrecord(int totalrecord) {
		this.totalrecord = totalrecord;
	}

}
