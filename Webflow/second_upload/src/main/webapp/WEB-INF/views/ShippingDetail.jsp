<%@include file="Header.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%-- <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 --%>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Shipping Detail</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div class="content">
			<fieldset>
				<legend>Become Member</legend>
				<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				<a href="${flowExecutionUrl}&_eventId_home">Home</a>
				<form:form modelAttribute="shipping"><br />
					<%-- <form:label path="nid">Name:</form:label>
					<form:input path="nid" /><br />
					 <!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('nid')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					 --%>  <form:label path="email">Email Id: </form:label>
					<form:input path="email" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('email')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<form:label path="address">Address </form:label>
					<form:input path="address" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('address')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<form:label path="city">City </form:label>
					<form:input path="city" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('city')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<form:label path="state">State </form:label>
					<form:input path="state" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('state')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
						<form:label path="pn">Pin Number </form:label>
					<form:input path="pn" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('pn')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					<input name="_eventId_submit" type="submit" value="Submit" /><br />
				</form:form>
			</fieldset>
		</div>
	</body>
	

</html>
<%@include file="Footer.jsp" %>
