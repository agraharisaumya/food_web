 <%@ include file="common/link.jsp"%>
    <%@ include file="common/header.jsp" %>
    
    
    <div class="row" style="min-height:400px;margin:0px;background-image:url('content/slider/slider6.jpeg');
    background-size:100% 100%;background-repeat:no-repeat;">
    
    
    <div class="col-sm-4"></div>
    <div class="col-sm-4">
    <h3 style="text-align:center;color:white;background:rgb(99, 18, 18);padding:10px;">Login Here!!</h3>
    <div style="min-height:200px;background:rgba(255 , 255, 255,0.3); width:100%">
    
    
    <form action="validatelogin.jsp" method="post">
    <div class="row" style="padding:10px;">
  <div class="form-group col-sm-12">
    <label >User Type</label>
    <select class="form-control" name="type">
   <option>User</option>
   <option>Admin</option>
   </select>
  </div>
    <div class="row" style="padding:10px;">
  <div class="form-group col-sm-12">
    <label >Email address</label>
    <input type="email" class="form-control" name="id" >
  </div>
  <div class="form-group col-sm-12">
    <label >Password</label>
    <input type="password" class="form-control" name="password">
  </div>
  <div class="form-group col-sm-12" style="align:center;">
 <center> <button type="submit" class="btn btn-primary">Login</button></center>
  </div>
  </div>
</form>
    
    </div>
    </div>
    <div class="col-sm-4"></div>
    
    </div>
      <%@ include file="common/footer.jsp" %>