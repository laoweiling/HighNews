import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.gson.Gson;

public class GsonTest {
	public static void main(String[] args) {
		List list = new ArrayList();
		Student stu1 = new Student();
		Student stu2 = new Student();
		stu1.name="abc";
		stu1.password = "123";
		list.add("abc");
		list.add("def");
		list.add(1);
		list.add(stu1);
		list.add(stu2);
		
		Gson gson = new Gson();
		String listJson = gson.toJson(list);
		System.out.println(listJson);
		
		Map map = new HashMap();
		map.put("stu1",stu1);
		List stuList = new ArrayList();
		stuList.add(stu1);
		stuList.add(stu2);
		map.put("stus",stuList);
		String mapJson = gson.toJson(map);
		System.out.println(mapJson);
		
		
	}
}
