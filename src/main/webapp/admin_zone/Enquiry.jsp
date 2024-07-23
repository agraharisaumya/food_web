 


              <%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%@ include file="common/header.jsp" %>
                <!-- Page content-->
                <div class="container-fluid">
                  <div class="row" ><h1 class="mt-4">Enquiry</h1></div>
                  <div class="row" style="padding :30px;">
                  
                  <div class="col-sm-12">
                  <table class="table table-bordered">
                  <tr><th>SN</th><th>Name</th><th>Mobile Number</th><th>Email</th><th>topip</th><th>Message</th><th>Data Time</th></tr>
                  <%
                  DbManager dbm= new DbManager();
                  dbm.query="Select * from tblenquiry";
                  ResultSet rs=dbm.DQL();
                  int count=1;
                  while(rs.next())
                  {
                	  out.print("<tr><td>"+count+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td></tr>");
                	  count++;
                  
                  }
                  %>
                  
                  </table>
                  
                  
                  </div>
                  
                  </div>
                </div>
         <%@ include file="common/footer.jsp" %>