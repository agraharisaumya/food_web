
 <%@page import="mypack.CryptographyManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%@ include file="common/link.jsp"%>
    <%@ include file="common/header.jsp" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String type=request.getParameter("type");
String id =request.getParameter("id");
String password=request.getParameter("password");
DbManager dbm=new DbManager();
CryptographyManager c=new CryptographyManager();
if(type.equals("Admin"))
{
	dbm.query="select * from tbllogin where userid='"+id+"' and pass='"+c.encryptMyPassword(password)+"' and utype='admin'";
	ResultSet rs=dbm.DQL();
	int count=0;
	while(rs.next())
	{
		count++;
	}

if(count>0)
{

	out.print("<script>"
+"window.location.href='admin_zone/admindashboard.jsp';</script>");
}
else
{

	out.print("<script>alert('Invalid id/password ,please try again letter.');"
+"window.location.href='login.jsp';</script>");

}
}

else if(type.equals("User"))
{
	dbm.query="select * from tbllogin where userid='"+id+"' and pass='"+c.encryptMyPassword(password)+"' and utype='user'";
	ResultSet rs=dbm.DQL();
	int count=0;
	while(rs.next())
	{
		count++;
	}

if(count>0)
{

	out.print("<script>"
+"window.location.href='user_zone/userdashboard.jsp';</script>");
}
else
{

	out.print("<script>alert('Invalid id/password ,please try again letter.');"
+"window.location.href='login.jsp';</script>");

}

}
else
{
	out.print("<script>alert('Invalid id/password ,please try again letter.');"
			+"window.location.href='login.jsp';</script>");
	
}
%>
</body>
</html>