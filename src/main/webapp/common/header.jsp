<style>
#brandname
{
font-size:75px;
text-align:center;
color:royalblue;
font-style:italic;
}
.nav-link{
color:white;
}
.nav-item
{
margin-left:30px;
font-size:20px;
}
.enq
{
transform:rotate(90deg);
z-index:999;
float:left;
margin-left:-20px;







top:300px;
position:fixed;
}
</style>



<div class="row" style="margin:0px;padding:0px; ">
<div class="col-sm-2" style="margin:0px;padding:0px;">
<img alt="" width="100%" src="content/images/real3.png"/>
</div>
<div class="col-sm-10 " style="width:100%;height:125px;background-image:url(content/images/bg_header.jpg);background-repeat:repeat-x"" >
<div  style="width:100%;height:120px;background-image:url(content/images/bg_ramas.png);background-position:center center;background-repeat:no-repeat">

<img style="margin-left:220px;margin-top:20px; margin-bottom:10px;" src="content/images/shi1.png"/></div>
</div>



</div>
</div>










<nav class="navbar navbar-expand-lg navbar-light " style="background:#a84c45;">
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
     <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">About US <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contact.jsp">Contact US</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="registration.jsp">Registration</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="menu.jsp">Menu</a>
      </li>
     
      <li class="nav-item">
        <a class="nav-link" href="login.jsp">login</a>
      </li>
    </ul>

  </div>
</nav>





<!-- Enquiry Start -->
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary enq" data-toggle="modal" data-target="#exampleModal">
  Enquiry
 </button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" style="background:gray;" >
        <h5 class="modal-title" id="exampleModalLabel" style="text-align:center;color:red;font-style:bold;">Fill Up Form</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form  action="saveEnq.jsp" method="post">
        <div class="row">
        <div class="col-sm-6 form-group">
   <lable>Name</lable>
   <input type="text" name="name" placeholder="Enter your name" class="form-control"/>     
   
        </div>
        <div class="col-sm-6 form-group">
         <lable>Mobile</lable>
   <input type="number" name="mobno" placeholder="Enter your number" class="form-control"/>     
        </div>
         <div class="col-sm-6 form-group">
         <lable>Email</lable>
         <input type="email" name="email" placeholder="Enter your email" class="form-control"/>     
        </div>
 <div class="col-sm-6 form-group">
         <lable>topic</lable>
   <input type="text" name="topic" placeholder="Enter Enquiry topic..." class="form-control"/>     
        </div>
           <div class="col-sm-12 form-group">
         <lable>message</lable>
   <textarea row="" cols="" name="message" placeholder="Enter Enquiry topic..." class="form-control"></textarea>     
        </div>
          <div class="col-sm-6 " style="padding-top:10px;padding-bottom:10px;">
         
   <button type="submit" class="btn btn-primary btn-block" >Enquiry</button>     
        </div>
        
          <div class="col-sm-6 " style="padding-top:10px;padding-bottom:10px;">
         
   <button type="reset" class="btn btn-danger btn-block">Close All</button>     
        </div>
                            
        
        </div>
        </form>
      </div>
     
    </div>
  </div>
</div>
<!-- enquiry end -->
