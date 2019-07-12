package com.drops.servlet;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.drops.beanclass.UploadBean;
import com.drops.interfaces.SqlMethodImplementation;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;
@WebServlet("/UploadFile")
public class UploadFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UploadFile() {
        super();
    }
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part part=null;
		ParamPart paramPart=null;
		FilePart filePart=null;
		String fileName=null;
		String filePath=null;
		String fileType=null;
		File file=null;
		double fileSize = 0;
		HttpSession session=request.getSession();
		String userName=(String) session.getAttribute("username");
		System.out.println("user\t"+userName);
MultipartParser parser=new MultipartParser(request, 99999999);
	String StoringPath=request.getSession().getServletContext().getRealPath("/");
		int a=StoringPath.indexOf('.');
		String path=StoringPath.substring(0, a);
		filePath=path+"drops\\WebContent\\userfile\\"+userName+"\\";
		UploadBean ub=new UploadBean();
		while((part=parser.readNextPart())!=null){
		if(part.isFile()){
		filePart=(FilePart) part;
		fileName=filePart.getFileName();
		fileType=filePart.getContentType();
		filePath=filePath+fileName;
		System.out.println("file path\t"+filePath);
		file=new File(filePath);
		fileSize=filePart.writeTo(file);
		System.out.println("file size\t"+fileSize);
		FileInputStream fis=new FileInputStream(file);
		ub.setUploadContent(fis);
			}
			else if (part.isParam()) {
				paramPart=(ParamPart) part;
		String tagname=paramPart.getName();
		System.out.println(tagname+"tagname");
		String tagValue=paramPart.getStringValue();
		System.out.println("tag value"+tagValue);
			}
			}
			Date d= new Date();
		String date=d.toString();
		Random r=new Random();
		int fileKey=r.nextInt(100000);
		String displayKey=""+fileKey;
		ArrayList<Object> al=new ArrayList<>();
		System.out.println(date);
		al.add(userName);
		al.add(fileName);
		al.add(fileType);
		al.add(fileSize);
		al.add(filePath);
		al.add(date);
		al.add(displayKey);
		SqlMethodImplementation implementation=SqlMethodImplementation.getImplementation();
		int status=implementation.upload(al);
		if(status>0){
		HttpSession session2=request.getSession();
		session2.setAttribute("filename", fileName);
		HttpSession hs=request.getSession();
		hs.setAttribute("filekey", displayKey);
		request.getRequestDispatcher("split.jsp").forward(request, response);
		}
		else{
		request.getRequestDispatcher("error.jsp").forward(request, response); 		} 
 }
}

