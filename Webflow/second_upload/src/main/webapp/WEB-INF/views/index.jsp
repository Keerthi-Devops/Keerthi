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
		<li data-target="#myCarousel" data-slide-to="4" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="5" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="6" class="active"></li>
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
        <img src="<c:url value='resources/images/Carousel2.jpg'/>" class="center-block" alt="baby Chair" width="768" height="500">
        <div class="carousel-caption">
        <h3>Sunshine Baby Chair</h3>
        <p>1700</p>
        </div>
      </div>
      </div>
    
      <div class="item">
      <div class="fill"> 
        <img src="<c:url value='resources/images/Carousel9.jpg'/>" class="center-block" alt="Walker" width="768" height="500">
        <div class="carousel-caption">
         <h3>LuvLap Baby Walker</h3>
        <p>4500</p>
       
        </div>
      </div>
</div>

      <div class="item">
      <div class="fill"> 
        <img src="<c:url value='resources/images/Carousel4.jpg'/>" class="center-block" alt="trolly" width="400" height="500">
        <div class="carousel-caption">
        <h3>Twin Baby Trolly</h3>
        <p>4500</p>
       
        </div>
      </div>
</div>
<div class="item">
      <div class="fill"> 
        <img src="<c:url value='resources/images/Carousel5.jpg'/>" class="center-block" alt="trolly" width="400" height="500">
        <div class="carousel-caption">
        <h3>Trollys</h3>
         </div>
      </div>
      </div>
      
      <div class="item">
      <div class="fill"> 
        <img src="<c:url value='resources/images/Carousel10.jpg'/>" class="center-block" alt="Walker" width="400" height="500">
        <div class="carousel-caption">
        <h3>Baby Walker</h3>
        <p>4500</p>
       
        </div>
      </div>
      </div>

      <div class="item">
      <div class="fill"> 
        <img src="<c:url value='resources/images/Carousel7.jpg'/>" class="center-block" alt="chair" width="400" height="500">
        <div class="carousel-caption">
        <h3>Mee-Mee Baby Chair</h3>
        <p>2100</p>
       
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

    <div class="col-sm-4" style="background-color:lavenderblush;">      
 <h2>Video</h2>
<div class="embed-responsive embed-responsive-4by3">
    <iframe class="embed-responsive-item" <iframe width="1000" height="850" src="https://www.youtube.com/embed/oLno6eTd7T0" frameborder="0"></iframe>">
</div>
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
<h4>
            <p>LuvLap Baby Trolly</p>
        <p>&#x20B9 5100</p>
        </h4>
           </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <img src="<c:url value='resources/images/walker2.jpg'/>" target="_blank" style="width:85%">  
        <div class="caption">
 <h4>
            <p> Sunshine Baby Walker</p>
        <p>&#x20B9 4500</p>
        </h4>
                </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
       <img src="<c:url value='resources/images/horse4.jpg'/>" target="_blank" style="width:95%">   
       <div class="caption">
       <h4>
            <p> Mee-Mee Rocking Chair</p>
        <p>&#x20B9 2100</p>
        </h4>
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