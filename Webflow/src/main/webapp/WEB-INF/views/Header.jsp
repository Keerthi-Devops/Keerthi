<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
           <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
 
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="<c:url value="/resources/bootstrap/jquery/jquery-3.1.1.min.js" />"></script>
<link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
<title>FristRide</title>
</head>
<body>
<nav class="navbar navbar-light" style="background-color: #ffb6c1;">
<div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand"></a><img src="<c:url value='resources/images/logo.jpg'/>"width="50" height="50">FirstRide
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index">Home</a></li>
     <ul class="nav navbar-nav">
      <li class="active"><a href="#">Abouts</a></li>
     <ul class="nav navbar-nav">
      <li class="active"><a href="ViewAllProducts">ViewAllProducts</a></li>
     
      
      <li class="active"><a href="">Category</a></li>
     <sec:authorize access="hasRole('Role_ADMIN')">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> Product <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Product">ADD PRODUCT</a></li>
          <li><a href="Category">ADD CATEGORY</a></li>
          </ul>
        </li>
       </sec:authorize>
       
       <form class="navbar-form navbar-left">
         <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
     </form>
  
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <sec:authorize access="isAnonymous()"><li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li></sec:authorize>
      <c:if test="${pageContext.request.userPrincipal.name!=null }">
      <li class="active"> <a><b>Welcome:${pageContext.request.userPrincipal.name}</b></a>
            <li><a href="<c:url value="logout" />"> <span class="glyphicon glyphicon-log-out"> </span> Logout </a></li>
            </li>
            </c:if>
      
      <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
    </ul>
  </div>
</nav>
<div class="content">
			<fieldset>
				<legend>Navigation menu</legend>

				<!-- here the href's value will be used to decide the 
					 controller to be executed on click of this link.
					 here "memberShip" is mapped in FlowController mapping-->
				<a href="memberShip.obj" style="margin:50;">Become Member</a>
			</fieldset>
		</div>

</body>
</html>