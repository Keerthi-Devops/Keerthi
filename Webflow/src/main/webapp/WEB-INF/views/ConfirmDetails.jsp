<%@include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<html>
<body>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Confirm Details</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<div class="content">
			<fieldset>
				<legend>Confirm Details</legend>
				<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /><br />
				<sf:form modelAttribute="shipping">
					<sf:label path="nid">Name:</sf:label>${shipping.nid}
					<br /><br />
					<sf:label path="email">Email Id:</sf:label>${shipping.email}
					<br /><br />
					<sf:label path="address">Address :</sf:label>${shipping.address}
					<br /><br />
					<sf:label path="city">City :</sf:label>${shipping.city}
					<br /><br />
					<sf:label path="state">State :</sf:label>${shipping.state}
					<br /><br />
					<sf:label path="pn">Pin Number </sf:label>${shipping.pn}
					<br /><br />
				
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					<input name="_eventId_edit" type="submit" value="Edit" /> 
					<input name="_eventId_submit" type="submit" value="ConfirmDetails" /><br />
				</sf:form>
			</fieldset>
		</div>
	</body>
</html>
