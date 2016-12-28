<%@include file="Header.jsp"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style>
.div1 {
	width: 350px;
	height: 380px;
	border: 2px solid black;
	box-sizing: border-box;
}
</style>

</head>
<body>
	HIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII

		<c:if test="${!empty productList}">
 
	<div class="container">
		<div class="row">
			<h2>Products</h2>

		
				<div class="row text-center">
				<%-- ${productlist.get(0).getPname() ne null} <br/>
				${productlist.get(0) eq null} <br/> --%>
    <c:forEach items="${productList}" var="prod">
		

					<div class="col-md-4">

						<a href="#"><div class="div1">
								<img src="<c:url value='resources/images/product/${prod.pname}.jpg'/>"  //resources\images\product
									alt="sports" class="img-responsive"
									style="width: 4000px; height: 370px" />
							</div></a> <br>
						<button type="button" class="btn btn-default">View
							Details</button>
						<button type="button" class="btn btn-default">Add to Cart</button>

						<button type="button" class="btn btn-default">Buy Now</button>
						<h2>${prod.pname}</h2>
						<h3>&#x20B9 ${prod.price}</h3>


					</div>
				</c:forEach>
			</div>

		</div>

	</div>

 		</c:if>

</body>
</html>
