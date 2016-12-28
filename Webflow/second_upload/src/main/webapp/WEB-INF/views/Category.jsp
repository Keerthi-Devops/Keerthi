<%@include file="Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<body>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ADD CATEGORY</title>
<style>
body {
	background-image: url(resources/images/background2.jpg);
	background-size: 700px, 600px;
	/*  	background-repeat: no-repeat;
 */
}
</style>
</head>


<body>
	<form:form action="cate" modelAttribute="ctg" method="POST">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-6">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong class=""><font size="4" color="">
									<Center>Add Category</Center></strong></font>

						</div>

						<div class="panel-body">
							<form class="form-horizontal" role="form">
								<div class="panel-body">
									<form class="form-horizontal" role="form">
										<div class="form-group">
											<label for="cid" class="col-sm-3 control-label">Category
												ID</label>
											<div class="col-sm-8">
												<form:input type="text" path="cid" class="form-control" />
											</div>
										</div>
										<br> <br>


										<%-- <div class="row">
				<div class="form-group col-md-12">
					<label for="cid">Category ID</label>
					<form:input  path="cid"  />
				</div>
				</div>
				<br> --%>


										<div class="form-group">
											<label for="cname" class="col-sm-3 control-label">CategoryName</label>
											<div class="col-sm-8">
												<form:input type="text" path="cname" class="form-control"
													placeholder="Enter CategoryName" />
											</div>
										</div>
										<br> <br>

										<%-- <div class="row">
				<div class="form-group col-md-12">
					<label for="cname">Category Name</label>
					<form:input  path="cname"  />
					<form:errors  path="cname" cssClass="error" />
				</div>
				</div>
				<br>
			 --%>


										<div class="form-group">
											<label for="cdesc" class="col-sm-3 control-label">Description</label>
											<div class="col-sm-8">
												<form:input type="text" path="cdesc" class="form-control"
													placeholder="Description" />
											</div>
										</div>
										<br> <br>

										<%-- 		 <div class="row">
				<div class="form-group col-md-12">
					<label for="cdesc">Description</label>
					<form:input  path="cdesc"  />
				<form:errors  path="cdesc" cssClass="error" />
				</div>
				</div>
	 --%>
										<div class="text-center">
											<input type="submit" name="action" value="add" /> <input
												type="submit" name="action" value="update" /> <input
												type="submit" name="action" value="delete" />


										</div>

										</center>
	</form:form>

	${message}
</body>
</html>


