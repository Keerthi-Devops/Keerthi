<%@include file="Header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category List</title>
</head>
<body>
<center>
<c:if test="${!empty catList}">
<table border="1" bgcolor="black" width="600px">
    <tr
     style="background-color: teal; color: white; text-align: center;"
     height="40px">
       
     <td>ID</td>
     <td>Name</td>
     <td>Category</td>
    <td>Edit
    </td>
    <td>Delete</td>
    <c:forEach items="${catList}" var="cl">
     <tr>
      
      <td><c:out value="${cl.cid}" />
      </td>
      <td><c:out value="${cl.cname}" />
      </td>
      <td><c:out value="${cl.cdesc}" />
      </td>
      
      
           <td><a href="edit?id=${cl.cid}">Edit</a></td>
      <td><a href="delete?id=${cl.cid}">Delete</a></td>
     </tr>
    </c:forEach>
   </table>
  </c:if>

</body>
</html>
