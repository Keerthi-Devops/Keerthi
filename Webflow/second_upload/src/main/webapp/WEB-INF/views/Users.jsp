<%@include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
   <head>
      <title>Login Demo</title>
   </head>
   <body>
      <c:url value="login" var="ll" />
      <center>
         <h2>Hello USER, you are now logged in!</h2>
         <h3><a href="${ll}">Logout</a></h3>
      </center>
   </body>
</html>