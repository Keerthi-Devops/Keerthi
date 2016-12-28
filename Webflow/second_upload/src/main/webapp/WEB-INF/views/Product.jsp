<%@include file="Header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<body>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ADD PRODUCT</title>
<style>
body {
	background-image: url(resources/images/image13.jpg);
	background-size: 600px, 600px;
/* 	background-repeat: no-repeat;
 */}
</style>
</head>

</head>


<body>

	<form:form action="trolly" method="POST" modelAttribute="pdt"
		enctype="multipart/form-data">

		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong class=""><font size="4" color="">
									<Center>Add Product</Center></strong></font>
						</div>
						<div class="panel-body">
							<form class="form-horizontal" role="form">
								<div class="panel-body">
									<form class="form-horizontal" role="form">
										<div class="form-group">
											<label for="pid" class="col-sm-3 control-label">
												Product ID</label>
											<!--                 		<label for="pid">Product ID</label>
 -->
											<div class="col-sm-8">
												<form:input type="text" path="pid" class="form-control" />
											</div>
										</div>
										<br> <br>

										<%-- <form:input path="pid" />
				</div>
			</div> --%>



										<div class="form-group">
											<label class="col-sm-3 control-label">Category</label>
											<div class="col-sm-8">
												<form:select path="cname" class="form-control">
													<c:if test="${!empty categoryList}">
														<c:forEach items="${categoryList}" var="cl">

															<form:option value="${cl.cname}" />

														</c:forEach>
													</c:if>
												</form:select>
												<form:errors path="cname" cssClass="error" />
											</div>
										</div>
										<br> <br>

										<div class="form-group">
											<label for="pname" class="col-sm-3 control-label">ProductName</label>
											<div class="col-sm-8">
												<form:input type="text" path="pname" class="form-control"
													placeholder="Product name" />

												<form:errors path="pname" cssClass="error" />
											</div>
										</div>
										<br> <br>


										<%-- <div class="row">
											<div class="form-group col-md-12">
												<label for="pname">Product Name</label>
												<form:input path="pname" />
												<form:errors path="pname" cssClass="error" />
											</div>
										</div>
										<br>
									 --%>
										<div class="form-group">
											<label for="pdesc" class="col-sm-3 control-label">Product
												Description</label>
											<div class="col-sm-8">
												<form:input type="text" path="pdesc" class="form-control"
													placeholder="Product Description" />

												<form:errors path="pdesc" cssClass="error" />
											</div>
										</div>
										<br> <br>





										<%-- <div class="row">
											<div class="form-group col-md-12">
												<label for="pdesc">Product Description</label>
												<form:input path="pdesc" />
												<form:errors path="pdesc" cssClass="error" />
											</div>
										</div>
										<br>
									 --%>

										<div class="form-group">
											<label for="price" class="col-sm-3 control-label">Product
												Price</label>
											<div class="col-sm-8">
												<form:input type="text" path="price" class="form-control"
													placeholder="Enter the Price" />

												<form:errors path="price" cssClass="error" />
											</div>
										</div>
										<br> <br>


										<%-- <div class="row">
											<div class="form-group col-md-12">
												<label for="price">Price</label>
												<form:input path="price" />
												<form:errors path="price" cssClass="error" />
											</div>
										</div>
										<br>
 --%>

										<%-- 	
										 <div class="col-sm-8"> <label for="file" class="col-sm-3 control-label">Image</label>
       
        <form:input type="file" name="file" class="form-control"  placeholder="Image Name" />
        
        
         </div>
        <br>
        <br> 
        --%>
										<div class="row">
											<div class="form-group col-md-12">
												<input type="file" name="file"><form:input path="image" />

											</div>
										</div>


										<div class="text-center">
											<input type="submit" name="action" value="add" /> <input
												type="submit" name="action" value="update" /> <input
												type="submit" name="action" value="delete" />


										</div>
								</div>
								</center>
	</form:form>

	${message}
</body>
</html>
