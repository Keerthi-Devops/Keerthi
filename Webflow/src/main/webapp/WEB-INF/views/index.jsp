<%@include file="Header.jsp" %>

<html>
<head>
<style>
body
{

 background-color:#D3D3D3; 
 
}
</style>
</head>
<body bgcolor="#E6E6FA">
<div class="container">
<div class="row">
  <div class="col-sm-8">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="2" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="3" class="active"></li>
		 </ol>

	<div class="carousel-inner" role="listbox">
 	<div class="item active">
       <div class="fill"> 
        <img src="<c:url value='resources/images/Carousel1.jpg'/>"  class="center-block" alt="trolly"  width="768" height="500">
        <div class="carousel-caption">
        <h3>Trolly</h3>
        <p> 3500</p>
        </div>
      </div>
      </div>

      <div class="item">
      <div class="fill"> 
        <img src="<c:url value='resources/images/Carousel2.jpg'/>" class="center-block" alt="" width="768" height="500">
        <div class="carousel-caption">
        <h3>Trolly2</h3>
        <p>4500</p>
        </div>
      </div>
      </div>
    
      <div class="item">
      <div class="fill"> 
        <img src="<c:url value='resources/images/Carousel8.jpg'/>" class="center-block" alt="trolly" width="768" height="500">
        <div class="carousel-caption">
         <h3>Trolly3</h3>
        <p>4500</p>
       
        </div>
      </div>
</div>

      <div class="item">
      <div class="fill"> 
        <img src="<c:url value='resources/images/Carousel4.jpg'/>" class="center-block" alt="tablet" width="400" height="500">
        <div class="carousel-caption">
        <h3>Trolly3</h3>
        <p>4500</p>
       
        </div>
      </div>
</div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="icon-prev">
       </span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="icon-next">
      </span>
    </a>
</div>
</div>
</div>
<div class="container">
  <h2>Products</h2>
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
       <img src="<c:url value='resources/images/image3.jpg'/>" target="_blank" style="width:100%">
                   <div class="caption">
            <p></p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <img src="<c:url value='resources/images/image6.jpg'/>" target="_blank" style="width:85%">  
        <div class="caption">
            <p></p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
       <img src="<c:url value='resources/images/image7.jpg'/>" target="_blank" style="width:75%">   
       <div class="caption">
            <p></p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>



</body>
</html>
${message}

<%@include file="Footer.jsp" %>