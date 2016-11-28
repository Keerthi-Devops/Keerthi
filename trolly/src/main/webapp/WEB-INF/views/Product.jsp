<%@include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<body>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ADD PRODUCT</title>
<style>
.error
{
color:"#E6E6FA"
}
</style>
</head>


<body>
	<h1>Products</h1>
	
	<form:form action="trolly" method="POST" commandName="pdt" enctype="multipart/form-data" >


	<center>
		<div style="color: teal; font-size: 30px">Add Product</div>
		
			
			<div class="row">
				<div class="form-group col-md-12">
					<label for="pid">Product ID</label>
					<form:input  path="pid" />
				</div>
				</div>
				<br>
			<div class="row">
				<div class="form-group col-md-12">
					<label for="cat">Category</label>
					<form:input  path="cat" />
					<form:errors  path="cat" cssClass="error" />
				</div>
				</div>
				<br>
			<div class="row">
				<div class="form-group col-md-12">
					<label for="pname">Product Name</label>
					<form:input  path="pname" />
				<form:errors  path="pname" cssClass="error" />
				</div>
				</div>
				<br>
				
			<div class="row">
				<div class="form-group col-md-12">
					<label for="price">Price</label>
					<form:input  path="price" />
						<form:errors  path="price" cssClass="error" />
				</div>
				</div>
				<br>
				
			<div class="row">
				<div class="form-group col-md-12">
						 <input type="file" name="file">
 		     	Upload Image <input type="text" name="name">
 		 			</div>
 			    </div>
		
				
			<div class="text-center">
				 <input type="submit" name="action" value="add"/>
		         <input type="submit" name="action" value="update" /> 
				<input type="submit" name="action" value="delete" /> 
				
				 
				 </div>
				 </div>
				</center>	
				 </form:form>
				
${message}
</body>
</html>
