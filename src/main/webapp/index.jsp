<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="common/link.jsp"%>
<title>Landing Page</title>
<style>
#mainpart
{
background: #EB3349;  /* fallback for old browsers */
background: -webkit-linear-gradient(to bottom, #F45C43, #EB3349);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to bottom, #F45C43, #EB3349); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

}
</style>
</head>
<body>
<div class="container-fluid"  style="margin:0px;padding:0px">
<%@ include file="common/header.jsp" %>


<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="content/slider/dish5.jpg " height="350" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="content/slider/diet1.jpg" height="350" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="content/slider/slider3.jpeg " height="350" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
      <img src="content/slider/slider6.jpeg" height="350" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
      <img src="content/slider/slider11.jpeg" height="350" class="d-block w-100" alt="...">
      
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


<!-- Slider end -->
<!-- Notification start -->

<div class="row" style="margin:0px;padding:0px;">
<div class="col-sm-12" style="background-color:#2b4235;">
<marquee onmouseover="stop()" onmouseout="start()">
<h3 class="text-white"><img alt="" src="content/images/new.gif" height="40px" width="40px"/><b><i>Bonjour....!
je suis Shikha singh.....</i></b>
</h3></marquee>
</div>

</div>

<!-- notification end -->
<div class="row" style="min-height:250px;margin:0px;padding:0px;">
<div class="col-sm-12" id="mainpart" >
<h3 align="center" style="color:white;padding-top:10px;">About Indian Tadkka</h3>
<p style="text-align:justify;">Tadka is commonly used as the finishing touch in dals,
 such as this Onion Tomato Dal, which has a tadka made from cumin, curry leaves, onion, garlic, tomato, and powdered spices. 
 This Pumpkin Tarka Dal has a tadka made
 from cumin seeds, mustard seeds, coriander, turmeric, and tomato. Tadka may also be added to curry
 Tadka is commonly used as the finishing touch in dals, such as this Onion
  Tomato Dal, which has a tadka made from cumin, curry leaves, onion, garlic, tomato, and powdered spices. This 
  Pumpkin Tarka Dal has a tadka made from cumin seeds, mustard seeds, coriander, turmeric, and tomato. 
  Tadka may also be added to curry Tadka is commonly used as the finishing touch
   in dals, such as this Onion Tomato Dal, which has a tadka made from cumin, curry leaves, onion, garlic,
    tomato, and powdered spices. This Pumpkin Tarka Dal has a tadka made from cumin seeds, mustard seeds, coriander,
   turmeric, and tomato. Tadka may also be added to curry.</p>
</div>

</div>
<%@ include file="common/footer.jsp" %>
</div>

</body>
</html>
