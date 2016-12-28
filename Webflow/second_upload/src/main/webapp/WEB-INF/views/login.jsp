<%@include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<style>
body {
    background-image:url(resources/images/image16.jpg);
background-size: 1400px 650px;
    background-repeat: no-repeat;
    }
</style>
</head>
<body>
 <tr>
  <td colspan="2" style="color: red">${message}</td>
   </tr>
      
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-9">
            <div class="panel panel-default">
                <div class="panel-heading"> <strong class=""><font size="3" color=""><center>Login</center></strong></font>

                </div>
                
                <form:form method="post"   action="login" >
                <div class="panel-body">
                    <form class="form-horizontal" role="form">
                   <div class="alert alert-error">
                   <a data-dismiss="alert" href="#" style="color:red"></a>${message}
                   </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-3 control-label">Username</label>
                            <div class="col-sm-9">
                            <input type="text" name="User_Name" class="form-control"  placeholder="username" />
                            </div>
                        </div>
                        <br>
                        <br>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-3 control-label">Password</label>
                            <div class="col-sm-9">
                                <input type="password"  name="password" class="form-control"  placeholder="Password"  />
                            </div>
                        </div>
                        <br>
                        <br>
                <div class="form-group last">
                            <div class="col-sm-offset-3 col-sm-9">
                                <div id="browse_app">
                                <button type="submit" class="btn btn-success btn-default btn-block" value="login">login</button>                              
                                </div>
                                <br>      
                            </div>
                        </div>
                    </form:form>
                </div>
                
</body>
</html>