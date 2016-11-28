<%@include file="Header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Productlist</title>
</head>
<body>
<center>
<c:if test="${!empty productlist}">
   <table border="1" bgcolor="black" width="600px">
    <tr
     style="background-color: teal; color: white; text-align: center;"
     height="40px">
     <td>Id</td>
     <td>category</td>
     <td>Name</td>
     <td>Price</td>
    
    </tr>
    <c:forEach items="${productlist}" var="prod">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
      
      <td><c:out value="${prod.pid}" />
      </td>
      <td><c:out value="${prod.cat}" />
      </td>
      <td><c:out value="${prod.pname}" />
      </td>
      <td><c:out value="${prod.price}" />
      </td>
      
      
           <%-- <td><a href="edit?id=${prod.id}">update</a></td>
      <td><a href="delete?id=${prod.id}">Delete</a></td> --%>
     </tr>
    </c:forEach>
   </table>
  </c:if>

</body>
</html>
