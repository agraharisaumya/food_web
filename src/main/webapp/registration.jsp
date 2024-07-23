<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="common/link.jsp"%>
    <%@ include file="common/header.jsp" %>
    <script>
    $(document).ready(function(){
    	$("#ImgRefresh").click(function(){
    		$.get("captcha",null,function(){
    			$("#ImgCaptcha").attr("src","captcha");
    		});
    	});
    });
    </script>
    <!-- heading start -->
    <div class="row" style="padding-top:15px; margin:0px;">
    <div class="col-sm-2"></div>
    <div class="col-sm-8" style="background:#6e0c05;">
    <h3 style="color:white; text-align:center; font-weight:bold;">Register Here</h3></div>
    <div class="col-sm-2"></div>
    </div>
    <!-- heading End -->
    <!-- Form start -->
     <div class="row" style="min-height:500px;padding:20px;">
    <div class="col-sm-2"></div>
    <div class="col-sm-8" style="background:black;padding-bottom:20px;">
    
    <form action="registration" method="post" enctype="multipart/form-data">
    <div class="row">
    <div class="form-group col-sm-6" >
    <lable style="color:white;">Name</lable>
    <input type="text" name="user_name" class="form-control"placeholder="Enter name here"/>
    
    </div>
  
    
    <div class="form-group col-sm-6" >
    <lable style="color:white;">Gender</lable>
   <span ><input type="radio" name="gender" value="male"/><b color="white">Male</b>
   <input type="radio" name="gender" value="female"/><b color="white">Female</b></span>
    </div>
       
     <div class="form-group col-sm-6" >
    <lable style="color:white;">DOB</lable>
    <input type="date" class="form-control" name="dob"/>
    </div>
      
       <div class="form-group col-sm-6" >
    <lable style="color:white;">City</lable>
   <select class="form-control" name="city">
   <option>---Select city---</option>
   <option>Amethi</option>
   <option>LKO</option>
   <option>Delhi</option>
   <option>Raibareli</option>
   <option>Kanpur</option>
   <option>jaipur</option>
   </select>
    </div >
 
  <div class="form-group col-sm-6" >
    <lable style="color:white;">Address</lable>
    <textarea row="" cols="" class="form-control" name="address">Type here....</textarea>
    </div > 
       
     <div class="form-group col-sm-6" >
    <lable style="color:white;">Email</lable>
    <input type="email" class="form-control" name="email"/>
    </div>
       
     <div class="form-group col-sm-6" >
    <lable style="color:white;">Contact Number</lable>
    <input type="number" class="form-control" name="mobno"/>
    </div>
       
     <div class="form-group col-sm-6" >
    <lable  style="color:white;">Profile Pic</lable>
    <input type="file" class="form-control-file" name="picture" />   
    </div>
 
  
     <div class="form-group col-sm-6" >
    <lable style="color:white;">Password</lable>
    <input type="password" class="form-control" placeholder="Enter password " name="password"/>
    </div>
    
     
     <div class="form-group col-sm-6" >
    <lable style="color:white;">Confirm Password</lable>
    <input type="password" class="form-control" placeholder="Confirm password "/>
    </div>
    
    <div class="form-group col-sm-6" >
    <lable style="color:white;">Captcha Image</lable>
    <span class="form-control" style="height:55px;">
   <img width="150px" height="40px" src="captcha" id="ImgCaptcha"/>
   <img id="ImgRefresh" title="Refresh Code" src="content/images/ref.png" height="40px" width="40px" style="cursor:pointer;"/>
   </span>
    </div>
     <div class="form-group col-sm-6" >
    <lable style="color:white;">Captcha</lable>
    <input type="text" class="form-control" placeholder="Enter caption here..." name="captcha_code"/>
    </div>
    
        
     <div class="form-group col-sm-6" >
    <input type="submit" class="btn btn-success btn-block" value="Register" class="form-control"/>
    </div>
    
     <div class="form-group col-sm-6" >
    <input type="submit" class="btn btn-danger btn-block" value="Clear All" class="form-control"/>
    </div>
    </div>
      </form>
      
      
      
    </div>
    <div class="col-sm-2"></div>
    </div>
    <!-- form end -->
    <%@ include file="common/footer.jsp" %>
