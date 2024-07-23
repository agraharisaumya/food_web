<%@page import="mypack.DbManager"%>
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
String name=request.getParameter("name");
String topic=request.getParameter("topic");
String mobno=request.getParameter("mobno");
String emailid=request.getParameter("email");
String message=request.getParameter("message");
DbManager dbm=new DbManager();
dbm.query="insert into tblenquiry(name,topic,mobno,emailid,message) values('"+name+"','"+topic+"','"+mobno+"','"+emailid+"','"+message+"')";
boolean status=dbm.DML();
if(status)
{
	out.print("<script>alert('Thanks for your Enquiry ');"+"window.location.href='index.jsp';</script>");
}
else
{
  out.print("<script>alert('Sorry unable to save your enquiry,please try again later');"+"window.location.href='index.jsp';</script>");
}

%>
</body>
</html>