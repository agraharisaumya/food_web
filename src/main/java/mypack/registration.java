package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.ResultSetImpl;
import com.oreilly.servlet.MultipartRequest;

@WebServlet("/registration")
public class registration extends HttpServlet {
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
	String real_path=request.getRealPath("content//images//profile_pictures");
	renameFile rf=new renameFile();
	MultipartRequest mr= new MultipartRequest(request,real_path,2000000,rf);
	String name=mr.getParameter("user_name");
	String gender=mr.getParameter("gender");
	String dob=mr.getParameter("dob");
	String city=mr.getParameter("city");
	String address=mr.getParameter("address");
	String email=mr.getParameter("email");
	String contactno=mr.getParameter("mobno");
	
	String password=mr.getParameter("password");
	String captcha_code=mr.getParameter("captcha_code");
	String picfilename=rf.file_name;
     //pw.print(rf.file_name);
	
	HttpSession ses=request.getSession();
	String ses_code=(String) ses.getAttribute("code");
	//pw.print(ses_code+"   ");
	//pw.print(captcha_code);
	if(ses_code.equals(captcha_code))
	{
	DbManager dbm=new DbManager();
	
	dbm.query="select email from tblregistration where email='"+email+"'";
	ResultSet rs=dbm.DQL(); 
	int count=0;
	try
	{
		while(rs.next())
		{
			count++;
		}
	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
	if(count>0)
	{

		pw.print("<script>alert('email is already exist,please try again letter with another email.');"
	+"window.location.href='registration.jsp';</script>");
	
	}
	else
	{
		dbm.query="insert into tblregistration(name,gender,dob,city,address,email,contactno,picfilename)"
				+"values('"+name+"','"+gender+"','"+dob+"','"+city+"','"+address+"','"+email+"','"+contactno+"','"+picfilename+"')";
		boolean status_reg=dbm.DML();
		CryptographyManager c=new CryptographyManager();
		
		dbm.query="insert into tbllogin(userid,pass,utype) values('"+email+"','"+c.encryptMyPassword(password)+"','user')";
	//   pw.print(dbm.query);
		boolean status_login=dbm.DML();
		if(status_reg && status_login) {
			pw.print("<script>alert('registration successfull');"+"window.location.href='registration.jsp';</script>");
		}	
	}
	
	}
	else
	{
		pw.print("<script>alert('Invalid captcha code,please try again letter.');"
	+"window.location.href='registration.jsp';</script>");
	
	}
	}

}
