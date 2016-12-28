<%@include file="Header.jsp" %>
<html>
<head>
<style>
body {
    background-image:url(resources/images/image14.jpg);
background-size: 700px,800px;
    background-repeat: no-repeat;
    }
   
</style>
</head>
<body>


<form:form action="reg" method="POST" modelAttribute="registration">
<div class="container">
 <div class="row">
        <div class="col-md-6 col-md-offset-7">
            <div class="panel panel-default">
                <div class="panel-heading"> <strong class=""><font size="4" color=""> <Center> Registration</Center></strong></font>

                </div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form">
  <div class="panel-body">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                        <label for="username" class="col-sm-3 control-label"><span class="glyphicon glyphicon-user"></span> User Name</label>
                        <div class="col-sm-8">
                        <form:input type="text" path="User_Name" class="form-control"  placeholder="Enter ur Name" />
                        </div>
                        </div>
                   <br>
                   <br>
                   
                   
                                           
         <div class="form-group">
        <label for="password" class="col-sm-3 control-label"><span class="glyphicon glyphicon-eye-open"></span>Password</label>
        <div class="col-sm-8">
        <form:input type="text" path="password" class="form-control"  placeholder="Password" />
         </div>
        </div>
        <br>
        <br> 
                    
   <div class="form-group">
   <label for="cpassword" class="col-sm-3 control-label"><span class="glyphicon glyphicon-eye-open"></span>Confirm Password</label>
                            <div class="col-sm-8">
                                <form:input type="password" path="cpassword" class="form-control"  placeholder="Re enter password" />
          </div>
                                      </div>
 						<br>
 						<br>
 						
 						<form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="country" class="col-sm-3 control-label"><span class="glyphicon glyphicon-globe"></span> Country</label>
                            <div class="col-sm-8">
                                <form:input type="text" path="country" class="form-control"  placeholder="Country" />
                            </div>
                        </div>
                      <br>
                      <br>      
     <div class="footer">
          <button type="submit"  class="btn btn-success btn-default btn-block" ><span class="glyphicon glyphicon"></span> Sign Up</button>
</div>
 </form:form>
 </body>
 </html>