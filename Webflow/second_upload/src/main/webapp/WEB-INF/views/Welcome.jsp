<%@include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<body>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Welcome</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div class="content">
			<fieldset>
				<legend>Member Home Page</legend>
				<!-- here the href's value will be used to decide the 
					 controller to be executed on click of this link.
					 here "home" is mapped in spring mvc controller-->
				<a href="home.obj">Home</a>
				<br /><br />
				<h2><!-- display the userId just entered -->
				Welcome ${shipping.nid } Ur Product is ready to ship</h2>
				<br/>
			</fieldset>
		</div>
	</body>
</html>