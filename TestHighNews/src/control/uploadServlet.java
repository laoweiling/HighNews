package control;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class uploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    // �ϴ��ļ��洢Ŀ¼
    private static final String UPLOAD_DIRECTORY = "img";
    // �ϴ�����
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
 
    String imgSavePath ;
	@Override
	public void init(ServletConfig config) throws ServletException {
		imgSavePath = config.getInitParameter("img_save_path");
		System.out.println("imgSavePath="+imgSavePath);
		
		
	}
    
    /**
     * �ϴ����ݼ������ļ�
     */
    protected void doPost(HttpServletRequest request,HttpServletResponse response)
    		throws ServletException, IOException {
    	System.out.println("imgSavePath="+imgSavePath);
    	String picPath = null;
    	HttpSession session = request.getSession();
		// ����Ƿ�Ϊ��ý���ϴ�
		if (!ServletFileUpload.isMultipartContent(request)) {
		    // ���������ֹͣ
		    PrintWriter writer = response.getWriter();
		    writer.println("Error: ��������� enctype=multipart/form-data");
		    writer.flush();
		    return;
		}
        // �����ϴ�����
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // �����ڴ��ٽ�ֵ - �����󽫲�����ʱ�ļ����洢����ʱĿ¼��
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        // ������ʱ�洢Ŀ¼
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
 
        ServletFileUpload upload = new ServletFileUpload(factory);
         
        // ��������ļ��ϴ�ֵ
        upload.setFileSizeMax(MAX_FILE_SIZE);
         
        // �����������ֵ (�����ļ��ͱ�����)
        upload.setSizeMax(MAX_REQUEST_SIZE);
 
        // ������ʱ·�����洢�ϴ����ļ�
        // ���·����Ե�ǰӦ�õ�Ŀ¼
         //String uploadPath = getServletContext().getRealPath("./") + File.separator + UPLOAD_DIRECTORY;
        String uploadPath = imgSavePath ;
        // ���Ŀ¼�������򴴽�
        File uploadDir = new File(uploadPath);
         //File uploadDir = new File(imgSavePath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
 
        try {
            // ���������������ȡ�ļ�����
            List<FileItem> formItems = upload.parseRequest(request);
 
            if (formItems != null && formItems.size() > 0) {
                // ����������
                for (FileItem item : formItems) {
                    // �����ڱ��е��ֶ�
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        String filePath = uploadPath + File.separator + fileName;
                        /*-----------------------����Ķ�һ��------------*/
                        //picPath = File.separator + UPLOAD_DIRECTORY + File.separator + fileName;
                        //picPath = imgSavePath+"/"+fileName;
                        picPath = UPLOAD_DIRECTORY+"/"+fileName;
                        File storeFile = new File(filePath);
                        // �ڿ���̨����ļ����ϴ�·��
                        System.out.println("FilePath="+filePath);
                        System.out.println("PicPath="+picPath);//  img/me.jpg
                        System.out.println("imgSavePath="+imgSavePath);
                        // �����ļ���Ӳ��
                        item.write(storeFile);   //????
                        System.out.println("ok");
                        session.setAttribute("message", "�ļ��ϴ��ɹ�!");
                        session.setAttribute("picPath", picPath);
                		String picPath1 = (String) session.getAttribute("message");
                		System.out.println("picPath1" + picPath1); 
                		String picPath2 = (String) session.getAttribute("picPath");
                		System.out.println("picPath1" + picPath2); 
                    }
                }
            }
        } catch (Exception ex) {
            request.setAttribute("message","������Ϣ: " + ex.getMessage());
        }
        // ��ת�� message.jsp
        //getServletContext().getRequestDispatcher("/MyIndex/UI_JSP/addtab.jsp").forward(
              //request, response);
        request.getRequestDispatcher("/MyIndex/UI_JSP/addtab.jsp").forward(request, response);
    }
}
