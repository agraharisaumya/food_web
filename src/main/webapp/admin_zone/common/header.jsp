<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Admin Dashboard</title>
<script src="../content/script/scripts.js"></script>
<link href="../content/style/styles.css" rel="stylesheet">
   <style type="text/css">
.box
{
border:1px solid black;
background: #0d6efd;
padding-top: 40px;
padding-bottom: 40px;
text-align: center;
font-size: 20px;
font-weight: bold;
margin: 10px;
width: 23%;
border-radius: 9% 0% 9% 0%; 

}
.link
{
color:white;
text-decoration:none;
}
.link:hover
{
color:black;
}

</style>

</head>
<body>
        <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light">Admin Dashboard</div>
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="admindashboard.jsp">Dashboard</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="Enquiry.jsp">Enquiry Management</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Notification</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Video Management</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Ragistration Management</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Setting</a>
                </div>
            </div>
            <!-- Page content wrapper-->
            <div id="page-content-wrapper">
                <!-- Top navigation-->
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom" style="margin:0px;padding:0px;">
                    <div class="container-fluid">
                        <button class="btn btn-primary" id="sidebarToggle">Toggle Menu</button>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                         aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon">
                         </span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                                
                                <li class="nav-item dropdown">
                                
                                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                      <img src="../content/images/logo.png" style="height:35px;width:35px;border-radius:50%;"/>Admin</a>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#!">Profile</a>
                                        <a class="dropdown-item" href="#!">Setting</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#!">Logout</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
</body>
</html>