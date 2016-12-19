<%@include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<body>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ADD CATEGORY</title>
<style>
.error
{
color:"#E6E6FA"
}
</style>
</head>


<body>
	<h1>CATEGORIES</h1>

	<form:form action="cate" modelAttribute="ctg"  method="POST">
	<center>
		<div style="color: teal; font-size: 30px">ADD CATEGORY</div>
		
			
			<div class="row">
				<div class="form-group col-md-12">
					<label for="cid">Category ID</label>
					<form:input  path="cid"  />
				</div>
				</div>
				<br>
			<div class="row">
				<div class="form-group col-md-12">
					<label for="cname">Category Name</label>
					<form:input  path="cname"  />
					<form:errors  path="cname" cssClass="error" />
				</div>
				</div>
				<br>
			<div class="row">
				<div class="form-group col-md-12">
					<label for="cdesc">Description</label>
					<form:input  path="cdesc"  />
				<form:errors  path="cdesc" cssClass="error" />
				</div>
				</div>
	<div class="text-center">
				 <input type="submit" name="action" value="add"/>
		         <input type="submit" name="action" value="update" /> 
				<input type="submit" name="action" value="delete" /> 
				
				 
				 </div>
				 
				</center>	
				 </form:form>
							
${message}
</body>
</html>
	
	
